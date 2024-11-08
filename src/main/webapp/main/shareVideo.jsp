<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Share Video</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h3>Share Video</h3>
    <form action="share" method="post">
        <div class="mb-3">
            <label for="email" class="form-label">Enter Email to Share</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="example@example.com" required>
        </div>
        <button type="submit" class="btn btn-primary">Share</button>
    </form>
</div>
</body>
</html>
