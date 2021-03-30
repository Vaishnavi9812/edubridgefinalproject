<%@page import="com.javatpoint.dao.UserDao"%>  
 <jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("addNewDonorSuccess.jsp");  
}else{  
response.sendRedirect("addNewDonorError.jsp");  
}  
%>