<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입 </h2>
		<form name="form1" method="post" action="/admin/register.do">
		<table>
    		<tr height="40px">
		        <td>유저ID</td>
		        <td><input type="text" name="userId"></td>
		    </tr>
		    <tr height="40px">
		        <td>패스워드</td>
		        <td><input type="password" name="password"></td>
		    </tr>
		</table>
		<table>
		    <tr>
		        <td align="center"><input type="submit" value="회원가입"></td>
		        <td align="center"><input type="reset" value="리셋"></td>
		    </tr>
		</table>
		</form>
</body>
</html>