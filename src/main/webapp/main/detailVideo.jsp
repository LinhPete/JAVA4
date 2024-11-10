<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Video</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- Bootstrap JavaScript Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-4">
    <!-- Video Section -->
    <div class="row">
        <div class="col-md-8">
            <div class="ratio ratio-16x9">
                <iframe src="https://www.youtube.com/embed/example" title="Video Title" allowfullscreen></iframe>
            </div>
            <h3 class="mt-3">Video Title</h3>
            <p>Video Description goes here...</p>

            <!-- Action Buttons -->
            <div class="d-flex gap-3">
                <button type="button" class="btn btn-primary">
                    <i class="bi bi-hand-thumbs-up"></i> Like
                </button>
                <button type="button" class="btn btn-secondary">
                    <i class="bi bi-share"></i> Share
                </button>
            </div>
        </div>

        <!-- Related Videos -->
        <div class="col-md-4">
            <h5>Related Videos</h5>
            <ul class="list-group">
                <li class="list-group-item">Video 1</li>
                <li class="list-group-item">Video 2</li>
                <li class="list-group-item">Video 3</li>
            </ul>
        </div>
    </div>

    <!-- Comments Section -->
    <div class="mt-4">
        <h5>Comments</h5>
        <form class="mb-3">
            <div class="mb-3">
                <textarea class="form-control" placeholder="Add a comment..." rows="3"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

        <!-- List of Comments -->
        <div class="list-group">
            <div class="list-group-item">
                <strong>User 1</strong>
                <p>This is a comment.</p>
            </div>
            <div class="list-group-item">
                <strong>User 2</strong>
                <p>Another comment here.</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
