<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<h3>login.jsp</h3>
	<table class="table">
		<thead>
			<th></th>
			<th></th>
			<th></th>
		</thead>
		<tbody>
			<tr>
				<td>아이디
				<input type="text"  id="id" class="form-control" type="text" placeholder="아이디"></td>
			</tr>
			<tr>
				<td>비밀번호
				<input type="text" id="pw" class="form-control" type="text" placeholder="비밀번호"></td>
			</tr>
			<tr>
				<td>
					<input type="button" id="login" class="btn btn-primary" value="로그인" onclick="login()">
					<input type="button" class="btn btn-success" value="회원가입">
				</td>
			</tr>
		</tbody>
	</table>
	<script>
	function login(){
		/* fetch('login.do',method: 'POST')
		.then((response) => console.log("loginOK",response))
		.catch((error) => console.log("error:",error)); */
	$.ajax({	
			url: 'login.do',
			data: {
				id: $('#id').val(),
				pw: $('#pw').val()
			},
			method: 'POST',
			dataType: 'json'
		})
	};
	</script>
<script src="js/jquery-3.7.1.js" />
<script src="js/ajax.js" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>