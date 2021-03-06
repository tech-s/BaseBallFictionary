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

<p>*の付いた項目は入力必須</p>
<br /><br />

<label for="chara_name">*対象の登場人物</label><br />
<select name="chara_name">
<c:forEach var="characters" items="${characters}" varStatus="status">
    <option value="${characters.chara_id}"<c:if test="${characters.chara_id == now_status.characters.chara_id}"> selected</c:if>>${characters.chara_name}</option>
</c:forEach>
</select>
<br /><br />

<label for="now_year">*対象の年度(半角数字)</label><br />
<input type="number" name="now_year" value="${now_status.now_year}" pattern=^[0-9]+$ list="year_list" /><br />
    <datalist id="year_list">
        <option value="${titles.year + titles.elapsed_year}">現在の作中年度</option>
    </datalist>
<br /><br />