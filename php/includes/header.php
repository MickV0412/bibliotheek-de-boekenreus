<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>De Boekenreus</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<header class="site-header">
    <a href="/php/paginas/index.php" class="logo">De Boekenreus</a>

    <nav class="main-nav">
        <ul>
            <li><a href="/php/paginas/index.php">Home</a></li>
            <li><a href="/php/paginas/books.php">Books</a></li>
            <li><a href="/php/paginas/authors.php">Authors</a></li>
            <li><a href="/php/paginas/genres.php">Genres</a></li>
            <li><a href="/php/paginas/about.php">About us</a></li>
            <li><a href="/php/paginas/contact.php">Contact</a></li>
            <li><a href="/php/paginas/login.php">Login</a></li>
        </ul>
    </nav>

    <form action="/php/paginas/search.php" method="GET" class="search-form">
        <input type="text" name="q" placeholder="Search books, authors or genres...">
        <button type="submit">Search</button>
    </form>
</header>

<main>