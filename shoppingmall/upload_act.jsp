<%@ page contentType="text/html;charset=euc-kr"%> 
<%@ page import="com.oreilly.servlet.*"%> 
<%@ page import="com.oreilly.servlet.multipart.*"%> 
<%@ page import="java.util.*"%> 
<%@ page import="java.io.*"%>  
 
<% 
String realFolder = ""; 	//웹 어플리케이션상의 절대 경로 
String saveFolder = "temp";	//파일이 업로드되는 폴더 지정 
String encType = "euc-kr";	//엔코딩타입 
int maxSize = 10*1024*1024;	//최대 업로될 파일크기 10Gb 
/* 무료의 경우 사이즈 제한이 있을 수 있다. */ 
/* 한글이 제대로 안될 가능성도 있다(테스트에서는 잘 되었음) */ 
/* 아마도 utf 범위 내에 있는 글자만 인식 가능할 것으로 판단됨 */ 
 
ServletContext context = getServletContext();  
//현재 jsp페이지의 웹 어플리케이션상의 절대 경로를 구한다 
realFolder = context.getRealPath(saveFolder); 
/* 실제 위치와 다를 수 있어 실제 경로를 가져온다 */ 
out.println("the realpath is : " + realFolder+"<br>"); 

try{ 
   MultipartRequest multi = null; 
   //전송을 담당할 콤포넌트를 생성하고 파일을 전송한다. 
   //전송할 파일명을 가지고 있는 객체, 서버상의 절대경로,최대 업로드될 파일크기, 문자코드, 기본 보안 적용 
   multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy()); 
   /* DefaultFileRenamePolicy 동일 파일명이 들어오면 자동으로 파일명 수정 */
   //Form의 파라미터 목록을 가져온다 

   Enumeration params = multi.getParameterNames(); 
   //파라미터를 출력한다 
   while(params.hasMoreElements()){  
      String name = (String)params.nextElement(); //전송되는 파라미터이름 
      String value = multi.getParameter(name);    //전송되는 파라미터값   
      out.println(name + " = " + value +"<br>"); 
   } 
    out.println("-------------------------------------<br>"); 
   //전송한 파일 정보를 가져와 출력한다 

   Enumeration files = multi.getFileNames(); 
   //파일 정보가 있다면 
   while(files.hasMoreElements()){ 
    //input 태그의 속성이 file인 태그의 name 속성값 :파라미터이름 
      String name = (String)files.nextElement(); 
   //서버에 저장된 파일 이름 
      String filename = multi.getFilesystemName(name); 
   //전송전 원래의 파일 이름 
      String original = multi.getOriginalFileName(name); 
   //전송된 파일의 내용 타입 
      String type = multi.getContentType(name); 
   //전송된 파일 속성이 file인 태그의 name 속성값을 이용해 파일 객체 생성 

	File file = multi.getFile(name); 
	out.println("파라메터 이름 : " + name +"<br>"); 
	out.println("실제 파일 이름 : " + original +"<br>"); 
	out.println("저장된 파일 이름 : " + filename +"<br>"); 
	out.println("파일 타입 : " + type +"<br>"); 
       
	if(file!=null){ 
		out.println("크기 : " + file.length()); 
		out.println("<br>"); 
	} 
	}

}catch(IOException ioe){ 
 System.out.println(ioe); 
}catch(Exception ex){ 
 System.out.println(ex); 
} 

%> 

