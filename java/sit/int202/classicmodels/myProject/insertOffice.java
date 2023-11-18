package sit.int202.classicmodels.myProject;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import sit.int202.classicmodels.entities.Office;
import sit.int202.classicmodels.repositories.OfficeRepository;


import java.io.IOException;


@WebServlet(name = "insertOffice", value = "/insert-Office")

public class insertOffice extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/insert-Office.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Office office = new Office();

        String officeCode = request.getParameter("officeCode");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        String addressLine1 = request.getParameter("addressLine1");
        String addressLine2 = request.getParameter("addressLine2");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String postalCode = request.getParameter("postalCode");
        String territory = request.getParameter("territory");

        if (officeCode.length() == 0 || city.length() == 0 || phone.length() == 0 || addressLine1.length() == 0
        ||country.length() == 0 || postalCode.length() == 0 || territory.length() == 0) {
            request.setAttribute("error", "กรุณาใส่ข้อมูลให้ครบ");
            request.getRequestDispatcher("insert-Office.jsp").forward(request, response);
        }

        office.setOfficeCode(officeCode);
        office.setCity(city);
        office.setPhone(phone);
        office.setAddressLine1(addressLine1);
        office.setAddressLine2(addressLine2);
        office.setState(state);
        office.setCountry(country);
        office.setPostalCode(postalCode);
        office.setTerritory(territory);

        OfficeRepository officeRepository = new OfficeRepository();

        if (officeRepository.insert(office)){
            request.setAttribute("success", "เพิ่มข้อมูลเรียบร้อยแล้ว");
        } else {
            request.setAttribute("error", "กรุณาใส่ข้อมูลให้ครบ ");
        }
        doGet(request, response);
    }
}