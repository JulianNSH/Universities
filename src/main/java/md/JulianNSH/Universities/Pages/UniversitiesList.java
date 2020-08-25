package md.JulianNSH.Universities.Pages;

import md.JulianNSH.Universities.config.DBConnector;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
public class UniversitiesList {
    @GetMapping("/universitati")
    public String showUniversities(Model model) {

        //variable for holding query final result
        ArrayList<Integer> universityStudents = new ArrayList<>();

        //connector object
        DBConnector getIn = new DBConnector();

        String query = "SELECT studenti.studenti_buget, studenti.studenti_contract, absolventi.nabsolventi\n" +
                "                                FROM list_universitati AS universitati\n" +
                "                                JOIN studenti AS studenti ON universitati.id_studenti = studenti.id_studenti\n" +
                "                                JOIN absolventi AS absolventi ON universitati.id_absolventi = absolventi.id_absolventi";

        Statement universitiesStatement;

        {
            try {
                //connect do database
                universitiesStatement = getIn.getConnect().createStatement();
                //get the result of faculties query to object
                ResultSet universitiesResultSet = universitiesStatement.executeQuery(query);
                //get result in arraylist
                while (universitiesResultSet.next()){
                    universityStudents.add(universitiesResultSet.getInt(1));
                    universityStudents.add(universitiesResultSet.getInt(2));
                    universityStudents.add(universitiesResultSet.getInt(3));
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        model.addAttribute("students", universityStudents);
        return "1universitati";
    }
}
