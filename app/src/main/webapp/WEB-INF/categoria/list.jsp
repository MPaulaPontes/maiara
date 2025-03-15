<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Categoriais</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>Categorias</h1>
            <a href="/categoria/insert" class="btn btn-primary" >Nova Categoria</a>
            
            <table class="table">
                
                    <tr>
                        <th>Id</th>
                        <th>Nome</th>
                        <th>&nbsp;</th>
                    </tr>
                
                <c:forEach var="c" items="${categorias}">
                        <tr>
                            <td>${c.id}</td>
                            <td>${c.nome}</td>
                            <td>
                                <a href="/categoria/update?id=${c.id}" class="btn btn-info">Editar</a>
                                <a href="/categoria/delete?id=${c.id}" class="btn btn-danger">Remover</a>
                            </td>
                        </tr>
                    </c:forEach>
                
            </table>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    </body>
</html>