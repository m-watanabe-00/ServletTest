package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/servlet/controlServlet" })
public class ControlServlet extends HttpServlet {

	public void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		//リクエストパラメータを取得
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String mail = request.getParameter("mail");
		String comment = request.getParameter("comment");
		String dm[] = request.getParameterValues("dm");
		String dl = request.getParameter("dl");

		//リクエストパラメータをセット
		request.setAttribute("name", name);
		request.setAttribute("company", company);
		request.setAttribute("mail", mail);
		request.setAttribute("comment", comment);
		request.setAttribute("dl", dl);

		//リクエストパラメータ_dmをセット
		ArrayList<String> dmList = new ArrayList<String>();
		if (dm != null) {
			for (String dms : dm) {
				dmList.add(dms);
			}
		}
		request.setAttribute("dmList", dmList);

		//遷移先URL
		String url = "../jsp/result.jsp";

		//資料請求がyesなら以下の処理を行う
		if (dl.equals("yes")) {
			url = "../jsp/download.jsp";
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}