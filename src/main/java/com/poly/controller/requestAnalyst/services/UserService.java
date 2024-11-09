package com.poly.controller.requestAnalyst.services;

import com.poly.controller.requestAnalyst.SessionContainer;
import com.poly.modal.entities.User;
import com.poly.modal.managers.UserManager;
import com.poly.controller.requestAnalyst.sessionAttributes.attributes.AdminUserAttributes;
import com.poly.utils.XMessage;
import jakarta.servlet.http.HttpServletRequest;
import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;

public class UserService extends Service<UserManager> {
    private AdminUserAttributes sessionAttributes;

    public UserService(HttpServletRequest request) throws InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        super(request, UserManager.class);
        sessionAttributes = retrieveAttributes();
    }

    @Override
    public void setRequest(HttpServletRequest request) {
        super.setRequest(request);
        sessionAttributes = retrieveAttributes();
    }

    public void loadPage(){
        sessionAttributes.setFilterName(null);
        sessionAttributes.setFilterRole(null);
        renderPageMap();
        setCurrentPage(1);
    }

    public void filter(){
        String name = request.getParameter("filter_name");
        if(name!=null && name.isBlank()){
            name = null;
        }
        sessionAttributes.setFilterName(name);
        String role = request.getParameter("filter_role");
        if(!role.equalsIgnoreCase("null")){
            sessionAttributes.setFilterRole(Boolean.parseBoolean(role));
        } else {
            sessionAttributes.setFilterRole(null);
        }
        sessionAttributes.deploy(request);
        renderPageMap();
        setCurrentPage(1);
    }

    public void changePage(){
        int pageNumber = Integer.parseInt(request.getPathInfo().substring(1));
        setCurrentPage(pageNumber);
    }

    public void edit(){
        String id = request.getPathInfo().substring(1);
        setEditingUser(manager.selectById(id));
    }

    public void createUser() {
        User user = getFormUser();
        if(user == null) {
            return;
        }
        user.setPassword("1234");
        if(manager.insert(user)!=null){
            XMessage mess = XMessage.generateMessage("success", "Thêm thành công");
            request.setAttribute("mess", mess);
            renderPageMap();
            setCurrentPage(getCurrentPageNumber());
            setEditingUser(user);
        } else {
            XMessage mess = XMessage.generateMessage("danger", "Đã xảy ra lỗi");
            request.setAttribute("mess", mess);
        }

    }

    public void updateUser() {
        User user = manager.selectById(request.getParameter("id"));
        if(user == null) {
            return;
        }
        try {
            BeanUtils.populate(user, request.getParameterMap());
        } catch (IllegalAccessException | InvocationTargetException e) {
            XMessage mess = XMessage.generateMessage("danger", "Đã xảy ra lỗi");
            request.setAttribute("mess", mess);
            e.printStackTrace();
            return;
        }
        if(manager.update(user)!=null){
            XMessage mess = XMessage.generateMessage("success", "Cập nhật thành công");
            request.setAttribute("mess", mess);
            renderPageMap();
            setCurrentPage(getCurrentPageNumber());
            setEditingUser(user);
        } else {
            XMessage mess = XMessage.generateMessage("danger", "Đã xảy ra lỗi");
            request.setAttribute("mess", mess);
        }
    }

    public void deleteUser() {
        if(manager.delete(request.getParameter("id"))!=null){
            XMessage mess = XMessage.generateMessage("success", "Đã xóa thành công");
            request.setAttribute("mess", mess);
            User user = new User();
            renderPageMap();
            setCurrentPage(getCurrentPageNumber());
            setEditingUser(user);
        } else {
            XMessage mess = XMessage.generateMessage("danger", "Đã xảy ra lỗi");
            request.setAttribute("mess", mess);
        }
    }

    public void  resetForm(){
        User user = new User();
        setEditingUser(user);
    }

    private User getFormUser() {
        User user = new User();
        try {
            BeanUtils.populate(user, request.getParameterMap());
        } catch (IllegalAccessException | InvocationTargetException e) {
            XMessage mess = XMessage.generateMessage("danger", e.getMessage());
            request.setAttribute("mess", mess);
            e.printStackTrace();
            return null;
        }
        if(user.getFullname() == null || user.getFullname().isBlank()) {
            XMessage mess = XMessage.generateMessage("danger", "Full name is required");
            request.setAttribute("mess", mess);
            return null;
        }
        if(user.getEmail() == null || user.getEmail().isBlank()) {
            XMessage mess = XMessage.generateMessage("danger", "Email is required");
            request.setAttribute("mess", mess);
            return null;
        }
        if(user.getId() == null || user.getId().isBlank()) {
            XMessage mess = XMessage.generateMessage("danger", "Id is required");
            request.setAttribute("mess", mess);
            return null;
        }
        if(!request.getServletPath().contains("admin") && (user.getPassword()==null || user.getPassword().isBlank())) {
            XMessage mess = XMessage.generateMessage("danger", "Password is required");
            request.setAttribute("mess", mess);
            return null;
        }
        return user;
    }

    public void renderPageMap(){
        String filterName = sessionAttributes.getFilterName();
        Boolean filterRole = sessionAttributes.getFilterRole();
        if(filterName == null && filterRole == null) {
            renderAllPageMap();
        } else{
            renderFilteredPageMap(filterName, filterRole);
        }
    }

    private void renderAllPageMap() {
        sessionAttributes.setPageMap(manager.selectAllInPages(5));
        deployAttributes();
    }

    private void renderFilteredPageMap(String name, Boolean role) {
        sessionAttributes.setPageMap(manager.getFilteredPageMap(5, name, role));
        deployAttributes();
    }

    private void setCurrentPage(int pageNumber) {
        if(pageNumber>1 && sessionAttributes.getPageMap().get(pageNumber) == null) {
            pageNumber--;
        }
        sessionAttributes.setCurrentPageNumber(pageNumber);
        deployAttributes();
    }

    private int getCurrentPageNumber() {
        return sessionAttributes.getCurrentPageNumber();
    }

    private void setEditingUser(User user) {
        sessionAttributes.setEditingUser(user);
        deployAttributes();
    }

    private void deployAttributes(){
        sessionAttributes.deploy(request);
    }

    private AdminUserAttributes retrieveAttributes() {
        SessionContainer container = SessionContainer.retrieve(request);
        if(container == null) {
            return null;
        }
        return container.getAttributeContainer().getAdminUserAttributes();
    }

}
