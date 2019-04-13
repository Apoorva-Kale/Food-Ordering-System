import java.io.*;

public class loginservlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public Registeration(){
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		try{
				String name = request.getParameter("nm");
				String password = request.getParameter("pass");
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				Connection con = DriverManager.getConnection("jdbc:odbc:ApooDSN");
				PreparedStatement pst = com.prepareStatement("select * from Customer where userid="+userid+"");
				if(rs.next()){
					if(rs.getString(2).equals(pwd)){
						out.println("welcome"+userid);
					}
					else{
						out.println("Invalid password try again");

				}
				ps.setString(1,username);
				ps.setString(2,password);
				PrintWriter out = response.getWriter();
				out.println("You have successfully registered");
			}
		catch(Exception e){
				System.out.println(e);
			}

	}
}

