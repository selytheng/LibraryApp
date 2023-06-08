package Controllers;

import java.io.PushbackInputStream;
import java.net.URL;
import java.security.PublicKey;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.protocol.Resultset;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import java.io.IOException;

import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Statement;

import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

import javafx.scene.control.TextField;



public class ListBookController {
    private PreparedStatement pst = null;
    private ResultSet rs = null;
    private ObservableList<BookList> data;
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
    @FXML
    private TextField txtName;
    @FXML
    private TextField txtDes;
    @FXML
    private TextField txtAuthor;
    @FXML
    private TextField txtPage;
    @FXML
    private TextField txtPub;

    private Connection con =null ;


//    public void initialize(URL url, ResourceBundle rb){
//        con = DbConnect.getConnect();
//
//        setCellTable();
//        LoadDB();
//        data = FXCollections.observableArrayList();
//
//    }
//
//    public void adddata(ActionEvent event){
//        String sql = "INSERT INTO `booklist`(`Name`, `Description`, `Author`, `Page`, `Public`) VALUES (?,?,?,?,?)";
//        String Name = txtName.getText();
//        String Description = txtDes.getText();
//        String Author = txtAuthor.getText();
//        String Page = txtPage.getText();
//        String Publish = txtPub.getText();
//        try
//        {
//            pst = con.prepareStatement(sql);
//            pst.setString(1, Name);
//            pst.setString(2, Description);
//            pst.setString(3, Author);
//            pst.setString(4, Page);
//            pst.setString(5, Publish);
//
//            int i = pst.executeUpdate();
//            if(i==1) System.out.println("Data insert succesfully");
//        }
//        catch(SQLException ex) {
//            Logger.getLogger(ListBookController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//
//    private void setCellTable(){
//        con = DbConnect.getConnect();
//
//        namecol.setCellValueFactory(new PropertyValueFactory<>("Name"));
//        descol.setCellValueFactory(new PropertyValueFactory<>("Description"));
//        authorcol.setCellValueFactory(new PropertyValueFactory<>("Author"));
//        pagecol.setCellValueFactory(new PropertyValueFactory<>("Page"));
//        pubcol.setCellValueFactory(new PropertyValueFactory<>("Publish"));
//    }
//
//    private void LoadDB(){
//        try{
//            DbConnect dc = new DbConnect();
//            Connection cn = dc.getConnect();
//            pst = con.prepareStatement("SELECT * FROM `booklist`");
//            rs = pst.executeQuery();
//            while (rs.next()){
//                data.add(new BookList(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5)));
//            }
//        } catch (SQLException ex){
//            Logger.getLogger(ListBookController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        Bookdata.setItems(data);
//    }

    public void initialize(URL url, ResourceBundle rb){
        namecol.setCellValueFactory(new PropertyValueFactory<>("Name"));
        descol.setCellValueFactory(new PropertyValueFactory<>("Description"));
        authorcol.setCellValueFactory(new PropertyValueFactory<>("Author"));
        pagecol.setCellValueFactory(new PropertyValueFactory<>("Page"));
        pubcol.setCellValueFactory(new PropertyValueFactory<>("Publish"));
        try {
            DbConnect cn = new DbConnect();
            Connection cn1 = DbConnect.getConnect();

            String sql = "SELECT * FROM `booklist` WHERE 1";
            Statement s = cn1.createStatement();
            ResultSet r = s.executeQuery(sql);

            while (r.next()){
                data.add(new BookList(
                        r.getString("Name")
                        , r.getString("Description")
                        , r.getString("Author")
                        , r.getString("Page")
                        , r.getString("Publish")
                ));
                Bookdata.setItems(data);
            }

        } catch (Exception e){

        }
    }






    private Stage stage;
    private Scene scene;
    private Parent root;
    @FXML
    public void switchtohome(ActionEvent event) throws IOException {
        Parent root= FXMLLoader.load(getClass().getResource("HomePage.fxml"));
        stage = (Stage)((Node)event.getSource()).getScene().getWindow();
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }
}
