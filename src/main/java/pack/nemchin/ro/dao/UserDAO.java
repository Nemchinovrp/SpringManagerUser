package pack.nemchin.ro.dao;

import java.util.List;

import pack.nemchin.ro.model.User;

public interface UserDAO {
	public List<User> list();
	public void deleteUser(int id);
}
