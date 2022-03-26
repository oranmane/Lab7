package ca.sait.lab7.dataaccess;

import ca.sait.lab7.models.Role;
import java.util.List;
import javax.persistence.*;

/**
 *
 * @author Seungjin Moon
 */
public class RoleDB {

    public List<Role> getAll() throws Exception {
         EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {
            Query query = em.createNamedQuery("Role.findAll");
            return query.getResultList();
        } finally {
            em.close();
        }
    }
    
        public String getName(int roleId) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {
            Role role = em.find(Role.class, roleId);
            return role.getRoleName();
        } finally {
            em.close();
        }
    }
    

}
