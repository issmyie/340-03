<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add a Character — Character Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <style>
        /* your create form styles (from new-character-form.html) */
        * { margin:0; padding:0; box-sizing:border-box; }
        body { background-color:#f0e6ef; font-family:'Optima','Segoe UI',sans-serif; color:#4a3f5c; line-height:1.6; }
        /* ... include your CSS ... */
    </style>
</head>
<body>

    <!-- NAVIGATION -->
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
                    <li class="nav-item"><a class="nav-link" href="/characters"><i class="fas fa-home"></i>Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/characters/about"><i class="fas fa-info-circle"></i>About</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/characters/create"><i class="fas fa-plus-circle"></i>Add a Character</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- FORM HERO -->
    <section class="form-hero">
        <div class="container text-center">
            <h1 class="display-4 fw-bold"><i class="fas fa-plus-circle me-2"></i>Add a Character</h1>
            <p class="lead">Tell us about your favorite fictional hero, villain, or creature.</p>
        </div>
    </section>

    <!-- THE FORM -->
    <div class="container">
        <div class="form-card">
            <form action="/characters/create" method="post">
                <div class="row g-4">
                    <div class="col-md-6">
                        <label for="name" class="form-label">Character Name <span class="required-star">*</span></label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="e.g. Minty, Ryo" required />
                    </div>
                    <div class="col-md-6">
                        <label for="universe" class="form-label">Universe <span class="required-star">*</span></label>
                        <input type="text" class="form-control" id="universe" name="universe" placeholder="e.g. Kitty, Marvel" required />
                    </div>
                </div>
                <div class="row g-4 mt-2">
                    <div class="col-md-6">
                        <label for="power" class="form-label">Power / Role</label>
                        <input type="text" class="form-control" id="power" name="power" placeholder="e.g. Super strength, Healing" />
                    </div>
                    <div class="col-md-6">
                        <label for="age" class="form-label">Age</label>
                        <input type="number" class="form-control" id="age" name="age" placeholder="e.g. 25" />
                    </div>
                </div>
                <div class="mt-4">
                    <label for="activeDate" class="form-label">Active Date</label>
                    <input type="date" class="form-control" id="activeDate" name="activeDate" />
                </div>
                <div class="mt-4">
                    <label for="description" class="form-label">Short Description <span class="required-star">*</span></label>
                    <textarea class="form-control" id="description" name="description" rows="4" placeholder="Write a brief summary..." required></textarea>
                </div>
                <div class="mt-5 d-flex flex-wrap gap-3 justify-content-center">
                    <button type="submit" class="btn btn-submit"><i class="fas fa-save"></i> Add Character</button>
                    <button type="reset" class="btn btn-reset"><i class="fas fa-undo-alt"></i> Clear All</button>
                </div>
            </form>
        </div>
    </div>

    <!-- FOOTER -->
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