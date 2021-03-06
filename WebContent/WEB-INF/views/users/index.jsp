<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>

        <c:choose>
            <c:when test="${sessionScope.login_user.user_flag == 0}">
                <h2>ユーザ　一覧</h2>
                <table id="user_list">
                    <tbody>
                        <tr>
                            <th>ユーザ名</th>
                            <th>ユーザタイプ</th>
                            <th>操作</th>
                        </tr>
                        <c:forEach var="users" items="${users}" varStatus="status">
                            <tr class="row${status.count % 2}">
                                <td class="title_name">
                                    <a href="<c:url value='/users/show?id=${users.user_id}' />">
                                        <c:out value="${users.user_name}" />
                                    </a>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${users.user_flag == 0}">管理者</c:when>
                                        <c:when test="${users.user_flag == 1}">ユーザ</c:when>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${users.delete_flag == 1}">
                                            （削除済み）
                                        </c:when>
                                        <c:otherwise>
                                            <a href="<c:url value='/users/show?id=${users.user_id}' />">詳細を表示</a>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div id="pagination">
                    （全 ${users_count} 件）<br />
                    <c:forEach var="i" begin="1" end="${((users_count - 1) / 15) + 1}" step="1">
                        <c:choose>
                            <c:when test="${i == page}">
                                <c:out value="${i}" />&nbsp;
                            </c:when>
                            <c:otherwise>
                                <a href="<c:url value='/users/index?page=${i}' />"><c:out value="${i}" /></a>&nbsp;
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>
                <p><a href="<c:url value='/users/new' />">新規ユーザの登録</a></p>
            </c:when>

            <c:otherwise>
                <h2>ユーザの閲覧や編集をする権限がありません。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>
