package jdbc.javabean;

public class User {
    private String UserName;
    private String Password;
    private String Sex;
    private String Birthday;
    private String PhoneNumber;
    private String Email;
    private String Address;
    private String Education;
    private String Job;

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getSex() {
        return Sex;
    }

    public void setSex(String sex) {
        Sex = sex;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        PhoneNumber = phoneNumber;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getEducation() {
        return Education;
    }

    public void setEducation(String education) {
        Education = education;
    }

    public String getJob() {
        return Job;
    }

    public void setJob(String job) {
        Job = job;
    }

    public String getBirthday() {
        return Birthday;
    }

    public void setBirthday(String birthday) {
        Birthday = birthday;
    }

    public User() {
    }

    public User(String userName, String password, String sex, String birthday, String phoneNumber, String email, String address, String education, String job) {
        UserName = userName;
        Password = password;
        Sex = sex;
        Birthday = birthday;
        PhoneNumber = phoneNumber;
        Email = email;
        Address = address;
        Education = education;
        Job = job;
    }

    @Override
    public String toString() {
        return "User{" +
                "UserName='" + UserName + '\'' +
                ", Password='" + Password + '\'' +
                ", Sex='" + Sex + '\'' +
                ", Birthday='" + Birthday + '\'' +
                ", PhoneNumber='" + PhoneNumber + '\'' +
                ", Email='" + Email + '\'' +
                ", Address='" + Address + '\'' +
                ", Education='" + Education + '\'' +
                ", Job='" + Job + '\'' +
                '}';
    }
}
