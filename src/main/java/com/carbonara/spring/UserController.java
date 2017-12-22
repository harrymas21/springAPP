package com.carbonara.spring;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    
    @Autowired
    private UserDao userdao;
    
        @RequestMapping(value = "/users")
        public ModelAndView listUsers(@ModelAttribute("users") User user)
        {
            ModelAndView model = new ModelAndView("users");

            List userList = userdao.getAllUsers();
            //System.out.println(userList);
            model.addObject("userList", userList);

            return model;
        }
        
        //delete users
        @RequestMapping(value = "/users/delete/{username}")
    public ModelAndView deleteEmployee(@ModelAttribute("users") User user,@PathVariable("username") String username)
    {
        userdao.deleteUser(username);
        return new ModelAndView("redirect:/users");
    }
}
