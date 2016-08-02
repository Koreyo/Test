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
    
    <title>学员管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function add(){
			location.href="student.action";
		}
		function del(){
			thisform.action="modules/student/student_delete.action";
			thisform.submit();
		}
		function selAll() {
			var s1=document.getElementsByName("ids");
			for(var i=0;i<s1.length;i++) {
				var s=s1[i];
				s.checked=true;
			}	
		}
		
		function selAllno() {
			var s2=document.getElementsByName("ids");
			for(var i=0;i<s2.length;i++) {
			var s=s2[i];
			s.checked=false;
			}
		}
		
		function gettime(){
			var date=new Date();
			var time=date.toLocaleString();
			document.getElementById("demo").innerHTML=time;
  	}
	</script>
  </head>
  
  <body>
  <h1>添加系统</h1>
  <div id="demo"></div>
  <script type="text/javascript">
  		function gettime(){
			var date=new Date();
			var time=date.toLocaleString();
			document.getElementById("demo").innerHTML=time;
			}
 	setInterval("gettime()",1000);
 	</script>
  <form action="" name="thisform" method="post">
  	<table>
  	<tr>
  		<td colspan="6">
  			<input type="button" value="新增" onclick="add();"/>
  			<input type="button" value="删除" onclick="del();"/>
  		</td>
  	</tr>
  	<tr>
  		<td>选择</td>
  		<td>序号</td>
  		<td>姓名</td>
  		<td>性别</td>
  		<td>年龄</td>
  		<td>班级</td>
  	</tr>
    <ww:iterator value="listData" status="ss">
    	<tr>
    		<td><input type="checkbox" name="ids" value="<ww:property value="id"/>"/></td>
	  		<td><ww:property value="id"/></td>
	  		<td><ww:property value="name"/></td>
	  		<td><ww:property value="sex"/></td>
	  		<td><ww:property value="age"/></td>
	  		<td><ww:property value="classname"/></td>
	  	</tr>
    </ww:iterator>
    	<tr>
    		<td> <input type="button" value="全选" onclick="selAll()"></td>
    		<td> <input type="button" value="不选" onclick="selAllno()"></td>
    	</tr>
    </table>
    </form>
  </body>
</html>
