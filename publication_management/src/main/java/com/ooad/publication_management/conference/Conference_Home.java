/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.ooad.publication_management.conference;

import com.mongodb.BasicDBList;
import java.io.*;
import java.util.*;
 
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;



/**
 *
 * @author rajesh
 */
@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class Conference_Home extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
        response.setContentType("text/html;charset=UTF-8");
//      isMultipart = ServletFileUpload.isMultipartContent(request);
        Part filePart = request.getPart("file");
        String title = request.getParameter("title");
        String fileName = filePart.getSubmittedFileName();
        for (Part part : request.getParts()) {
          part.write("C:\\Users\\duos1\\Music\\publication_management\\src\\main\\webapp\\Papers\\" + fileName);
        }
//        HttpSession session = request.getSession(false);
//        
//        response.getWriter().print(session.getAttribute("acronym"));
//        session.setAttribute("acronym", acronym);
        HttpSession session = request.getSession(false);
        Paper paper = new Paper();
        paper.insert_paper(title, "C:\\Users\\duos1\\Music\\publication_management\\src\\main\\webapp\\Papers\\" + fileName, session.getAttribute("acronym").toString());
        response.sendRedirect("conference.jsp");
        response.getWriter().print(session.getAttribute("acronym"));
//        BasicDBList papers = Conference.insert_paper(session.getAttribute("acronym"),fileName);
//        response.getWriter().print(papers);
//        response.sendRedirect("conference.jsp"); 
//        response.getWriter().print("The file uploaded sucessfully.");
//            Part filePart = request.getPart("fn");
//            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
//            InputStream fileContent = filePart.getInputStream();
//            File targetFile = new File("E:\\Mohith\\PESU\\SEM_6\\OOAD\\Project\\publication_management\\src\\main\\webapp\\Papers\\filename");
//            OutputStream outStream = new FileOutputStream(targetFile);
//            out.println(fileName);
//            byte[] buffer = new byte[8 * 1024];
//            int bytesRead;
//            while ((bytesRead = fileContent.read(buffer)) != -1) {
//                outStream.write(buffer, 0, bytesRead);
//            }
//            IOUtils.c(fileContent);
//            IOUtils.close(outStream);
        }
    }

    


