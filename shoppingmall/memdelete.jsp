
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="temp.*"%> 

<% 
String pageNUM=request.getParameter("pageNUM");
int b_id=Integer.parseInt(request.getParameter("b_id"));
%>

<html>
<head><title></title>
<!-- 폼에 입력된 정보가 올바른지 판단하는 자바스크립트 부분 -->
<script language="JavaScript" src="board.js"></script>
</head>

<body>
<center><h1>게시글 삭제하기<Admim></h1>
<form name="form" method="post" action="memdelete_ok.jsp?b_id=<%=b_id%>&pageNUM=<%=pageNUM%>">

<table border="0" cellpadding="0" cellspacing="0">
<tr height="50">
  <td colspan="2" align="left">
  <b>  >> 관리자 "Admim" ID의 암호를 입력하세요. <<  </b>
  </td>
 </tr> 
<tr>
  <td width="80">암&nbsp;&nbsp;호</td>
  <td>
  <input type="password" name="mem_pwd" maxlength="12" size="12"></td>
  </td>
</tr> 

<tr height="50" align="center">
  <td colspan="2">
  <input type="button" value="글삭제" onclick="mdelete_ok()"> &nbsp;&nbsp;&nbsp;
  <input type="reset"  value="다시작성"> &nbsp;
  <input type="button" value="글목록" onclick="location.href='list.jsp?pageNUM=<%=pageNUM%>'">
  </td>
</tr>        
</table>

