<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Liverpool"%>
<%@ page import="dao.LiverpoolRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("Productview.jsp");
		return;
	}

	LiverpoolRepository dao = LiverpoolRepository.getInstance();
	
	Liverpool liverpool = dao.getId(id);
	if (liverpool == null) {
		response.sendRedirect("Error.jsp");
	}

	ArrayList<Liverpool> cartList = (ArrayList<Liverpool>) session.getAttribute("cartlist");
	Liverpool goodsQnt = new Liverpool();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("Cart.jsp");
%>
