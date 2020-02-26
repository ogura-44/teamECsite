<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<title>マイページ</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="main">
		<div id="top">
			<h1>マイページ画面</h1>
		</div>
		<s:if test="userinfodto != null">
			<s:form action="PurchaseHistoryAction">
				<table class="horizontal_table">
					<tr>
						<th scope="row"><label>姓</label></th>
						<td><s:property value="userinfodto.familyName" /></td>
					</tr>

					<tr>
						<th scope="row"><label>名</label></th>
						<td><s:property value="userinfodto.firstName" /></td>
					</tr>

					<tr>
						<th scope="row"><label>ふりがな</label></th>
						<td><s:property value="userinfodto.familyNameKana" /><span>
						</span> <s:property value="userinfodto.firstNameKana" /></td>
					</tr>
					<tr>
						<th scope="row"><label>性別</label></th>
						<td><s:if test="userinfodto.sex==1">女性</s:if> <s:else>男性</s:else></td>
					</tr>
					<tr>
						<th scope="row"><label>メールアドレス</label></th>
						<td><s:property value="userinfodto.email" /></td>
					</tr>
				</table>
				<div class="submit_btn_box2">
					<s:submit value="購入履歴" class="submit_btn" />
				</div>
			</s:form>
		</s:if>
		<s:else>
			<div class="info">ユーザー情報はありません。</div>
		</s:else>
	</div>
</body>
</html>