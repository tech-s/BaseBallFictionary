<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${characters != null}">
                <h2>球団情報　編集</h2>
                <form method="POST" action="<c:url value='/characters/update' />">
                    <c:import url="_form.jsp" />
                </form>

                <p><a href="#" onclick="confirmDestroy();">この人物情報と、この人物に紐づく詳細情報を削除する</a></p>
                <form method="POST" action="${pageContext.request.contextPath}/characters/destroy">
                    <input type="hidden" name="_token" value="${_token}" />
                </form>
                <script>
                function confirmDestroy() {
                    if(confirm("本当に削除してよろしいですか？")) {
                        document.forms[1].submit();
                    }
                }
                </script>

            </c:when>

            <c:otherwise>
                <h2>お探しの球団情報は見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>

        <p><a href="<c:url value="/characters/index?id=${characters.titles.title_id}" />">一覧に戻る</a></p>
    </c:param>
</c:import>