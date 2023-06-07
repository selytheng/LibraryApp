package Controllers;

import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javafx.event.ActionEvent;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Observable;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.geometry.Insets;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import javafx.util.Callback;




public class ListBookController {
    private Connection con = null;
    private PreparedStatement pst = null;
    private ResultSet rs = null;
    @FXML
    private TableView<BookList> Bookdata;
    @FXML
    private TableColumn<BookList, String> namecol;
    @FXML
    private TableColumn<BookList, String> descol;
    @FXML
    private TableColumn<BookList, String> pubcol;
    @FXML
    private TableColumn<BookList, String> pagecol;
    @FXML
    private TableColumn<BookList, String> authorcol;

    public void initiatize(URL url, ResourceBundle rb){

    }

    private void setCellTable(){
        namecol.setCellFactory(new PropertyValueFactory<>("Name"));

    }
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
}
