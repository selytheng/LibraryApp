package Controllers;

public class AdminTableList {

    private String colName;
    private String colEmail;
    private String colID;
    private String colDepartment;
    private String colDuties;



    public String getColName() {
        return colName;
    }

    public void setColName(String colName) {
        this.colName = colName;
    }

    public String getColEmail() {
        return colEmail;
    }

    public void setColEmail(String colEmail) {
        this.colEmail = colEmail;
    }

    public String getColID() {
        return colID;
    }

    public void setColID(String colID) {
        this.colID = colID;
    }

    public String getColDepartment() {
        return colDepartment;
    }

    public void setColDepartment(String colDepartment) {
        this.colDepartment = colDepartment;
    }

    public String getColDuties() {
        return colDuties;
    }

    public void setColDuties(String colDuties) {
        this.colDuties = colDuties;
    }

    public AdminTableList( String colName, String colEmail, String colID, String colDepartment) {

        this.colName = colName;
        this.colEmail = colEmail;
        this.colID = colID;
        this.colDepartment = colDepartment;
        this.colDuties = colDuties;
    }


}
