package Controllers;

import javafx.collections.FXCollections;
import javafx.embed.swt.FXCanvas;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

import javax.naming.Name;
import javax.swing.table.TableColumn;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ResourceBundle;



public class ListBookController {
    @FXML
//    private TableView<bookdata> Bookdata;
//    @FXML
//    private TableColumn<bookdata, String> namecol;
//    private TableColumn<bookdata, String> descol;
//    private TableColumn<bookdata, String> pubcol;
//    private TableColumn<bookdata, String> pagecol;
//    private TableColumn<bookdata, String> authorcol;

//    String query = null;
//    Connection connection = null;
//    PreparedStatement preparedStatement = null;
//    ResultSet resultSet =null;
//    bookdata bookdata = null;
//
//    ObservableList<bookdata> BookList = FXCollections.observableArrayList();
//
//    @Override
//    public void initialize(URL url, ResourceBundle rb){
//        loadDate();
//    }
//
//    private void refreshTable() {
//        try {
//            BookList.clear();
//
//            query = "SELECT * FROM `student`";
//            preparedStatement = connection.prepareStatement(query);
//            resultSet = preparedStatement.executeQuery();
//
//            while (resultSet.next()){
//                BookList.add(new bookdata(
//                        resultSet.getString("Name"),
//                        resultSet.getString("Des"),
//                        resultSet.getString("Publish"),
//                        resultSet.getString("Page"),
//                        resultSet.getString("Author")));
//                Bookdata.setItems(BookList);
//
//            }
//
//
//        } catch (SQLException ex) {
//            Logger.getLogger(TableViewController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//
//
//    }
//
//    private void loadDate(){
//        connection = DbConnect.getConnect();
//
//        namecol.setCellValueFactory(new PropertyValueFactory<>("Name"));
//        descol.setCellValueFactory(new PropertyValueFactory<>("Des"));
//        authorcol.setCellValueFactory(new PropertyValueFactory<>("Author"));
//        pubcol.setCellValueFactory(new PropertyValueFactory<>("Publish"));
//        pagecol.setCellValueFactory(new PropertyValueFactory<>("Page"));
//    }
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
