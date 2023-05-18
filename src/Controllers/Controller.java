import javafx.application.Application;  
import javafx.scene.Scene;  
import javafx.scene.control.*;  
import javafx.scene.layout.BorderPane;  
import javafx.stage.Stage;  
public class Controller extends Application {  
    public static void main(String[] args) {  
    launch(args);  
        }  
  
    @Override  
    public void start(Stage primaryStage) throws Exception {  
        // TODO Auto-generated method stub  
        BorderPane root = new BorderPane();  
        Scene scene = new Scene(root,200,300);  
        MenuBar menubar = new MenuBar();  
        Menu FileMenu = new Menu("File");  
        MenuItem filemenu1=new MenuItem("About Us");  
        MenuItem filemenu2=new MenuItem("Categories");  
        MenuItem filemenu3=new MenuItem("Log in");  
        FileMenu.getItems().addAll(filemenu1,filemenu2,filemenu3);
        primaryStage.setScene(scene);  
        primaryStage.show();  
          
    }     
}  