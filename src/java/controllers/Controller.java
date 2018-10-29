package controllers;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controller extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String brand = request.getParameter("brand");
        String yearFrom = request.getParameter("yearFrom");
        String yearTo = request.getParameter("yearTo");
        String type = request.getParameter("type");
        String fuel = request.getParameter("fuel");
        String damage = request.getParameter("damage");

        List resultList = null;
        try {
            if (damage != null) {
                resultList = logic.logic.runQueryDamage();
            } else if (yearFrom.isEmpty() && yearTo.isEmpty() && type.equals("-") && fuel.equals("-")) {
                resultList = logic.logic.runQueryBrand(brand);
            } else if (brand.isEmpty() && type.equals("-") && fuel.equals("-")) {
                resultList = logic.logic.runQueryYear(yearFrom, yearTo);
            } else if (brand.isEmpty() && yearFrom.isEmpty() && yearTo.isEmpty() && type.equals("-")) {
                resultList = logic.logic.runQueryFuel(fuel);
            } else if (brand.isEmpty() && yearTo.isEmpty() && yearFrom.isEmpty() && fuel.equals("-")) {
                resultList = logic.logic.runQueryType(type);
            } else if (brand.isEmpty() && yearTo.isEmpty() && yearFrom.isEmpty()) {
                resultList = logic.logic.runQueryTypeFuel(type, fuel);
            } else if (yearTo.isEmpty() && yearFrom.isEmpty() && fuel.equals("-")) {
                resultList = logic.logic.runQueryBrandType(brand, type);
            } else if (yearTo.isEmpty() && yearFrom.isEmpty() && type.equals("-")) {
                resultList = logic.logic.runQueryBrandFuel(brand, fuel);
            } else if (yearTo.isEmpty() && yearFrom.isEmpty()) {
                resultList = logic.logic.runQueryBrandTypeFuel(brand, type, fuel);
            } else {
                resultList = logic.logic.runQueryShowAllCars();
            }

        } catch (Exception e) {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }

        if (resultList != null) {

            request.setAttribute("listOfCars", resultList);
            request.getRequestDispatcher("result.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
