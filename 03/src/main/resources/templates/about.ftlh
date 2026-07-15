<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About — Character Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <!-- Your custom CSS if any -->
    <link rel="stylesheet" href="/css/style.css" />
    <style>
        /* same styles as your about.html, keep them */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            background-color: #f0e6ef;
            font-family: 'Optima', 'Segoe UI', sans-serif;
            color: #4a3f5c;
            line-height: 1.6;
        }
        /* ... copy all your CSS from about.html ... */
    </style>
</head>
<body>

    <!-- ===== NAVIGATION ===== -->
    <nav class="navbar navbar-expand-lg navbar-custom sticky-top">
        <div class="container">
            <a class="navbar-brand fw-bold" href="/characters">
                <i class="fa-solid fa-mug-hot"></i> Character Gallery
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav"
                    aria-controls="mainNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="mainNav">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/characters"><i class="fas fa-home"></i>Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/characters/about"><i class="fas fa-info-circle"></i>About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/characters/create">
                            <i class="fas fa-plus-circle"></i>Add a Character
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- ===== HERO ===== -->
    <section class="about-hero">
        <div class="container text-center">
            <h1 class="display-4 fw-bold">
                <i class="fas fa-info-circle me-2"></i>About This Project
            </h1>
            <p class="lead">A fan-made gallery.</p>
        </div>
    </section>

    <!-- ===== MAIN CONTENT ===== -->
    <div class="container">
        <div class="row g-5 align-items-center mb-5">
            <div class="col-lg-6">
                <img src="/images/assignmentsnoopy.jpg" class="about-img" alt="Snoopy" />
            </div>
            <div class="col-lg-6">
                <div class="about-text">
                    <h3 class="fw-bold" style="color: #2d1f3a;">
                        <i class="fas fa-pen-fancy me-2" style="color: #f0a6ca;"></i>Why This Gallery?
                    </h3>
                    <p>The purpose of this gallery is to help you catch a glimpse of my beautiful cats, rob the bunny and bob the old guy.</p>
                </div>
            </div>
        </div>
        <!-- ... rest of your static content ... -->
    </div>

    <!-- ===== FOOTER ===== -->
    <footer class="footer">
        <div class="container text-center">
            <p class="mb-1">
                <i class="fas fa-mug-hot me-2"></i>
                Character Gallery &bull;
                <a href="/characters/about">About</a> &bull;
                <a href="/characters/create">Add a Character</a>
            </p>
            <small>CSC 340 Assignment!</small>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
            crossorigin="anonymous"></script>
</body>
</html>