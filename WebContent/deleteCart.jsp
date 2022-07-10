<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Liverpool"%>
<%@ page import="dao.LiverpoolRepository"%>

<%
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("Cart.jsp");
		return;
	}

	session.invalidate();
	
	response.sendRedirect("Cart.jsp");
%>
