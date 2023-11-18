package sit.int202.classicmodels.myProject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import sit.int202.classicmodels.repositories.OfficeRepository;


import java.io.IOException;

@WebServlet(name = "findOffice", value = "/find-Office")
public class findOffice extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OfficeRepository officeRepository = new OfficeRepository();
        String find = request.getParameter("find");
        request.setAttribute("offices", officeRepository.findByCityOrCountry(find));
        getServletContext().getRequestDispatcher("/office_list.jsp").forward(request, response);
    }
}




