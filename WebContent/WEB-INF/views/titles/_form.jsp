<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="title_name">作品名</label><br />
<input type="text" name="title_name" value="${titles.title_name}" />
<br /><br />

<label for="user_name">作者名</label><br />
<c:out value="${sessionScope.login_user.user_name}" />
<br /><br />

<label for="title_url">URL</label><br />
<input type="url" name="title_url" value="${titles.title_url}" />
<br /><br />

<label for="title_count">話数(半角数字)</label><br />
<input type="number" name="title_count" value="${titles.title_count}" pattern=^[0-9]+$ />
<br /><br />

<label for="year">開始時点での作中年度(年数のみ、半角数字)</label><br />
<label for="year">※これと↓の「経過年数」と登場人物の「誕生年度」から、登場人物の年齢を算出します。</label><br />
<input type="number" name="year" value="${titles.year}" pattern=^[0-9]+$ />
<br /><br />

<label for="elapsed_year">開始時点からの作中での経過年数(半角数字)(例:1年目なら「0」)</label><br />
<input type="number" name="elapsed_year" value="${titles.elapsed_year}" pattern=^[0-9]+$ />
<br /><br />

<label for="title_information">作品紹介</label><br />
<textarea name="title_information" rows="10" cols="50">${titles.title_information}</textarea>
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">登録</button>