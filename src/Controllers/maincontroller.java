package Controllers;

import javafx.swing.Action;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.stage.Stage;
import javafx.scene.Parent;
import javafx.scene.Scene;

public class maincontroller {
    private Stage stage;
    private Scene scene;
    private Parent Root;
    public void switchtoaboutus(ActionEvent event){
        Parent Root= FXMLLoader.load(getClass().getResource("AboutUS.fxml"));
        stage = (Stage)((Node)event.getSource()).getScene().getWindow();
        scene = new Scene(Root);
        stage.setScene(scene);
        stage.show();
    }
    public void switchtocategories(ActionEvent event){

    }
    public void switchtologin(ActionEvent event){
        Parent Root= FXMLLoader.load(getClass().getResource("user_login.fxml"));
        stage = (Stage)((Node)event.getSource()).getScene().getWindow();
        scene = new Scene(Root);
        stage.setScene(scene);
        stage.show();
    }
    
}
