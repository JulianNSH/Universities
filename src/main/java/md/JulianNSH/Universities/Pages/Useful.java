package md.JulianNSH.Universities.Pages;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Useful {
    @GetMapping("/useful")
    public String showlLinks(){
        return "useful";
    }
}
