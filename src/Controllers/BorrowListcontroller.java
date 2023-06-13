package Controllers;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;

public class BorrowListcontroller implements Initializable {

    @FXML
    private TableView<StudentList> StudentTable;

    @FXML
    private TableColumn<StudentList, String> colbid;

    @FXML
    private TableColumn<StudentList, String> colbname;

    @FXML
    private TableColumn<StudentList, String> colborrow;

    @FXML
    private TableColumn<StudentList, String> colreturn;

    @FXML
    private TableColumn<StudentList, String> colsid;

    @FXML
    private TableColumn<StudentList, String> colsname;

    @FXML
    private TextField txtSeachStudent;

    @FXML
    private TextField txtbid;

    @FXML
    private TextField txtbname;

    @FXML
    private TextField txtborrow;

    @FXML
    private TextField txtreturn;

    @FXML
    private TextField txtsid;

    @FXML
    private TextField txtsname;
    private Connection con = null;
    private PreparedStatement pst = null;
    private ResultSet rs = null;
    private ObservableList<StudentList> studentdata;
    private Stage stage;
    private Scene scene;
    private Parent root;


    private void setStudentTable(){
        colsid.setCellValueFactory(new PropertyValueFactory<>("StudentID"));
        colsname.setCellValueFactory(new PropertyValueFactory<>("StudentName"));
        colbid.setCellValueFactory(new PropertyValueFactory<>("BookID"));
        colbname.setCellValueFactory(new PropertyValueFactory<>("BookName"));
        colborrow.setCellValueFactory(new PropertyValueFactory<>("BorrowDate"));
        colreturn.setCellValueFactory(new PropertyValueFactory<>("ReturnDate"));
    }
    private void LoadStudentData(){
        try {
            pst = con.prepareStatement("SELECT * FROM `studentboorrow`");
            rs = pst.executeQuery();
            while (rs.next()){
                studentdata.add(new StudentList(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        StudentTable.setItems(studentdata);
    }
    private void cleartextstudentinfo(){
        StudentTable.getItems().clear();
    }
    private void Refresh(){
        cleartextstudentinfo();
        setStudentTable();
        LoadStudentData();
    }
    @FXML
    void addstudent(ActionEvent event) throws SQLException {
        String sql = "INSERT INTO `studentboorrow`(`StudentID`, `StudentName`, `BookID`, `BookName`, `BorrowDate`, `ReturnDate`) VALUES (?,?,?,?,?,?)";
        String sid = txtsid.getText();
        String sname = txtsname.getText();
        String bid = txtbid.getText();
        String bname = txtbname.getText();
        String borrowd = txtborrow.getText();
        String returnd =txtreturn.getText();

        try {
            pst=con.prepareStatement(sql);
            pst.setString(1, sid);
            pst.setString(2, sname);
            pst.setString(3, bid);
            pst.setString(4, bname);
            pst.setString(5, borrowd);
            pst.setString(6, returnd);

            int i = pst.executeUpdate();
            if(i == 1){
                System.out.println("Data inserted succesfully");
                Refresh();
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        finally {
            pst.close();
        }
    }
    @FXML
    void deletestudent(ActionEvent event) throws SQLException {
        String sql = "DELETE FROM `studentboorrow` WHERE `StudentID`=?";
        pst = con.prepareStatement(sql);
        String DelID = txtsid.getText();

        try {
            pst.setString(1, DelID);
            int i = pst.executeUpdate();
            if(i == 1){
                System.out.println("Data Deleted succesfully");
                Refresh();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    @FXML
    void updatestudent(ActionEvent event) {
        String sql = "UPDATE `studentboorrow` SET `StudentName`=?,`BookID`=?,`BookName`=?,`BorrowDate`=?,`ReturnDate`=? WHERE `StudentID`=?";
        try {
            pst = con.prepareStatement(sql);
            String Upsid = txtsid.getText();
            String Upsname = txtsname.getText();
            String Upbid = txtbid.getText();
            String Upbanme = txtbname.getText();
            String Upborrow = txtborrow.getText();
            String Upreturn = txtreturn.getText();
            pst.setString(6, Upsid);
            pst.setString(1, Upsname);
            pst.setString(2, Upbid);
            pst.setString(3, Upbanme);
            pst.setString(4, Upborrow);
            pst.setString(5, Upreturn);

            int i = pst.executeUpdate();
            if(i == 1){
                System.out.println("Data updated succesfully");
                Refresh();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    @FXML
    void refresh(ActionEvent event) {
        Refresh();
    }

    @FXML
    void switchtohome(ActionEvent event) throws IOException {
        Parent root= FXMLLoader.load(getClass().getResource("../Page/ADMIN_CONTROLLER.fxml"));
        stage = (Stage)((Node)event.getSource()).getScene().getWindow();
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }
    private void setcellvaluetableclick(){
        StudentTable.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                StudentList sl = StudentTable.getItems().get(StudentTable.getSelectionModel().getSelectedIndex());
                txtsid.setText(sl.getStudentID());
                txtsname.setText(sl.getStudentName());
                txtbid.setText(sl.getBookID());
                txtbname.setText(sl.getBookName());
                txtborrow.setText(sl.getBorrowDate());
                txtreturn.setText(sl.getReturnDate());

            }
        });
    }

    private void SearchStudent(){
        txtSeachStudent.setOnKeyReleased(e-> {
            if (txtSeachStudent.getText().equals("")) Refresh();
            else {
                cleartextstudentinfo();
                String sql = "SELECT * FROM `studentboorrow` WHERE `StudentID`=?"
                        + "UNION SELECT * FROM `studentboorrow` WHERE `StudentName`=?"
                        + "UNION SELECT * FROM `studentboorrow` WHERE `BookID`=?"
                        + "UNION SELECT * FROM `studentboorrow` WHERE `BookName`=?";
                String Sid = txtSeachStudent.getText();
                String Sname = txtSeachStudent.getText();
                String Bid = txtSeachStudent.getText();
                String Bname = txtSeachStudent.getText();
                try {
                    pst = con.prepareStatement(sql);
                    pst.setString(1, Sid);
                    pst.setString(2, Sname);
                    pst.setString(3, Bid);
                    pst.setString(4, Bname);
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        studentdata.add(new StudentList(
                                rs.getString(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getString(4),
                                rs.getString(5),
                                rs.getString(6)));
                    }
                } catch (SQLException ex) {
                    throw new RuntimeException(ex);
                }

            }

        });
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        try {
            con = DbConnect.getConnect();
            studentdata = FXCollections.observableArrayList();
            setStudentTable();
            LoadStudentData();
            setcellvaluetableclick();
            SearchStudent();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
