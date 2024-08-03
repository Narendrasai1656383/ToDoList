<%@ page import="dao.DAO" %>
<%
	String task=request.getParameter("task");
	String startdate=request.getParameter("startdate");
	String starttime=request.getParameter("starttime");
	String enddate=request.getParameter("enddate");
	String endtime=request.getParameter("endtime");
	String activeUseremail=(String)session.getAttribute("email");
	DAO obj=new DAO();
	boolean flag=obj.addToDo(activeUseremail,task,startdate,starttime,enddate,endtime);
	if(flag){
		response.sendRedirect("UserHome.jsp?msg=ToDo is added");
	}
	else{
		response.sendRedirect("UserHome.jsp?msg=Failed to add ToDo");
	}
	%>