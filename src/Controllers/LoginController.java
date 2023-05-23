package Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.awt.*;
import java.io.IOException;
import java.util.EventObject;

public class LoginController {
    @FXML
    TextField userid;
    @FXML
    TextField passid;
    private Button button;
    private Stage stage;
    private Scene scene;
    private Parent root;
    public void switchtohome(ActionEvent event) throws IOException {
        Parent root= FXMLLoader.load(getClass().getResource("HomePage.fxml"));
        stage = (Stage)((Node)event.getSource()).getScene().getWindow();
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }

    public void login(ActionEvent event) throws IOException {
        checkLogin();
    }
    public void checkLogin() throws IOException {
        Main m = new Main();
        if(userid.getText().toString().equals("admin") && passid.getText().toString().equals("123")){
            m.changescene("AdminHomePage.fxml");
        }
    }

}
