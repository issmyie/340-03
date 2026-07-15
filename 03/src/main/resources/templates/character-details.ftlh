<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>${character.name} — Character Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <style>
        /* your existing details styles */
        * { margin:0; padding:0; box-sizing:border-box; }
        body { background-color:#f1fffa; font-family:'Optima','Segoe UI',sans-serif; color:#464e47; line-height:1.6; }
        /* ... include all your details CSS ... */
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

    <!-- DETAILS HERO -->
    <section class="details-hero">
        <div class="container">
            <div class="breadcrumb-nav mb-2">
                <a href="/characters"><i class="fas fa-arrow-left me-1"></i>Back to Gallery</a>
                <span class="mx-2 text-muted">/</span>
                <span class="text-muted">${character.name}</span>
            </div>
            <h1 class="display-5 fw-bold">
                <i class="fas fa-paw me-2"></i>${character.name}
            </h1>
            <p class="lead mb-0" style="color: #464e47;">
                <i class="fas fa-globe me-1" style="color: #568259;"></i> ${character.universe!''}
                <span class="mx-2">•</span>
                <span class="badge-role">
                    <i class="fas fa-shield-alt me-1"></i>${character.power!''}
                </span>
            </p>
        </div>
    </section>

    <!-- MAIN CONTENT -->
    <div class="container">
        <div class="row g-4">
            <!-- Image column -->
            <div class="col-lg-6">
                <img src="/images/${character.name?lower_case}.jpeg" class="details-img" alt="${character.name}" onerror="this.src='/images/default.jpg'" />
                <div class="mt-3 text-center text-muted small">
                    <i class="fas fa-camera me-1"></i> ${character.name}
                </div>
            </div>
            <!-- Info card -->
            <div class="col-lg-6">
                <div class="info-card">
                    <div class="d-flex justify-content-between align-items-start">
                        <div>
                            <span class="detail-label">Full Name</span>
                            <div class="detail-value">${character.name}</div>
                        </div>
                        <span class="badge" style="background: #568259; color: #f1fffa; font-size: 0.85rem; padding: 0.4rem 1rem; border-radius: 50px;">
                            <i class="fas fa-bolt me-1"></i> Age: ${character.age}
                        </span>
                    </div>
                    <div class="divider"></div>
                    <div class="row g-3">
                        <div class="col-6">
                            <span class="detail-label"><i class="fas fa-tag me-1"></i>Universe</span>
                            <div class="detail-value">${character.universe!''}</div>
                        </div>
                        <div class="col-6">
                            <span class="detail-label"><i class="fas fa-calendar-alt me-1"></i>Active Date</span>
                            <div class="detail-value">${character.activeDate!''}</div>
                        </div>
                        <div class="col-6">
                            <span class="detail-label"><i class="fas fa-globe me-1"></i>Power</span>
                            <div class="detail-value">${character.power!''}</div>
                        </div>
                        <div class="col-6">
                            <span class="detail-label"><i class="fas fa-paw me-1"></i>Age</span>
                            <div class="detail-value">${character.age}</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Description -->
            <div class="col-12 mt-4">
                <h3 class="section-title"><i class="fas fa-book-open me-2" style="color: #568259;"></i>Description</h3>
                <div class="backstory-box">
                    <p>${character.description!''}</p>
                </div>
            </div>
            <!-- Action buttons -->
            <div class="col-12 mt-3 text-center">
                <a href="/characters/update/${character.characterId?c}" class="btn btn-warning me-2"><i class="fas fa-edit"></i> Update</a>
                <a href="/characters/delete/${character.characterId?c}" class="btn btn-danger" onclick="return confirm('Are you sure?')"><i class="fas fa-trash"></i> Delete</a>
                <a href="/characters" class="btn btn-secondary"><i class="fas fa-arrow-left"></i> Back to List</a>
            </div>
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