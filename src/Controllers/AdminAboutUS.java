package Controllers;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;

public class AdminAboutUS {

    @FXML
    private ResourceBundle resources;

    @FXML
    private URL location;

    @FXML
    private Button Homeid;

    @FXML
    private Button aboutusid;

    @FXML
    private Button aboutusid1;

    @FXML
    private Button login;

    @FXML
    void switchtoaboutus(ActionEvent event) {
        
    }

    @FXML
    void switchtologin(ActionEvent event) {

    }

    @FXML
    void initialize() {
        assert Homeid != null : "fx:id=\"Homeid\" was not injected: check your FXML file 'AdminAboutUS.fxml'.";
        assert aboutusid != null : "fx:id=\"aboutusid\" was not injected: check your FXML file 'AdminAboutUS.fxml'.";
        assert aboutusid1 != null : "fx:id=\"aboutusid1\" was not injected: check your FXML file 'AdminAboutUS.fxml'.";
        assert login != null : "fx:id=\"login\" was not injected: check your FXML file 'AdminAboutUS.fxml'.";

    }

}

