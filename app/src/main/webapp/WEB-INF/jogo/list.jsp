<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Jogos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1>Jogos</h1>
        <a href="/jogo/insert" class="btn btn-primary">Novo Jogo</a>
        
        <table class="table">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Título</th>
                    <th>Categoria</th>
                    <th>Plataformas</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="jogo" items="${jogos}">
                    <tr>
                        <td>${jogo.id}</td>
                        <td>${jogo.titulo}</td>
                        <td>${jogo.categoria.nome}</td> <!-- Exibe o nome da categoria -->
                        <td>
                            <c:forEach var="p" varStatus="s" items="${item.plataformas}">
                                ${s.getCount() >1 ? ", " : ""}
                                ${p.nome}
                            </c:forEach>
                        </td>
                        <td>
                            <a href="/jogo/update?id=${jogo.id}" class="btn btn-info">Editar</a>
                            <a href="/jogo/delete?id=${jogo.id}" class="btn btn-danger">Remover</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
</body>
</html>