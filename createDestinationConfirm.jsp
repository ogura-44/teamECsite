<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<title>宛先情報確認画面</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="main">
		<div id="top">
			<h1>宛先情報入力確認画面</h1>
		</div>
		<table class="table">
			<tr>
				<th scope="row"><label>姓</label></th>
				<td><s:property value="familyName" escape="false" /></td>
			</tr>
			<tr>
				<th scope="row"><label>名</label></th>
				<td><s:property value="session.firstName" escape="false" /></td>
			</tr>
			<tr>
				<th scope="row"><label>姓ふりがな</label></th>
				<td><s:property value="familyNameKana" escape="false" /></td>
			</tr>
			<tr>
				<th scope="row"><label>名ふりがな</label></th>
				<td><s:property value="firstNameKana" escape="false" /></td>
			</tr>
			<tr>
				<th scope="row"><label>住所</label></th>
				<td><s:property value="userAddress" escape="false" /></td>
			</tr>
			<tr>
				<th scope="row"><label>電話番号</label></th>
				<td><s:property value="telNumber" escape="false" /></td>
			</tr>
			<tr>
				<th scope="row"><label>メールアドレス</label></th>
				<td><s:property value="email" escape="false" /></td>
			</tr>
		</table>
		<s:form action="CreateDestinationCompleteAction">
			<div class="submit_btn_box2">
				<s:submit value="登録" class="submit_btn" />
			</div>
		</s:form>
		<s:form action="CreateDestinationAction">
			<div class="submit_btn_box2">
				<s:submit value="戻る" class="submit_btn" />
			</div>
		</s:form>
	</div>
</body>
</html>