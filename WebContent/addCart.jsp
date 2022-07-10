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

	Liverpool liverpool = dao.getLiverpoolById(id);
	if (liverpool == null) {
		response.sendRedirect("Error.jsp");
	}

	ArrayList<Liverpool> goodsList = dao.getAllLiverpools();
	Liverpool goods = new Liverpool();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Liverpool> list = (ArrayList<Liverpool>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Liverpool>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0;
	Liverpool goodsQnt = new Liverpool();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("Productview.jsp?id=" + id);
%>