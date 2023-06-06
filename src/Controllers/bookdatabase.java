package Controllers;

import java.sql.Connection;
import java.sql.DriverManager;

public class bookdatabase {
    public Connection databaseLink;

    public Connection getConnection(){
        String databaseName = "Name";
        String databaseDescription= "Description";
        String databaseAuthor= "Author";
        String databasePublish= "DatePublish";
        String databasePage= "NumberPage";

        String url = "jdbc:mysql://localhost/" + databaseName;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return databaseLink;
    }
}
