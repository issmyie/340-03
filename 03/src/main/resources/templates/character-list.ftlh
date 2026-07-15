<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Character Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <style>
        /* same styles as your index.html, keep them */
        * { margin:0; padding:0; box-sizing:border-box; }
        body { background-color:#f0e6ef; font-family:'Optima','Segoe UI',sans-serif; color:#4a3f5c; line-height:1.6; }
        /* ... include all your index styles ... */
    </style>
</head>
<body>

    <!-- NAVIGATION (same as in about) -->
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
                        <a class="nav-link active" aria-current="page" href="/characters"><i class="fas fa-home"></i>Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/characters/about"><i class="fas fa-info-circle"></i>About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/characters/create"><i class="fas fa-plus-circle"></i>Add a Character</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- HERO with search and category filters -->
    <section class="hero">
        <div class="container text-center">
            <h1 class="display-4 fw-bold">Fictional Character Gallery</h1>
            <p class="lead">Explore The Best Characters</p>

            <!-- Search form (Extra Credit) -->
            <div class="search-wrapper mt-4">
                <form class="d-flex" action="/characters/search" method="get">
                    <input class="form-control" type="search" name="name" placeholder="Search by name…" aria-label="Search" />
                    <button class="btn" type="submit"><i class="fas fa-search me-1"></i>Search</button>
                </form>
            </div>

            <!-- Category filter links (Extra Credit) -->
            <div class="mt-3">
                <a href="/characters/category?category=universe&value=Marvel" class="btn btn-outline-secondary btn-sm m-1">Marvel</a>
                <a href="/characters/category?category=universe&value=DC" class="btn btn-outline-secondary btn-sm m-1">DC</a>
                <a href="/characters/category?category=power&value=Super Strength" class="btn btn-outline-secondary btn-sm m-1">Super Strength</a>
                <!-- add more as needed -->
            </div>
        </div>
    </section>

    <!-- CHARACTER GRID -->
    <div class="container">
        <div class="row g-4">
            <#list characterList as character>
                <div class="col-sm-6 col-lg-4 col-xl-3">
                    <div class="card character-card">
                        <!-- If you have an image URL field, use it; else placeholder -->
                        <img src="/images/${character.name?lower_case}.jpeg" class="card-img-top" alt="${character.name}" onerror="this.src='/images/default.jpg'" />
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title">${character.name}</h5>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="card-subtitle"><i class="fas fa-globe me-1"></i>${character.universe!''}</span>
                                <span class="badge-role"><i class="fas fa-shield-alt me-1"></i>${character.power!''}</span>
                            </div>
                            <p class="card-text">${character.description!''}</p>
                            <div class="mt-auto pt-2 d-flex justify-content-between align-items-center">
                                <span class="power-badge"><i class="fas fa-bolt me-1"></i>Age: ${character.age}</span>
                                <a href="/characters/${character.characterId?c}" class="btn btn-details">View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
        <div class="text-center mt-4">
            <a href="/characters/create" class="btn btn-primary"><i class="fas fa-plus"></i> Create New Character</a>
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