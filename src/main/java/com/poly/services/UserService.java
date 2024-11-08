package com.poly.services;

import com.poly.entities.User;
import com.poly.managers.UserManager;
import com.poly.utils.XMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

public class UserService {
    private final HttpServletRequest request;
    private final HttpSession session;
    private final UserManager um;
    private Map<Integer, List<User>> pageMap;
    private static final int FIRST_PAGE = 1;

    public UserService(HttpServletRequest request) {
        this.request = request;
        session = request.getSession();
        um = new UserManager();
        pageMap = (Map<Integer, List<User>>) session.getAttribute("users_pages");
        if (pageMap == null) {
            renderPageMap();
        }
    }

    public void handleAdminRequest() {
        String path = request.getServletPath();
        if (path.endsWith("users")) {
            session.removeAttribute("filter_name");
            session.removeAttribute("filter_role");
            renderPageMap();
            setCurrentPage(FIRST_PAGE);
        } else if(path.contains("filter")){
            String name = request.getParameter("filter_name");
            if(name!=null && name.isBlank()){
                name = null;
            }
            session.setAttribute("filter_name", name);
            String role = request.getParameter("filter_role");
            if(!role.equalsIgnoreCase("null")){
                session.setAttribute("filter_role", Boolean.valueOf(role));
            } else {
                session.setAttribute("filter_role", null);
            }
            renderPageMap();
            setCurrentPage(FIRST_PAGE);
        } else if (path.contains("page")) {
            int pageNumber = Integer.parseInt(request.getPathInfo().substring(1));
            setCurrentPage(pageNumber);
        } else if (path.contains("edit")) {
            String id = request.getPathInfo().substring(1);
            setEditingUser(um.selectById(id));
        } else if (path.contains("create")) {
            createUser();
        } else if (path.contains("update")) {
            updateUser();
        } else if (path.contains("delete")) {
            deleteUser();
        } else if (path.contains("reset")) {
            User user = new User();
            setEditingUser(user);
        }
    }

    private void createUser() {
        User user = getFormUser();
        if(user == null) {
            return;
        }
        user.setPassword("1234");
        if(um.insert(user)!=null){
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

    private void updateUser() {
        User user = um.selectById(request.getParameter("id"));
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
        if(um.update(user)!=null){
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

    private void deleteUser() {
        if(um.delete(request.getParameter("id"))!=null){
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

    private void renderPageMap(){
        String filterName = (String) session.getAttribute("filter_name");
        Boolean filterRole = (Boolean) session.getAttribute("filter_role");
        if(filterName == null && filterRole == null) {
            renderAllPageMap();
        } else{
            renderFilteredPageMap(filterName, filterRole);
        }
    }

    private void renderAllPageMap() {
        pageMap = um.selectAllInPages(5);
        session.setAttribute("users_pages", pageMap);
    }

    private void renderFilteredPageMap(String name, Boolean role) {
        pageMap = um.getFilteredPageMap(5, name, role);
        session.setAttribute("users_pages", pageMap);
    }

    private void setCurrentPage(int pageNumber) {
        if(pageNumber>1 && pageMap.get(pageNumber) == null) {
            pageNumber--;
        }
        session.setAttribute("curr_users_page_number", pageNumber);
        session.setAttribute("curr_users_page", pageMap.get(pageNumber));
    }

    private int getCurrentPageNumber() {
        Object num = session.getAttribute("curr_users_page_number");
        if (num == null) {
            return FIRST_PAGE;
        }
        return (Integer) num;
    }

    private void setEditingUser(User user) {
        session.setAttribute("user", user);
    }

}
