<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,com.minglespot.MyFunctions"%>
<%! String ErrCode="0",LoginCode="A";%>

 <HTML>
    <HEAD>
    <script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
    <LINK href="styles.css" type="text/css" rel="stylesheet">
    <script LANGUAGE="Javascript" SRC="Images/calender.js"></script>
    <script LANGUAGE="Javascript" >
		function ChkMandatoryField(F,T){
			var val= F.value;
			if(val==""){alert(T+" is mandatory");return false;}
		}
		function ChkNumField(F,T){
			var val = F.value;
			if(isNaN(val)==true||val==""){alert("Please enter numbers for "+T);return false;}
		}
		function ChkAlphaNumericField(F,T){
			var val = F.value;
			var pattern = /^([a-zA-Z0-9]{1,250})$/;
			if(!(pattern.test(val)==true)){alert("Please enter alphabets or numbers for "+T);return false;}
		}
		function ChkAlphaField(F,T){
			var val = F.value;
			var pattern = /^([a-zA-Z ]{1,250})$/;
			if(!(pattern.test(val)==true)){alert("Please enter text for "+T);return false;}
		}
		function ChkEmailField(F,T){
			var val = F.value;
			var pattern = /^([a-zA-Z0-9\_\.]{4,25})$/;
			if(!(pattern.test(val)==true)){alert("Please enter valid email for "+T);return false;}
		}
		function ChkDateField(F,T)
		{
			var val = F.value;
		    var pattern = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;
		    if(!(pattern.test(val)==true)){alert("Please enter valid date format (yyyy-mm-dd) for "+T);return false;}
		}
		function validate()
		{
			var frm = document.forms(0);
			if(ChkMandatoryField(frm.UserID,'UserID')==false) return false;
			if(ChkAlphaField(frm.UserID,'UserID')==false) return false;
			if(ChkMandatoryField(frm.uPassword,'Password')==false) return false;
			if(ChkAlphaNumericField(frm.uPassword,'Password')==false) return false;
			
		}
		function fnValidate(s){
		var frm = document.forms(0);
		var UserID=frm.UserID.value;
		//if(UserID==""){alert("User ID is mandatory");return false;}
		var uPassword=frm.uPassword.value;
		//if(uPassword==""){alert("Password is mandatory");return false;}
		s.href = "Validate.jsp?UserID="+UserID+"&Password="+uPassword;
		s.target="HomeFrame";
		}
