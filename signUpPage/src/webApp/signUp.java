package webApp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "/signServlet")
public class signUp extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // session başlatılması
        HttpSession session=request.getSession();


        String fullname=request.getParameter("fullname"); // fullname parametresi alınıyor
        String email=request.getParameter("email"); // email parametresi alınıyor
        String adress=request.getParameter("adress"); // adress parametresi alınıyor
        String customerType=request.getParameter("customerType"); // Müşteri Tipi parametresi alınıyor


        // musteriBean nesnesi gelen parametrelere göre olusturulması
        MusteriBean musteriBean=new MusteriBean(fullname,email,adress,customerType);



        // gelen parametrelerden herhangi biri null ise hata mesajı döndürülmesini saglıyor
        if(fullname==null || email==null || adress==null|| customerType==null){
            request.setAttribute("errorMessage","Please Fill Blank Fields");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }



        // burada if yapısı yerine switchcase yapısının kullanılmasını daha mantıklı buldum.
        //  Gelen müsteri tipi verisine göre farklı jsp 'lere forward ediliyor.
       switch (customerType){
           case "individual" :
               session.getAttribute("musteriBean"); // bireysel müşteri tipi icin musteri Bean nesnesi attribute olarak belirleniyor
               session.setAttribute("musteriBean",musteriBean);

               request.getRequestDispatcher("RegisterBireysel.jsp").forward(request,response);
               break;
           case "corporate" :

               // kurumsal müşteri tipi icin musteri Bean nesnesi attribute olarak belirleniyor.
               // burada kurumsalmusteriBean, musteriBean nesnesinden türetildi
               KurumsalMusteriBean kurumsalmusteriBean=new KurumsalMusteriBean(fullname,email,adress,customerType);

               session.getAttribute("kurumsalmusteriBean");
               session.setAttribute("kurumsalmusteriBean",kurumsalmusteriBean);

               request.getRequestDispatcher("RegisterKurumsal.jsp").forward(request,response);


               break;

           default:
               break;
       }







    }

}
