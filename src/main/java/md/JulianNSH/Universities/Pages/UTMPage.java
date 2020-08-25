package md.JulianNSH.Universities.Pages;

import md.JulianNSH.Universities.config.DBConnector;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@Controller
public class UTMPage {

    @GetMapping("/Universitatea-Tehnica-a-Moldovei")
    public String showUTM(Model model){
        //variable for holding query final result
        StringBuilder facultiesList = new StringBuilder();
        StringBuilder professorsList = new StringBuilder();

        //connector object
        DBConnector getIn = new DBConnector();

        //query interrogation for database
        String facultiesQuery = "SELECT adrese_web.adresa, facultati.nume_facultate, studenti.studenti_buget, studenti.studenti_contract, absolventi.nabsolventi\n" +
                "                        FROM facultati AS facultati\n" +
                "                            JOIN adrese_web AS adrese_web ON facultati.id_adresa = adrese_web.id_adresa\n" +
                "                            JOIN studenti AS studenti ON facultati.id_studenti = studenti.id_studenti\n" +
                "                            JOIN absolventi AS absolventi ON facultati.id_absolventi = absolventi.id_absolventi\n" +
                "                            where facultati.id_universitate = 1";

        String professorsQuery = "SELECT profesori.titlu_prof, profesori.numar_prof\n" +
                "                        FROM profesori AS profesori\n" +
                "                           JOIN list_universitati AS universitati ON profesori.id_universitate= universitati.id_universitate\n" +
                "                           where profesori.id_universitate = 1";

        Statement statement;

        {
            try {
                //connect do database
                statement = getIn.getConnect().createStatement();
                //get the result of faculties query to object
                ResultSet facultiesResultSet = statement.executeQuery(facultiesQuery);
                //combine result and HTML table structure
                while (facultiesResultSet.next()){
                    facultiesList.append("<tr><td><a href=").append(facultiesResultSet.getString(1)).append(          //link to faculty page
                            " target='_blank'>").append(facultiesResultSet.getString(2)).append("</a></td>").append(  //name of the faculty
                            "<td>").append(facultiesResultSet.getInt(3)).append("</td>").append(                      //
                            "<td>").append(facultiesResultSet.getInt(4)).append("</td>").append(                      //number of students
                            "<td>").append(facultiesResultSet.getInt(5)).append("</td></tr>");                        //
                }

                //get the result of professors query to object
                ResultSet professorsResultSet = statement.executeQuery(professorsQuery);
                //combine result and HTML table structure
                while (professorsResultSet.next()){
                    professorsList.append("<tr><td>").append(professorsResultSet.getString(1)).append("</td>").
                                   append("<td>").append(professorsResultSet.getInt(2)).append("</td></tr>");
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

            //objects to insert in HTML
            model.addAttribute("faculties", facultiesList);
            model.addAttribute("professors", professorsList);


        return "utmfacultati";
    }
}
