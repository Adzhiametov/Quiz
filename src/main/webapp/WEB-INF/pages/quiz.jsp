<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../resources/css/style.css" rel="stylesheet"/>
    <title>Insert title here</title>
</head>

<body>

 <c:forEach items="${entries}" var="entry">
    <tr>
        <td><c:out value="${entry.idpollQuiz}"/></td>
        <td><c:out value="${entry.choiceName}"/></td>

        <td><form:form method="GET" action="/vote/${entry.idpollQuiz}">
            <input type="submit" value="Vote"/>
        </form:form></td>
    </tr>
 </c:forEach>

<%--<div id="sizer">--%>
    <%--<form action="quote" method="POST" accept-charset="utf-8">--%>
        <%--<img src="logo.png" width="438" height="200"/>--%>
        <%--<fieldset class="radios">--%>
            <%--<label class="label_radio" for="radio-01"><input name="sample-radio" id="radio-01" value="1" type="radio"--%>
                                                             <%--checked/> Серверные инструменты для организации командной--%>
                <%--разработки (зачем нужны баг-трекер и CI).--%>
                <%--<div class="author">Филипп Торчинский, JetBrains</div>--%>
            <%--</label>--%>
            <%--<label class="label_radio" for="radio-02"><input name="sample-radio" id="radio-02" value="2" type="radio"/>--%>
                <%--Continuous Integration and Continuous Delivery.--%>
                <%--<div class="author">Барух Садугорский, JFrog</div>--%>
            <%--</label>--%>
            <%--<label class="label_radio" for="radio-03"><input name="sample-radio" id="radio-03" value="3" type="radio"/>--%>
                <%--IDEA для разработчиков (IntelliJ IDEA, YouTrack и TeamCity).--%>
                <%--<div class="author">Филипп Торчинский, JetBrains</div>--%>
            <%--</label>--%>
            <%--<label class="label_radio" for="radio-04"><input name="sample-radio" id="radio-04" value="4" type="radio"/>--%>
                <%--Зачем нужно функциональное программирование и что такое Scala.--%>
                <%--<div class="author">Павел Фатин, JetBrains</div>--%>
            <%--</label>--%>
        <%--</fieldset>--%>
        <%--<input id="button" type="submit" value="Проголосовать"/>--%>
    <%--</form>--%>
<%--</div>--%>

<%--<script>--%>
    <%--var d = document;--%>
    <%--var safari = (navigator.userAgent.toLowerCase().indexOf('safari') != -1) ? true : false;--%>
    <%--var gebtn = function (parEl, child) {--%>
        <%--return parEl.getElementsByTagName(child);--%>
    <%--};--%>
    <%--onload = function () {--%>

        <%--var body = gebtn(d, 'body')[0];--%>
        <%--body.className = body.className && body.className != '' ? body.className + ' has-js' : 'has-js';--%>

        <%--if (!d.getElementById || !d.createTextNode) return;--%>
        <%--var ls = gebtn(d, 'label');--%>
        <%--for (var i = 0; i < ls.length; i++) {--%>
            <%--var l = ls[i];--%>
            <%--if (l.className.indexOf('label_') == -1) continue;--%>
            <%--var inp = gebtn(l, 'input')[0];--%>
            <%--if (l.className == 'label_check') {--%>
                <%--l.className = (safari && inp.checked == true || inp.checked) ? 'label_check c_on' : 'label_check c_off';--%>
                <%--l.onclick = check_it;--%>
            <%--}--%>
            <%--;--%>
            <%--if (l.className == 'label_radio') {--%>
                <%--l.className = (safari && inp.checked == true || inp.checked) ? 'label_radio r_on' : 'label_radio r_off';--%>
                <%--l.onclick = turn_radio;--%>
            <%--}--%>
            <%--;--%>
        <%--}--%>
        <%--;--%>
    <%--};--%>
    <%--var check_it = function () {--%>
        <%--var inp = gebtn(this, 'input')[0];--%>
        <%--if (this.className == 'label_check c_off' || (!safari && inp.checked)) {--%>
            <%--this.className = 'label_check c_on';--%>
            <%--if (safari) inp.click();--%>
        <%--} else {--%>
            <%--this.className = 'label_check c_off';--%>
            <%--if (safari) inp.click();--%>
        <%--}--%>
        <%--;--%>
    <%--};--%>
    <%--var turn_radio = function () {--%>
        <%--var inp = gebtn(this, 'input')[0];--%>
        <%--if (this.className == 'label_radio r_off' || inp.checked) {--%>
            <%--var ls = gebtn(this.parentNode, 'label');--%>
            <%--for (var i = 0; i < ls.length; i++) {--%>
                <%--var l = ls[i];--%>
                <%--if (l.className.indexOf('label_radio') == -1)  continue;--%>
                <%--l.className = 'label_radio r_off';--%>
            <%--}--%>
            <%--;--%>
            <%--this.className = 'label_radio r_on';--%>
            <%--if (safari) inp.click();--%>
        <%--} else {--%>
            <%--this.className = 'label_radio r_off';--%>
            <%--if (safari) inp.click();--%>
        <%--}--%>
        <%--;--%>
    <%--};--%>
<%--</script>--%>
</body>
</html>