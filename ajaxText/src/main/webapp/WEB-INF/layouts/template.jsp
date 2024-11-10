<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/styles.css">

</head>
<body>

	<header>
		<tiles:insertAttribute name="header" />
	</header>
	
	<main>
		<tiles:insertAttribute name="body" />
	</main>
	
	<footer>
		<tiles:insertAttribute name="footer"/>
	</footer>

</body>
</html>