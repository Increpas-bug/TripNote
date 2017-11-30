<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>
<body>
        <h1>회원가입 페이지2222</h1>
        
         <form:form action="join.do" method="post" commandName="member" >
 

            <table>
                <tr>
                    <td>이메일</td>
                    <td><input type="text" name="user_email" ></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input type="password" name="user_pw"></td>
                </tr>
                <tr>
                  
                    <td>이름</td>
                    <td><input type="text" name="user_nickname" ></td>
                </tr>
                <tr>
                    <td>생일</td>
                    <td><input type="text" name="user_birth" ></td>
                </tr>
               
                <tr>
                    <td>관리자번호</td>
                    <td><input type="text" name="user_adminyn" ></td>
                </tr>
 
                <tr>
                    <td colspan="2" align="center">
                    <input type="submit" value="가입하기">
                    <input type="reset" value="다시작성"></td>
                  
                </tr>
            </table>
 
        </form:form>
</body>
</html>
