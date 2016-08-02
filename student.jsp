<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="ww" uri="/webwork" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'student.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>管理系统</h1>
  	<div id='jnkc'></div>
   				<script type="text/javascript">
   				setInterval("jnkc.innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000); 
   				</script>
   <form action="modules/student/student_save.action" method="post">
   		<input type="hidden" name="model.id" value="<ww:property value="model.id"/>">
   		<input type="hidden" name="model.status" value="<ww:property value="model.status"/>">
   			
   		
   		<table border="" bordercolor="" bgcolor="" align="center">
   			<tr> 
   				<td>姓名: </td>
   				<td><input type="text" name="model.name" value="<ww:property value="model.name"/>"> </td>
   			</tr>
   			<tr> 
   				<td>年龄: </td>
   				<td><select name="model.age" >
   					<option value="16">16 </option>
   					<option value="17">17 </option>
   					<option value="18">18 </option>
   					<option value="19">19 </option>
   					<option value="20">20 </option>
   					<option value="21">21</option>
   					<option value="22">22</option></select> </td>	
   			</tr>
   			<tr> 
   				<td>性别:</td>
   				<td> <input type="radio" name="model.sex" value="男"	>男 
   				 <input type="radio" name="model.sex" value="女">女</td>
   			</tr>
   			<tr>
   				<td>班级:</td>
   				<td><input type="text" name="classname" value="<ww:property value="classname"/>"> </td>
   			</tr>
   			<tr> 
   				<td> 操作: </td>
   				<td align="right"> <input type="submit" value="注册"> </td>
   				<td> <input type="button" value="管理" onclick="location.href='student_list.action'"> </td>
   			</tr>
   			
   			
   		</table>
   </form>
  </body>
</html>
