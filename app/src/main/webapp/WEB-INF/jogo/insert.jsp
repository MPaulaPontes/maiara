<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Inserir Jogo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

</head>
<body>
    <h1>Inserir Jogo</h1>
    <form action="/jogo/insert" method="post">
        <div class = "form-group"></div>
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" class="form-control"/>
    </div>
    <div class="form-group">

           
        <label for="categoria">Categoria:</label>
        <select name="categoria" class="form-select">
            <c:forEach var="categoria" items="${categorias}">
                <option value="${categoria.id}">${categoria.nome}</option>
            </c:forEach>
        </select>
</div>

<div class="form-group">

        <label for="plataforma">Plataformas:</label><br>
        <c:forEach var="plataforma" items="${plataformas}">
            <div class="custom-control custom-checkbox">
            <input type="checkbox" id="plataforma${plataforma.id}" name="plataformas" value="${plataforma.id}">
            <label for="plataforma${plataforma.id}">${plataforma.nome}</label><br>
        </div>
        </c:forEach><br>
        
        <button type="submit">Inserir</button>
        <a href="/jogos/list">Cancelar</a>
    </form>
</body>
</html>