/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TFMSystem;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import package1.DB;
/**
 *
 * @author on
 */
@WebServlet(name = "addMembership", urlPatterns = {"/addMembership"})
public class addMembership extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String taskID=request.getParameter("taskID");
            String startDate=request.getParameter("sDate");
            String endDate=request.getParameter("lDate");
            String [] userID=new String[100];
            DB db = new DB();
            
            if(db.connect())
            {
                db.query("SELECT * FROM tempconfirmmember");
                int n=db.getNumberOfRows();
                System.out.println("row="+n);
                for(int i=0;i<n; i++)
                {
                    userID[i]=db.getDataAt(i, "userID");
                    System.out.println("userID"+i+"="+userID[i]);
                }
                for(int k=0; k<n;k++)
                {
                    if(db.query("SELECT * FROM tf_member WHERE userID='"+userID[k]+"'AND tfID='"+taskID+"'"))
                    {
                        if(db.getNumberOfRows()==0)
                        {
                            db.query("INSERT INTO tf_member(tfID, userID, GStatus, position, startDate, endDate) VALUES('"+taskID+"', '"+userID[k]+"', 'member', 'member', '"+startDate+"', '"+endDate+"')");
                            
                        }
                    }
                }
                
                
                db.close();
            }
            response.sendRedirect("Admin/viewCT.jsp?taskID="+taskID+"");
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
