package md.JulianNSH.Universities.Pages;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Info {
    @GetMapping("/info")
    public String showInfo(){
        return "info";
    }
}
