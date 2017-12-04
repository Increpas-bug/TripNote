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
          <script type="text/javascript">
    
        // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue()
        {
            if(!document.userInfo.user_email.value){
                alert("이메일을 입력하세요.");
                return false;
            }
            
            if(!document.userInfo.user_pw.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
            if(!document.userInfo.user_birth.value){
                alert("생일을 입력하세요.");
                return false;
            }
            if(!document.userInfo.user_nickname.value){
                alert("이름을 입력하세요.");
                return false;
            }
            
            
            
        }
        
        
    </script>

     <h1>회원가입 페이지</h1>
        
         <form:form action="join.do" method="post" commandName="member" name="userinfo" onsubmit="return checkValue()">
         

 

            <table>
              
                <tr>
                    <td>이메일</td>
                    <td><input type="text" name="user_email" >
                        <input type="button" value="중복확인"></td>
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
                    <td><input type="text" name="user_birth" size="6">
                     placeholder="YY/MM/DD"
                    </td>
                </tr>
               
                <tr>
                    <td>관리자번호</td>
                    <td>
                     <select name="user_adminyn">
                    <option value="N" >일반</option>
                    <option value="Y" >관리자</option>
                    </select>
                    </td>
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
