package Controllers;

import java.sql.Date;

public class bookdata {
    String Name;
    String Des;
    String Author;
    String Page;
    String Publish;

    public bookdata(String Name, String Des, String Author, String Publish, String Page){
        this.Name=Name;
        this.Des=Des;
        this.Author=Author;
        this.Publish=Publish;
        this.Page=Page;
    }

    public String getName(){
        return Name;
    }
    public void setName(String Name){
        this.Name=Name;
    }
    public String getDes(){
        return Des;
    }
    public void setDes(String Des){
        this.Des=Des;
    }
    public String getAuthor(){
        return Author;
    }
    public void setAuthor(String Author){
        this.Author=Author;
    }
    public String getPublish(){
        return Publish;
    }
    public void setPublish(String Publish){
        this.Publish=Publish;
    }
    public String getPage(){
        return Page;
    }
    public void setPage(String Page){
        this.Page=Page;
    }


}
