package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.FactoryProvider;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			String title=request.getParameter("titleinput");
			String content=request.getParameter("content");
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			int noteId=Integer.parseInt(request.getParameter("taskId").trim());
			Notes note=(Notes)s.get(Notes.class, noteId);
			note.setTitle(title);
			note.setContent(content);
			note.setAddDate(new Date());
			tx.commit();
			s.close();
			response.sendRedirect("All_tasks.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
