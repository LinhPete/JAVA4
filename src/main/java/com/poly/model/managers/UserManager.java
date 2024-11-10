package com.poly.model.managers;

import com.poly.model.entities.User;
import com.poly.model.entities.Video;
import com.poly.utils.XJpa;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;
import java.util.Map;

public class UserManager extends XManager<User> {

    public UserManager() {
        super(User.class);
    }

    public List<User> filter(String name, Boolean role) {
        if((name==null || name.isBlank())&&role==null){
            return selectAll();
        }
        else if(name!=null && role==null){
            return super.getByNamedQuery("User.filterByName", "%"+name.trim()+"%");
        } else if(name == null || name.isBlank()){
            return super.getByNamedQuery("User.filterByRole", role);
        } else {
            return super.getByNamedQuery("User.filterByName&Role", "%"+name.trim()+"%",role);
        }
    }

    public Map<Integer,List<User>> getFilteredPageMap(int size, String name, Boolean role) {
        List<User> all = filter(name, role);
        return super.convertListToPages(all,5);
    }

    public List<Video> getFavoriteVideos(String userId) {
        EntityManager em = XJpa.getEntityManager();
        String jpql = "SELECT o.video FROM Favorite o WHERE o.user.id =:userId";
        TypedQuery<Video> query = em.createQuery(jpql, Video.class);
        query.setParameter("userId", userId);
        return query.getResultList();
    }

//    public static void main(String[] args) {
//        UserManager manager = new UserManager();
//        manager.selectAll().forEach(System.out::println);
////        System.out.println(manager.selectById("us003"));
////        User user = new User("us006","1234","Peter","peter@example.com",true);
////        manager.insert(user);
//
////        User user = manager.findById("us006");
////        user.setPassword("fake006");
////        manager.update(user);
////        manager.delete("us006");
////        manager.findAll();
//
////        manager.search();
////        manager.findRange(5,2);
//    }
}
