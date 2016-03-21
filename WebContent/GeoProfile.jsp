<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="<%= response.encodeUrl(request.getContextPath() + "/Controller?action=saveGeoData") %>">

<input type="hidden" name="action" value="saveGeoData" />


CITY:
<select name="CITY">
  <option value="1" selected>SANTA CLARA</option>
  <option value="2">NEW YORK</option>
  <option value="3">DALLAS</option>
  <option value="4">BOSTON</option>
</select>
<br />


MAJOR:
<select name="MAJOR">
  <option value="1" selected>COMPUTER SCIENCE ENGINEERING</option>
  <option value="2">BIOMEDICAL ENGINEERING</option>
  <option value="3">MSIS</option>
  <option value="4">MBA</option>
</select>
<br />
MINOR:
<select name="MINOR">
  <option value="1" selected>COMPUTER SCIENCE ENGINEERING</option>
  <option value="2">BIOMEDICAL ENGINEERING</option>
  <option value="3">MSIS</option>
  <option value="4">MBA</option>
</select>
<br />

SELECT ONE HOBBY:
<select name="HOBBY1">
  <option value="1" selected>DANCE</option>
  <option value="2">FOOTBALL</option>
  <option value="3">TREKING</option>
  <option value="4">VIDEO GAMES</option>
  <option value="5">BASEBALL</option>
  <option value="6">COOKING</option>
  <option value="7">READING BOOKS</option>
  <option value="8">DRAWING</option>
</select>
<br />
SELECT SECOND HOBBY:
<select name="HOBBY2">
   <option value="1" selected>DANCE</option>
  <option value="2">FOOTBALL</option>
  <option value="3">TREKING</option>
  <option value="4">VIDEO GAMES</option>
  <option value="5">BASEBALL</option>
  <option value="6">COOKING</option>
  <option value="7">READING BOOKS</option>
  <option value="8">DRAWING</option>
</select>
<br />

<input type="submit" value="Submit hobbies"/>

</form>

</body>
</html>