<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Update Character — Character Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <style>
        /* reuse the same styles as create form, or customize */
        * { margin:0; padding:0; box-sizing:border-box; }
        body { background-color:#f0e6ef; font-family:'Optima','Segoe UI',sans-serif; color:#4a3f5c; line-height:1.6; }
        .form-hero { background: linear-gradient(135deg, #efc3e6 0%, #f0e6ef 50%, #b8bedd 100%); padding:3rem 0 2.5rem; border-radius:0 0 3.5rem 3.5rem; margin-bottom:3rem; box-shadow:0 8px 28px rgba(156,137,184,0.15); }
        .form-card { background:#fff; border-radius:2rem; padding:2.5rem 3rem; box-shadow:0 8px 32px rgba(156,137,184,0.08); border:1px solid #efc3e6; max-width:800px; margin:0 auto; }
        /* ... include all form styles ... */
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
                    <li class="nav-item"><a class="nav-link" href="/characters/create"><i class="fas fa-plus-circle"></i>Add a Character</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- HERO -->
    <section class="form-hero">
        <div class="container text-center">
            <h1 class="display-4 fw-bold"><i class="fas fa-edit me-2"></i>Update Character</h1>
            <p class="lead">Edit the details of ${character.name}</p>
        </div>
    </section>

    <!-- UPDATE FORM -->
    <div class="container">
        <div class="form-card">
            <form action="/characters/update" method="post">
                <!-- hidden ID -->
                <input type="hidden" name="characterId" value="${character.characterId}" />

                <div class="row g-4">
                    <div class="col-md-6">
                        <label for="name" class="form-label">Character Name <span class="required-star">*</span></label>
                        <input type="text" class="form-control" id="name" name="name" value="${character.name}" required />
                    </div>
                    <div class="col-md-6">
                        <label for="universe" class="form-label">Universe <span class="required-star">*</span></label>
                        <input type="text" class="form-control" id="universe" name="universe" value="${character.universe!''}" required />
                    </div>
                </div>
                <div class="row g-4 mt-2">
                    <div class="col-md-6">
                        <label for="power" class="form-label">Power / Role</label>
                        <input type="text" class="form-control" id="power" name="power" value="${character.power!''}" />
                    </div>
                    <div class="col-md-6">
                        <label for="age" class="form-label">Age</label>
                        <input type="number" class="form-control" id="age" name="age" value="${character.age}" />
                    </div>
                </div>
                <div class="mt-4">
                    <label for="activeDate" class="form-label">Active Date</label>
                    <input type="date" class="form-control" id="activeDate" name="activeDate" value="${character.activeDate!''}" />
                </div>
                <div class="mt-4">
                    <label for="description" class="form-label">Description <span class="required-star">*</span></label>
                    <textarea class="form-control" id="description" name="description" rows="4" required>${character.description!''}</textarea>
                </div>
                <div class="mt-5 d-flex flex-wrap gap-3 justify-content-center">
                    <button type="submit" class="btn btn-submit"><i class="fas fa-save"></i> Update Character</button>
                    <a href="/characters/${character.characterId?c}" class="btn btn-reset"><i class="fas fa-times"></i> Cancel</a>
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
