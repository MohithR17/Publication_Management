/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.ooad.publication_mangement;

import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duos1
 */
public class Download_paper extends HttpServlet {

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
        
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Download_paper</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Download_paper at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//            String filename = request.getParameter("filename");
//          InputStream in = new FileInputStream(filename);
//
//          
//          String agent = request.getHeader("USER-AGENT");
//          if (agent != null && agent.indexOf("MSIE") != -1)
//          {
//            filename = URLEncoder.encode(filename, "UTF8");
//            response.setContentType("application/x-download");
//            response.setHeader("Content-Disposition","attachment;filename=" + filename);
//          }
////          else if ( agent != null && agent.indexOf("Mozilla") != -1)
////          {
////            response.setCharacterEncoding("UTF-8");
////            filename = MimeUtility.encodeText(filename, "UTF8", "B");
////            response.setContentType("application/force-download");
////            response.addHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
////          }
//
//
//          BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
//          byte by[] = new byte[32768];
//          int index = in.read(by, 0, 32768);
//          while (index != -1) {
//              out.write(by, 0, index);
//              index = in.read(by, 0, 32768);
//          }
//          out.flush();

         //return response;
         PrintWriter out = response.getWriter();
         String filename = request.getParameter("filename");
         response.setContentType("APPLICATION/OCTET-STREAM");
         response.setHeader("Content-Disposition","attachment;filename=\""+filename+"\"");
         FileInputStream f1 = new FileInputStream(filename);
         int i;
         while((i=f1.read()) != -1)
             out.write(i);
         out.close();
         f1.close();
         String user;
         user = request.getParameter("name");
         User.decrement_download_limit(user);
         
        
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
