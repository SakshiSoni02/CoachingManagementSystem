

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import dao.admindao;

/**
 * Servlet implementation class adminShowCircular
 */
public class adminShowCircular extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminShowCircular() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		int id  =  Integer.parseInt(request.getParameter("pid"));
		admindao pdb = new admindao();
		int res = pdb.ShowCircular(id);
		if(res>0) {
			  pw.println("<script type=\"text/javascript\">");
	            pw.println("alert('circular showed successfully');");
	            pw.println("location='admin/AdminCircular.jsp';"); // Redirect to home.jsp
	            pw.println("</script>");
		}else {
			pw.print("failed");
		}}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
