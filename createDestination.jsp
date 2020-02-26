<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<title>宛先登録画面</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="main">
		<div id="top">
			<h1>宛先情報入力画面</h1>
		</div>
		<s:if
			test="familyNameErrorMessageList !=null && familyNameErrorMessageList.size() > 0">
			<div class="error">
				<div class="error_message">
					<s:property value="familyNameErrorMessageList" escape="false" />
				</div>
			</div>
		</s:if>
		<s:if
			test="firstNameErrorMessageList !=null && firstNameErrorMessageList.size() > 0">
			<div class="error">
				<div class="error_message">
					<s:property value="firstNameErrorMessageList" escape="false" />
				</div>
			</div>
		</s:if>
		<s:if
			test="familyNameKanaErrorMessageList !=null && familyNameKanaErrorMessageList.size() > 0">
			<div class="error">
				<div class="error_message">
					<s:property value="familyNameKanaErrorMessageList" escape="false" />
				</div>
			</div>
		</s:if>
		<s:if
			test="firstNameKanaErrorMessageList !=null && firstNameKanaErrorMessageList.size() > 0">
			<div class="error">
				<div class="error_message">
					<s:property value="firstNameKanaErrorMessageList" escape="false" />
				</div>
			</div>
		</s:if>
		<s:if
			test="userAddressErrorMessageList !=null && userAddressErrorMessageList.size() > 0">
			<div class="error">
				<div class="error_message">
					<s:property value="userAddressErrorMessageList" escape="false" />
				</div>
			</div>
		</s:if>
		<s:if
			test="telNumberErrorMessageList !=null && telNumberErrorMessageList.size() > 0">
			<div class="error">
				<div class="error_message">
					<s:property value="telNumberErrorMessageList" escape="false" />
				</div>
			</div>
		</s:if>
		<s:if
			test="emailErrorMessageList !=null && emailErrorMessageList.size() > 0">
			<div class="error">
				<div class="error_message">
					<s:property value="emailErrorMessageList" escape="false" />
				</div>
			</div>
		</s:if>
		<s:form action="CreateDestinationConfirmAction">
			<table class="table">
				<tr>
					<th scope="row"><label>姓</label></th>
					<td><s:textfield name="familyName"
							value="%{#session.familyName}" placeholder="姓" class="txt" /></td>
				</tr>
				<tr>
					<th scope="row"><label>名</label></th>
					<td><s:textfield name="firstName"
							value="%{#session.firstName}" placeholder="名" class="txt" /></td>
				</tr>
				<tr>
					<th scope="row"><label>姓ふりがな</label></th>
					<td><s:textfield name="familyNameKana"
							value="%{#session.familyNameKana}" placeholder="姓ふりがな"
							class="txt" /></td>
				</tr>
				<tr>
					<th scope="row"><label>名ふりがな</label></th>
					<td><s:textfield name="firstNameKana"
							value="%{#session.firstNameKana}" placeholder="姓ふりがな" class="txt" /></td>
				</tr>
				<tr>
					<th scope="row"><label>住所</label></th>
					<td><s:textfield name="userAddress"
							value="%{#session.userAddress}" placeholder="住所" class="txt" /></td>
				</tr>
				<tr>
					<th scope="row"><label>電話番号</label></th>
					<td><s:textfield name="telNumber"
							value="%{#session.telNumber}" placeholder="電話番号" class="txt" /></td>
				</tr>
				<tr>
					<th scope="row"><label>メールアドレス</label></th>
					<td><s:textfield name="email" value="%{#session.email}"
							placeholder="メールアドレス" class="txt" /></td>
				</tr>
			</table>
			<div class="submit_btn_box2">
				<s:submit value="確認" class="submit_btn" />
			</div>
		</s:form>
	</div>
</body>
</html>