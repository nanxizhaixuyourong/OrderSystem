<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'agoodSearch.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
      <form action="<%=path %>/goodSearch.action" id="" name="form1" method="post">
	        <table border="0">
	           <tr>
	               <td>
	                   名称：
	               </td>
	               <td align="left">
	                  <input type="text" name="goodsName" size="12"/>
	               </td>
	           </tr>
	           <tr>
	               <td>
	                   种类：
	               </td>
	               <td align="left">
	                   <select name="catelogId">
	                       <option value="0">选择菜品分类</option>
	                       <s:iterator value="#request.cateLogList" id="catelog">
	                           <option value="<s:property value="#catelog.catelogId"/>"><s:property value="#catelog.catelogName"/></option>
	                       </s:iterator>
	                   </select>
	               </td>
	           </tr>
	           <tr>
	               <td>
	                   价格：
	               </td>
	               <td align="left">
	                   <input type="text" name="jiage_sta" size="3" onpropertychange="onchange1(this.value)" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">-
	                   <input type="text" name="jiage_end" size="3" onpropertychange="onchange1(this.value)" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
	               </td>
	           </tr>
	           <tr>
	               <td>
	                   适合人：
	               </td>
	               <td align="left">
	                   <select name="goodsRenqun">
				             <option value="xiao">小孩</option>
				             <option value="qing">青年</option>
				             <option value="zhong">中年</option>
				             <option value="lao">老年</option>
				      </select>
	               </td>
	           </tr>
	           <tr>
	               <td>
	                   <input type="submit" value="查询"/>
	               </td>
	               <td align="left">
	                   <input type="reset" value="重置"/>
	               </td>
	           </tr>
	        </table>
	    </form>
  </body>
</html>
