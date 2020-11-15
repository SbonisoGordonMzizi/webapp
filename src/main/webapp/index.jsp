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
    <header class="header">
    <h1>Hello JAVA world</h1>
    </header>
    <main>
        <h1 style="color:#29295f;"> Just Your First Name and Last Name Will Do!!</h1>
        <form action="response.jsp" method="POST"> 
            <label for="fname">First name:</label><br>
            <input type="text" id="fname" name="fname"><br>
            <label for="lname">Last name:</label><br>
            <input type="text" id="lname" name="lname"><br><br>   
            <input type="submit" value="Submit">       
        </form>
    </main>
    <footer></footer>
</body>
</html>
