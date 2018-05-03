package ie.cicil.controller;

import ie.cicil.models.Login;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String viewFile(Model model) {
        model.addAttribute("login", new Login());
        return "login";
    }

    @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
    public String loginProcess(@ModelAttribute("login") Login login) {
        return "welcome";
    }

}
