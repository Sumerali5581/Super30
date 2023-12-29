package com.Healthcare.LOGIN;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import com.Healthcare.LOGIN.MODEL.User;
import com.Healthcare.LOGIN.MODEL.UserRepo;

@Controller
public class LoginController {
    @Autowired
    private UserRepo userRepo;

    //private RestTemplate restTemplate = new RestTemplate();

    @RequestMapping("/dash")
    public String dashCheck() {
        return "dashboard";
    }
    // Login page
    @RequestMapping("/")
    public String check() {
        return "login";
    }
    // Homepage
    @RequestMapping("/login")
    public String loginHomepage(@RequestParam("userName") String userName,
                                @RequestParam("password") String password, Model model) {
        User u = null;
        User p = null;
        try {
            u = userRepo.findByName(userName);
            p = userRepo.findByPassword(password);
        } catch (Exception e) {
            System.out.println("User not found !!!");
        }
        if (u != null && p != null) {
            model.addAttribute("USERNAME", userName);
            //model.addAttribute("Password", password);
            return "dashboard";
        }
        model.addAttribute("error", "User Not Found, Kindly register!!");
        return "login";
    }

    // Registration page
    @RequestMapping("/register")
    public String goToRegistrationPage() {
        return "register";
    }

    // Registration
    @RequestMapping("/set-user")
    public String goToRegisterMicroservice(@RequestParam("userName") String userName,
                                           @RequestParam("password1") String password1,
                                           @RequestParam("password2") String password2, Model model) {
        if (password1.equals(password2)) {
            //restTemplate.getForObject("http://localhost:8181/register-user/{userName}/{password1}", String.class, userName, password1);
            User u=new User();
            u.setId(generateUniqueId());
            u.setName(userName);
            u.setPassword(password1);
            userRepo.save(u);
            model.addAttribute("registerSuccess", "Successfully Registered");
        }
        else {
            model.addAttribute("registrationError", "Password not same !");
            return "register";
        }
        return "login";
    }


    private int userIdCounter = 1;
    private int generateUniqueId() {
        // Increment the counter and return the new value as the unique ID
        return userIdCounter++;
    }

    //	@RequestMapping("/register-user/{userName}/{password}")
    //	public String registerUser(@PathVariable("userName") String userName,
    //			@PathVariable("password") String password){
    //		User u=new User();
    //		u.setId(10);
    //		u.setName(userName);
    //		u.setPassword(password);
    //		userRepo.save(u);
    //		return "Successfully Registered !!";
    //	}
}


