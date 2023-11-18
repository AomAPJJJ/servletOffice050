package sit.int202.classicmodels.myProject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import sit.int202.classicmodels.repositories.OfficeRepository;


import java.io.IOException;

@WebServlet(name = "deleteOffice", value = "/delete-Office")
public class deleteOffice extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String officeCode = request.getParameter("officeCode");
        OfficeRepository officeRepository = new OfficeRepository();
        if (officeRepository.delete(officeCode)){
            request.setAttribute("success", "ลบข้อมูล เรียบร้อยแล้วค่ะ");
        }else {
            request.setAttribute("error", "กรุณาตรวจสอบข้อมูลอีกครั้ง");
        }
        request.getRequestDispatcher("office_list").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}






