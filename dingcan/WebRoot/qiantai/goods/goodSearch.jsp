<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link href="css/Common.css" rel="stylesheet" type="text/css" />
    <link href="css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .Header {CLEAR: both; DISPLAY: block; FLOAT: left; BACKGROUND-IMAGE: url(<%=path %>/img/reservation01.jpg); WIDTH: 972px; POSITION: relative; HEIGHT: 140px}
        .Header .HeaderTop {HEIGHT: 100px}
    </style>
    <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript">
        function reg()
	        {
	                var url="<%=path %>/qiantai/userinfo/userReg.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	        }
	        function login()
	        {
	           if(document.dengluForm.userName.value=="")
	           {
	               alert("请输入用户名");
	               return;
	           }
	           if(document.dengluForm.userPw.value=="")
	           {
	               alert("请输入密码");
	               return;
	           }
	           document.dengluForm.submit();
	        }
	        
	        function goodSearch1()
	        {
	            document.goodSearch.submit();
	        }
	        
	        
	        function myXinxi()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                var url="<%=path %>/qiantai/userinfo/userXinxi.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	            </s:else>
	        }
	        
	        function myCart()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var s="<%=path %>/myCart.action";
	                 window.location.href=s;
	            </s:else>
	        }
	        
	        function myOrder()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var s="<%=path %>/myOrder.action";
	                 window.location.href=s;
	            </s:else>
	        }
	        
	        function liuyanAll()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var url="<%=path %>/liuyanAll.action";
				     window.open(url,"_blank");
	            </s:else>
	        }
	        function buy1()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            <s:else>
	            if(document.buy.quantity.value=="")
	            {
	                alert("请输入购买数量");
	                return false;
	            }
	            document.buy.submit();
	            </s:else>
	        }
    </script>
  </head>
  
  <body>
<!-- head如果图片高度不合适。请修改Common.ces里面的".Header .HeaderTop"的高度。和".Header"的高度-->
<div align="center" class="Wrapper">
	<div class="Header">
		<div class="HeaderTop">
		    <br/>
		    <font size="22px;">网络订餐系统</font>
		</div>
		<div id="Menu" class="Menu">
			<div id="fstMenu" class="fstMenu"></div>
			<div class="secMenu">
				<span id="secMenu0" class="secMenu-center">
				    <jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
				</span>
			</div>
		</div>
	</div>
</div>	
<!-- head-->	
	
	
	
	
<!--body-->
<div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
	     <div id="navigation" class="naivgation">
				<!-- 登录-->
				<div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">用户登陆</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
					    <s:if test="#session.user==null">
						    <form action="<%=path %>/userLogin.action" name="dengluForm" method="post">
							    <table border="0">
							        <tr>
							            <td>用户名：</td>
							            <td><input type="text" name="userName" size="12"/></td>
							        </tr>
							        <tr>
							            <td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
							            <td><input type="password" name="userPw" size="14"/></td>
							        </tr>
							        <tr>
							           <td height="8"></td>
							        </tr>
							        <tr>
							            <td></td>
							            <td>
							               <input type="button" value="登&nbsp;录" onclick="login()" style="width:30px;white;border-width:0px;cursor: hand;font-size: 11px;" />
							               &nbsp;&nbsp;&nbsp;
							               <input type="button" value="没有注册？" onclick="reg()" style="width:50px;white;border-width:0px;cursor: hand;font-size: 11px;" />
							            </td>
							        </tr>
							    </table>
						    </form>
						</s:if>
						<s:else>
						      欢迎您：<s:property value="#session.user.userName"/>
						     &nbsp;&nbsp;&nbsp;&nbsp;
						     <a href="<%=path %>/userLogout.action">安全退出</a> 
						</s:else>
					</div>
				 </div>
				 <!-- 登录-->
				 <!-- 类别-->
				 <div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">菜品分类</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
					    <%--<table width="100%">
					        <tr>
					            <td align="left">ddddddd</td>
					        </tr>
					        <tr>
					            <td align="left">dddddddd</td>
					        </tr>
					    </table>--%>
					    <s:action name="catelogAll" executeResult="true" flush="true"></s:action>
					</div>
				 </div>
				 <!-- 类别-->
				 <div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">菜品查询</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
					    <jsp:include flush="true" page="/qiantai/goods/agoodSearch.jsp"></jsp:include>
					</div>
				 </div>
				 <!-- 公告-->
				 <div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">网站公告</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
					    <%--<table width="100%">
					        <tr>
					            <td align="left">ddddddd</td>
					        </tr>
					        <tr>
					            <td align="left">dddddddd</td>
					        </tr>
					    </table>--%>
					    <s:action name="gonggaoQian5" executeResult="true"></s:action>
					</div>
				 </div>
				 <!-- 公告-->
		 </div>
		 <div id="content" class="Sub">
				<div class="NewContainer770">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">
						     <span style="float:left">菜品展示</span>
							 <span style="float:right"></span>
                        </div>
					</div>
					<div class="Slot">
			             <table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				              <tr align="center" bgcolor="#FAFAF1" height="22">
				                  <td>菜品名称</td>
				                  <td>单价</td>
				                  <td>图片</td>
				                  <td>操作</td>
				              </tr>
							  <s:iterator value="#request.goodsList" id="goods">
							  <tr align='center' bgcolor="#FFFFFF" height="22">
								  <td><s:property value="#goods.goodsName"/></td>
								  <td>￥<s:property value="#goods.goodsTejia"/><br/></td>
								  <td><a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>"> <img src="<%=path %>/<s:property value="#goods.goodsPic"/>" width="60" height="60" border="0"/> </a></td>
								  <td><a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">预定</a></td>
							  </tr>
							  </s:iterator>
	        			</table>
                    </div>
				</div>
		 </div>
</div>
</div>
<!--body-->
	
	
	
<!--foot -->	
<div align="center" class="Wrapper">
	<div id="footer" align="center" class="Footer">
		 <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	</div>
</div>
<!--foot -->	
</body>
</html>
