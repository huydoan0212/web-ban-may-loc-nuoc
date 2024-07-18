package model;

public class UserID {
    static int userID;



    public static int getUserID() {
        return userID;
    }

    public static void setUserID(int userID) {
        UserID.userID = userID;
    }
}
