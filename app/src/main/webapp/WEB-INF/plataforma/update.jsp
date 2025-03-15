<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Atualizar Plataforma</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

</head>
<body>
    <h1>Atualizar Plataforma</h1>
    <form action="/plataforma/update" method="post">
        <input type="hidden" name="id" value="${plataforma.id}">
        
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="${plataforma.nome}"><br><br>
        
       
        
        <button type="submit">Atualizar</button>
        <a href="/plataformas">Cancelar</a>
    </form>
</body>
</html>