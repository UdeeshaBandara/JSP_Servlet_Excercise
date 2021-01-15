

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class calBill
 */
@WebServlet("/calBill")
public class calBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public calBill() {
        super();

    }

    double tot=0;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Prices priceOf=new Prices();
	
		HttpSession session = request.getSession();
		/**
		 * Removing existing sessions
		 */
		session.removeAttribute("qtySoap");
		session.removeAttribute("SoapPrice");
		session.removeAttribute("qtyChocolate");
		session.removeAttribute("chocolatePrice");
		session.removeAttribute("qtyChips");
		session.removeAttribute("chipsPrice");
		session.removeAttribute("qtyShampoo");
		session.removeAttribute("shampooPrice");
		session.removeAttribute("qtyMilk");
		session.removeAttribute("MilkPrice");
		session.removeAttribute("Total");
		tot=0;
		if(request.getParameter("soap")!=null)
		{
			tot+=(priceOf.getSoapPrice()*Double.parseDouble(request.getParameter("qtySoap")));
			session.setAttribute("qtySoap",request.getParameter("qtySoap"));
			session.setAttribute("SoapPrice",priceOf.getSoapPrice()*Double.parseDouble(request.getParameter("qtySoap")));
			
		}
		if(request.getParameter("chocolate")!=null)
		{
			tot+=(priceOf.getChocPrice()*Double.parseDouble(request.getParameter("qtyChocolate")));
			session.setAttribute("qtyChocolate",request.getParameter("qtyChocolate"));
			session.setAttribute("chocolatePrice",priceOf.getChocPrice()*Double.parseDouble(request.getParameter("qtyChocolate")));
			
		}
		if(request.getParameter("chips")!=null)
		{
			tot+=(priceOf.getChipsPrice()*Double.parseDouble(request.getParameter("qtyChips")));
			session.setAttribute("qtyChips",request.getParameter("qtyChips"));
			session.setAttribute("chipsPrice",priceOf.getChipsPrice()*Double.parseDouble(request.getParameter("qtyChips")));
			
		}
		if(request.getParameter("shampoo")!=null)
		{
			tot+=(priceOf.getShampooPrice()*Double.parseDouble(request.getParameter("qtyShampoo")));
			session.setAttribute("qtyShampoo",request.getParameter("qtyShampoo"));
			session.setAttribute("shampooPrice",priceOf.getShampooPrice()*Double.parseDouble(request.getParameter("qtyShampoo")));
			
		}
		if(request.getParameter("Milk")!=null)
		{
			tot+=(priceOf.getMilkPrice()*Double.parseDouble(request.getParameter("qtyMilk")));
			session.setAttribute("qtyMilk",request.getParameter("qtyMilk"));
			session.setAttribute("MilkPrice",priceOf.getMilkPrice()*Double.parseDouble(request.getParameter("qtyMilk")));
			
		}
		session.setAttribute("Total",tot);
		response.sendRedirect("DisplayBill.jsp");
		
	}

}


