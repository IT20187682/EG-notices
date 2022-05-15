<%@page import="model.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
if (request.getParameter("") != null) 
{ 
Notice readObj = new Notice(); 
 String stsMsg = ""; 
//Insert--------------------------
if (request.getParameter("hidnoticeIDSave") == "") 
 { 
 stsMsg = readObj.inserNotice(request.getParameter("noticeType"), 
		 request.getParameter("noticeCode"), 
			request.getParameter("noticeDate"), 
			request.getParameter("noticeTopic"),
			request.getParameter("noticeDesc"),
			request.getParameter("noticePerson"),
			request.getParameter("noticeMails"));
 } 
else      //Update----------------------
 { 
 stsMsg = readObj.updateNotice(request.getParameter("hidNoticeIDSave"), 
 request.getParameter("noticeType"), 
 request.getParameter("noticeCode"), 
 request.getParameter("noticeDate"),
 request.getParameter("noticeTopic"), 
 request.getParameter("noticeDesc"), 
 request.getParameter("noticePerson"), 
 request.getParameter("noticeMails")); 
 } 
 session.setAttribute("statusMsg", stsMsg); 
} 

//Delete--------------------------------------------------
if (request.getParameter("hidNoticeIDDelete") != null) 
{ 
	Notice readObj = new Notice();
	String stsMsg = 
	readObj.deleteNotice(request.getParameter("hidNoticeIDDelete")); 
	session.setAttribute("statusMsg", stsMsg); 
}
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<link rel="stylesheet" type="text/css" href="css\footer.css"> 
<script src="Components/jquery-3.6.0.js"></script>
<script src="Components/main.js"></script>

               
<title>Notices Management</title>
</head>
<body>

<div class="container"><div class="row"><div class="col-6">
<h1>Notices and Remainders  Management</h1>
	
	<form  id="formNotice" name="formNotice" method="post" action="units.jsp">
		Notice Type: <input id="Noticetype" name="Noticetype" type="text" class="form-control form-control-sm"> <br>
		Notice Code: <input id="Noticecode" name="Noticecode" type="text" class="form-control form-control-sm"> <br>
		Notice Date: <input id="Noticedate" name="Noticedate" type="text" class="form-control form-control-sm"> <br>
		Notice Topic: <input id="Noticetopic" name="Noticetopic" type="text" class="form-control form-control-sm"> <br>
		Description: <input id="Noticedescription" name="Noticedescription" type="text" class="form-control form-control-sm"> <br>
		Written by: <input id="Noticeperson" name="Noticeperson" type="text" class="form-control form-control-sm"> <br>
		Email status: <input id="Noticemails" name="Noticemails" type="text" class="form-control form-control-sm"> <br>
		
		<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
		<input type="hidden" id="hidNoticeIDSave" name="hidNoticeIDSave" value="">
		
	</form>
	
	<div id="alertSuccess" class="alert alert-success"></div>
	<div id="alertError" class="alert alert-danger"></div>
	
<div id="divNoticesGrid">
<%
Notice readObj = new Notice();
 out.print(readObj.readNotices());
%>
</div>


</div></div></div>
</body>
</html>
    
    
    
    
