<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<div class="panel panel-primary">

    <div class="panel-heading">
        <span class="glyphicon glyphicon-list-alt"></span>
        <strong>BRAND</strong>
    </div>
    <div class="list-group">
        <c:forEach var="s" items="${supps}">
	        <a href="product/list-by-supplier/${s.id}.php" class="list-group-item">${s.companyName}</a>
	    </c:forEach>
    </div>
</div>