package ca.sait.lab6_jdbc.services;

import ca.sait.lab6_jdbc.dataaccess.RoleDB;
import ca.sait.lab6_jdbc.models.Role;
import java.util.List;

/**
 *
 * @author Seungjin Moon
 */
public class RoleService {
    private RoleDB roleDB = new RoleDB();
    
    public List<Role> getAll() throws Exception {
        List<Role> roles = roleDB.getAll();
        return roles;
    }
 
        public String getName(int roleId) throws Exception {
        String name = this.roleDB.getName(roleId);
        return name;
    }
    
}