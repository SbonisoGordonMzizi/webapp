<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sgmzizi</title>
    <style>
        .header {
            padding: 5px;
            text-align: center;
            background: #29295f;
            color: white;
            font-size: 30px;
        }
        body {
           text-align: center;    
        }
        
    </style>
</head>
<body>
    <%
      String firstName = request.getParameter("fname");
      String lastName = request.getParameter("lname");
    %>
    <header class="header">
    <h1>Hello Java World</h1>
    <h6>Sboniso Gordon Mzizi</h6>
    </header>
    <main>
        <h1 style="color:#29295f;"> Just Your First Name and Last Name Will Do!!</h1>
        
            <h1>Hello <%=firstName %> <%= lastName %> !! </h1>
    </main>
    <footer>
        <a href="index.jsp">main page</a>
    </footer>
    
</body>
</html>
