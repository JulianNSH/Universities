package md.JulianNSH.Universities.Pages;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StartPage {

    @GetMapping("/")
    public String sayHello() {
        return "main";
    }

}
