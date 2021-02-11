<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${users != null}">
                <h2>${users.user_name} のユーザ情報　詳細ページ</h2>

                <table>
                    <tbody>
                        <tr>
                            <th>ユーザID</th>
                            <td><c:out value="${users.user_id}" /></td>
                        </tr>
                        <tr>
                            <th>ユーザ名</th>
                            <td><c:out value="${users.user_name}" /></td>
                        </tr>
                        <tr>
                            <th>ユーザタイプ</th>
                            <td>
                                <c:choose>
                                    <c:when test="${users.admin_flag == 0}">管理者</c:when>
                                    <c:when test="${users.admin_flag == 1}">作者</c:when>
                                    <c:when test="${users.admin_flag == 2}">読者</c:when>
                                </c:choose>
                            </td>
                        </tr>
                        <tr>
                            <th>登録日時</th>
                            <td>
                                <fmt:formatDate value="${users.created_at}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                        </tr>
                        <tr>
                            <th>更新日時</th>
                            <td>
                                <fmt:formatDate value="${users.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                        </tr>
                    </tbody>
                </table>

                <p><a href="<c:url value='/users/edit?id=${users.user_id}' />">このユーザ情報を編集する</a></p>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>

        <p><a href="<c:url value='/users/index' />">一覧に戻る</a></p>
    </c:param>
</c:import>