<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Deletar Plataforma</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

</head>
<body>
    <h1>Deletar Plataforma</h1>
    <p>Tem certeza que deseja deletar a plataforma com ID ${plataforma.nome}?</p>
    <form action="/plataforma/delete" method="post">
        <input type="hidden" name="id" value="${plataforma.id}">
        <button type="submit">Sim, Deletar</button>
        <a href="/plataforma/list">Cancelar</a>
    </form>
</body>
</html>