package webApp;

import java.util.SimpleTimeZone;


// istediniz MusteriBean Classı
public class MusteriBean {



    private String fullName;
    private String email;
    private String adress;
    private String musteriTipi;
    private String registerUser;

    public MusteriBean(String fullName,String email,String adress, String musteriTipi){
        this.fullName=fullName;
        this.email=email;
        this.adress=adress;
        this.musteriTipi=musteriTipi;
    }

    public String getFullName() {
        return fullName;
    }

    public String getEmail() {
        return email;
    }

    public String getAdress() {
        return adress;
    }

    public String getMusteriTipi() {
        return musteriTipi;
    }


    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public void setMusteriTipi(String musteriTipi) {
        this.musteriTipi = musteriTipi;
    }



    public void setRegisterUser(String registerUser){
        this.registerUser=registerUser;
    }


    public String getRegisterUser(){
        String mys=fullName.toUpperCase();
        return mys;
    }

    // registerUser metodu
    public String registerUser(){

        String mys=fullName.toUpperCase();
        return mys;
    }
}
