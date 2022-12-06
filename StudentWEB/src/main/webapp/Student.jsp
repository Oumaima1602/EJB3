<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="formStudent">
	<form action="controleur.do" method="post">
		<table>
			<tr>
				<td>Prénom</td>
				<td><input type="text" name="prenom" /></td>
			</tr>
			<tr>
				<td>Nom</td>
				<td><input type="text" name="nom" /></td>
			</tr>
			<tr>
				<td>CNE</td>
				<td><input type="text" name="cne" /></td>
			</tr>
			<tr>
				<td>Adresse</td>
				<td><input type="text" name="adresse" /></td>
			</tr>
			<tr>
				<td>Niveau</td>
				<td><input type="text" name="niveau" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="action" value="Add"/></td>
			</tr>
		</table>
	</form>
</div>
<div>
	<table>
		<tr>
			<th>ID</th>
			<th>Prénom</th>
			<th>Nom</th>
			<th>CNE</th>
			<th>Adresse</th>
			<th>Niveau</th>
		</tr>
		<c:forEach items="${students}" var="st">
		<tr>
		<td>${st.studentId}</td>
		<td>${st.firstName}</td>
		<td>${st.LastName}</td>
		<td>${st.cne}</td>
		<td>${st.address}</td>
		<td>${st.level}</td>
		<td><a href="controleur.do?action=del&id=${st.studentId}">Supprimer</a></td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>