<%@ page contentType="text/html; charset=EUC-KR"%>
<HTML>
<HEAD>
<SCRIPT language="javascript">

function check(f) {
blank=false;
for (i=0; i<f.elements.length;i++) {
if (f.elements[i].value=="")
if (f.elements[i].name != "large") 
blank= true;
}
if (blank==true) 
alert("모든 항목을 입력하셔야 합니다.");
else
f.submit();
}
</SCRIPT> 
</HEAD>
<BODY>
<center>
<FORM method=post action="product_save.jsp" enctype="multipart/form-data" >
<TABLE border=0 width=300 >
<TR>
<TH bgcolor=#DFEDFF colspan=2>
<FONT size=+1 color=black> 상품 올리기</FONT></TH>
</TR>
<TR>
<TH width=20% bgcolor=#DFEDFF>
<FONT size=-1 color=black> 작성자</FONT></TH>
<TD bgcolor=#eeeeee> <INPUT type=text name=wname size=20>
</TD>
</TR>
<TR>
<TH width=20% bgcolor=#DFEDFF>
<FONT size=-1 color=black>상품 분류</FONT></TH>
<TD bgcolor=#eeeeee>
<FONT size=-1 color=white>
<SELECT name=category size=1>
<OPTION value=11>가구
<OPTION value=22>전기/전자
<OPTION value=33>부엌용품
<OPTION value=44>의류
<OPTION value=55>보석 및 악세서리
<OPTION value=66>헬스기구
<OPTION value=77>컴퓨터 관련
<OPTION value=88>기타 
</SELECT>
</FONT>
</TD>
</TR>
<TR>
<TH width=20% bgcolor=#DFEDFF>
<FONT size=-1 color=black>상품명</FONT></TH>
<TD bgcolor=#eeeeee>
<INPUT type=text name=pname size=30>
</TD>
</TR>
<TR>
<TH width=20% bgcolor=#DFEDFF>
<FONT size=-1 color=black>제조원</FONT></TH>
<TD bgcolor=#eeeeee>
<INPUT type=text name=sname size=30>
</TD>
</TR>
<TR>
<TH width=20% bgcolor=#DFEDFF>
<FONT size=-1 color=black>시중가</FONT>
</TH>
<TD bgcolor=#eeeeee>
<INPUT type=text name=price size=10>
</TD>
</TR>
<TR>
<TH width=20% bgcolor=#DFEDFF>
<FONT size=-1 color=black>판매가</FONT>
</TH>
<TD bgcolor=#eeeeee>
<INPUT type=text name=dprice size=10>
</TD>
</TR>
<TR>
<TH width=20% bgcolor=#DFEDFF>
<FONT size=-1 color=black>입고 수량</FONT>
</TH>
<TD bgcolor=#eeeeee>
<INPUT type=text name=stock size=10>
</TD>
</TR>
<TR>
<TH width=20% bgcolor=#DFEDFF>
<FONT size=-1 color=black>작은 이미지</FONT>
</TH>
<TD bgcolor=#eeeeee>
<INPUT type=file name=small size=30>
</TD>
</TR>
<TR>
<TH width=20% bgcolor=#DFEDFF>
<FONT size=-1 color=black>큰 이미지</FONT>
</TH>
<TD bgcolor=#eeeeee>
<INPUT type=file name=large size=30>
</TD>
</TR>
<TR>
<TH bgcolor=#DFEDFF>
<FONT size=-1 color=black> 상품 내용</FONT>
</TH>
<TD bgcolor=#eeeeee>
</TD>
</TR>
<TR>
<TD colspan=2>
<TEXTAREA name=description cols=70 rows=5></TEXTAREA>
</TD>
</TR>
<TR>
<TD colspan=2>
<INPUT type=button value=" 저장 " onClick="check(this.form)" >
<INPUT type=reset value=" 다시쓰기 " >
</TD>
</TR>
</TABLE>
</CENTER>
</FORM>
</BODY>
</HTML>