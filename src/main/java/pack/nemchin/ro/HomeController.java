package pack.nemchin.ro;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pack.nemchin.ro.dao.UserDAO;
import pack.nemchin.ro.model.User;


@Controller
public class HomeController {
	
	
	
	@Autowired
	public UserDAO userDao;
	
	@RequestMapping(value="/")
	public ModelAndView home() {
		List<User> listUsers = userDao.list();
		ModelAndView model = new ModelAndView("home");
		model.addObject("userList", listUsers);
		return model;
	}
	

			@RequestMapping("/remove/{id}")
			public String removePerson(int id){
     
				this.userDao.deleteUser(id);;
					return "home";
			}
				
}