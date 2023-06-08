package Controllers;

import java.io.PushbackInputStream;
import java.net.URL;
import java.security.PublicKey;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javafx.fxml.Initializable;
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
//
//
//
//public class ListBookController implements Initializable {
//    private PreparedStatement pst = null;
//    private ResultSet rs = null;
//    private ObservableList<BookList> data;
//    @FXML
//    private TableView<BookList> Bookdata;
//    @FXML
//    private TableColumn<BookList, String> namecol;
//    @FXML
//    private TableColumn<BookList, String> idcol;
//
//    @FXML
//    private TableColumn<BookList, String> descol;
//    @FXML
//    private TableColumn<BookList, String> pubcol;
//    @FXML
//    private TableColumn<BookList, String> pagecol;
//    @FXML
//    private TableColumn<BookList, String> authorcol;
//    @FXML
//    private TextField txtName;
//    @FXML
//    private TextField txtDes;
//    @FXML
//    private TextField txtAuthor;
//    @FXML
//    private TextField txtPage;
//    @FXML
//    private TextField txtPub;
//
//    private Connection con = null;
//
//
//    public ObservableList<BookList> getBooksList() throws SQLException {
//        ObservableList<BookList> bookList = FXCollections.observableArrayList();
//        try {
//            Connection conn = DbConnect.getConnect2();
//            String sql = "SELECT * FROM books";
//            // Search Function
////            String search = searchField.getText();
////            if(search!=""){
////                sql += " WHERE title LIKE '%" +search+ "%'";
////            }
//
//            PreparedStatement statement = conn.prepareStatement(sql);
//            ResultSet resultSet = statement.executeQuery();
//            BookList books;
//            while (resultSet.next()) {
//                books = new BookList(resultSet.getString("ID"), resultSet.getString("Name"),
//                        resultSet.getString("Description"), resultSet.getString("Author"), resultSet.getString("Page"),
//                        resultSet.getString("Public"));
//                bookList.add(books);
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return bookList;
//
//    }
//
//    public void showBooks() throws SQLException {
//        ObservableList<BookList> list = getBooksList();
//        idcol.setCellValueFactory(new PropertyValueFactory<BookList, String>("ID"));
//        namecol.setCellValueFactory(new PropertyValueFactory<BookList, String>("Name"));
//        descol.setCellValueFactory(new PropertyValueFactory<BookList, String>("Description"));
//        authorcol.setCellValueFactory(new PropertyValueFactory<BookList, String>("Author"));
//        pagecol.setCellValueFactory(new PropertyValueFactory<BookList, String>("Page"));
//        pubcol.setCellValueFactory(new PropertyValueFactory<BookList, String>("Public"));
//        Bookdata.setItems(list);
//    }
//
//    @Override
//    public void initialize(URL url, ResourceBundle resourceBundle) {
//        try {
//            showBooks();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
//}


import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;

import java.net.URL;
import java.util.ResourceBundle;

public class ListBookController implements Initializable {

    @FXML
    private TableView<BookList> Bookdata;

    @FXML
    private Button adddata;

    @FXML
    private TableColumn<BookList, String> authorcol;

    @FXML
    private TableColumn<BookList, String> descol;

    @FXML
    private TableColumn<BookList, String> idcol;

    @FXML
    private TableColumn<BookList, String> namecol;

    @FXML
    private TableColumn<BookList, String> pagecol;

    @FXML
    private TableColumn<BookList, String> pubcol;

    @FXML
    private TextField txtAuthor;

    @FXML
    private TextField txtDes;

    @FXML
    private TextField txtName;

    @FXML
    private TextField txtPage;

    @FXML
    private TextField txtPub;

    public ObservableList<BookList> getBooksList() throws SQLException {
        ObservableList<BookList> bookList = FXCollections.observableArrayList();
        try {
            Connection conn = DbConnect.getConnect2();
            String sql = "SELECT * FROM BookList";
            // Search Function
//            String search = searchField.getText();
//            if(search!=""){
//                sql += " WHERE title LIKE '%" +search+ "%'";
//            }

            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            BookList books;
            while (resultSet.next()) {
                books = new BookList(resultSet.getString("ID"), resultSet.getString("Name"),
                        resultSet.getString("Description"), resultSet.getString("Author"), resultSet.getString("Page"),
                        resultSet.getString("Public"));
                bookList.add(books);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bookList;

    }

    public void showBooks() throws SQLException {
        ObservableList<BookList> list = getBooksList();
        idcol.setCellValueFactory(new PropertyValueFactory<BookList, String>("ID"));
        namecol.setCellValueFactory(new PropertyValueFactory<BookList, String>("Name"));
        descol.setCellValueFactory(new PropertyValueFactory<BookList, String>("Description"));
        authorcol.setCellValueFactory(new PropertyValueFactory<BookList, String>("Author"));
        pagecol.setCellValueFactory(new PropertyValueFactory<BookList, String>("Page"));
        pubcol.setCellValueFactory(new PropertyValueFactory<BookList, String>("Public"));
        Bookdata.setItems(list);
    }


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        try {
            showBooks();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
