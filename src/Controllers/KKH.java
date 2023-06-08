package Controllers;


import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableRow;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import jdk.jfr.Description;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;

public class KKH {

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

    @FXML
    void Insert(ActionEvent event) {
        String name, des, author, page, publish;
        name = txtName.getText();
        des = txtDes.getText();
        author = txtAuthor.getText();
        page = txtPage.getText();
        publish = txtPub.getText();
        try{
            pst = con.prepareStatement("INSERT INTO `booklist`(`Name`, `Description`, `Author`, `Page`, `Public`) VALUES (?,?,?,?,?)");
            pst.setString(1, name);
            pst.setString(2, des);
            pst.setString(3, author);
            pst.setString(4, page);
            pst.setString(5, publish);
            pst.executeUpdate();

            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Insertion");

            alert.setHeaderText("Book Insertion");
            alert.setContentText("Inserted !");

            alert.showAndWait();

            table();

            txtName.setText("");
            txtDes.setText("");
            txtAuthor.setText("");
            txtPage.setText("");
            txtPub.setText("");
        } catch (SQLException ex){
            Logger.getLogger(ListBookController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void table(){
        Connect();
        ObservableList<BookList> data = FXCollections.observableArrayList();
        try{
            pst = con.prepareStatement("SELECT `Name`, `Description`, `Author`, `Page`, `Public` FROM `booklist`");
            ResultSet rs = pst.executeQuery();
            {
                while (rs.next()) {
                    BookList bl = new BookList();
                    bl.setName(rs.getString("Name"));
                    bl.setDes(rs.getString("Description"));
                    bl.setAuthor(rs.getString("Author"));
                    bl.setPage(rs.getString("Page"));
                    bl.setPublish(rs.getString("Publish"));
                    data.add(bl);
                }
            }
            Bookdata.setItems(data);
            namecol.setCellValueFactory(f -> f.getValue().nameProperty());
            TitleColumn.setCellValueFactory(f -> f.getValue().titleProperty());
            AuthorColumn.setCellValueFactory(f -> f.getValue().authorProperty());
            LanguageColumn.setCellValueFactory(f -> f.getValue().languageProperty());
            GenreColumn.setCellValueFactory(f -> f.getValue().genreProperty());
            SIDColumn.setCellValueFactory(f -> f.getValue().sidProperty());
            BorrowColumn.setCellValueFactory(f -> f.getValue().borrow_dateProperty());

        } catch (SQLException ex){
            Logger.getLogger(edit_controller.class.getName()).log(Level.SEVERE, null, ex);
        }

        table.setRowFactory( tv -> {
            TableRow<Book> myRow = new TableRow<>();
            myRow.setOnMouseClicked(event -> {
                if (event.getClickCount() == 1 && (!myRow.isEmpty())){
                    myIndex = table.getSelectionModel().getSelectedIndex();
                    bid = Integer.parseInt(String.valueOf(table.getItems().get(myIndex).getBID()));
                    txtTitle.setText(table.getItems().get(myIndex).getTitle());
                    txtAuthor.setText(table.getItems().get(myIndex).getAuthor());
                    txtLanguage.setText(table.getItems().get(myIndex).getLanguage());
                    txtGenre.setText(table.getItems().get(myIndex).getGenre());
                    txtSID.setText(table.getItems().get(myIndex).getSID());
                    txtBorrow.setText(table.getItems().get(myIndex).getBorrow_date());
                }
            });
            return myRow;
        });
    }


    @FXML
    void Remove(ActionEvent event) {

    }

    @FXML
    void Update(ActionEvent event) {

    }

    private Stage stage;
    private Scene scene;
    @FXML
    public void switchtoadmin(ActionEvent event) throws IOException {
        Parent root= FXMLLoader.load(getClass().getResource("admin.fxml"));
        stage = (Stage)((Node)event.getSource()).getScene().getWindow();
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }

    Connection con;
    PreparedStatement pst;
    int myIndex;
    int bid;
    public void Connect(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://sql12623200:3306/library", "sql12623200", "1C5XGkr8rA");
        } catch (ClassNotFoundException ex){

        } catch (SQLException ex){
            ex.printStackTrace();
        }
    }

    public void initialize(URL url, ResourceBundle rb){
        Connect();
        table();
    }

}