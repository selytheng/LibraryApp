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
    private Stage stage;
    private Scene scene;

    public void switchtohome(ActionEvent event) throws IOException {
        Parent root = FXMLLoader.load(getClass().getResource("HomePage.fxml"));
        stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }

    public void login(ActionEvent event) throws IOException {
        String id = userid.getText();
        String pass = passid.getText();
        if (id.equals("admin") && pass.equals("123")) {
            // FXMLLoader loader = new FXMLLoader(getClass().getResource("AdminHomePage.fxml"));
            // Parent welcomeParent = loader.load();
            // Scene welcomeScene = new Scene(welcomeParent);
            // Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();
            // window.setScene(welcomeScene);

            Parent root = FXMLLoader.load(getClass().getResource("AdminHomePage.fxml"));
            stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
            scene = new Scene(root);
            stage.setScene(scene);
            stage.show();
            // System.out.println("kdkd");
        } else {
            System.out.println("Incorrect username or password");
        }
    }

}
