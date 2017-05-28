<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'daohang.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
    <script type="text/javascript">
       function duanxin()
       {
            var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:400});
            pop.setContent("contentUrl","<%=path %>/qiantai/duanxin/duanxin.jsp");
            pop.setContent("title","短信订餐");
            pop.build();
            pop.show();
       }
    </script>
  </head>
  
  <body>
     <a href="<%=path %>/qiantai/default.jsp">首页</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
     <A href="#" onclick="myXinxi()">我的信息</A>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
     <A href="#" onclick="myCart()">我的订餐车</A>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
     <A href="#" onclick="myOrder()">我的订单</A>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
     <%--<A href="#" onclick="duanxin()">短信订餐</A>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; --%>
	 <a target="_blank" href="<%=path %>/liuyanAll.action">留言板</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
	 <a target="_blank" href="<%=path %>/login.jsp">进入后台</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
	 营业时间：早9：00-晚21:00
  </body>
</html>
