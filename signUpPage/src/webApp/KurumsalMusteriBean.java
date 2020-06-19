package webApp;

// MusteriBean classından extends ediliyor.
public class KurumsalMusteriBean extends MusteriBean{

    private String KurumAdi;

    public KurumsalMusteriBean(String fullName, String email, String adress, String musteriTipi) {
        super(fullName, email, adress, musteriTipi);
    }


    public String getKurumAdi() {
        return KurumAdi;
    }

    public void setKurumAdi(String kurumAdi) {
        KurumAdi = kurumAdi;
    }

    // registerUser metodu
    public String registerUser(){

        return super.getFullName().toUpperCase();
    }
}
