package Controllers;

public class StudentList {
    public String getStudentID() {
        return StudentID;
    }

    public void setStudentID(String studentID) {
        StudentID = studentID;
    }

    public String getStudentName() {
        return StudentName;
    }

    public void setStudentName(String studentName) {
        StudentName = studentName;
    }

    public String getBookID() {
        return BookID;
    }

    public void setBookID(String bookID) {
        BookID = bookID;
    }

    public String getBookName() {
        return BookName;
    }

    public void setBookName(String bookName) {
        BookName = bookName;
    }

    public String getBorrowDate() {
        return BorrowDate;
    }

    public void setBorrowDate(String borrowDate) {
        BorrowDate = borrowDate;
    }

    public String getReturnDate() {
        return ReturnDate;
    }

    public void setReturnDate(String returnDate) {
        ReturnDate = returnDate;
    }

    String StudentID;
    String StudentName;
    String BookID;
    String BookName;

    public StudentList(String studentID, String studentName, String bookID, String bookName, String borrowDate, String returnDate) {
        StudentID = studentID;
        StudentName = studentName;
        BookID = bookID;
        BookName = bookName;
        BorrowDate = borrowDate;
        ReturnDate = returnDate;
    }

    String BorrowDate;
    String ReturnDate;
}
