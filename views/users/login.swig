<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Administrator Login</title>
        <link rel="stylesheet" href="/styles/login.css" />
    </head>
    <body>    
        <div class="login-card">
            <h1>Log-in</h1>
            <form method="post" action="/login">
                <span id="error">{{ error | default('') }}</span>
                <input type="text" name="email" placeholder="Email" />
                <input type="password" name="password" placeholder="Password" />
                <input type="submit" name="login" class="login login-submit" value="login" />
            </form>
            <div class="login-help">
                <a href="/">Back to Homepage</a>
            </div>
        </div>
    </body>
</html>