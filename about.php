<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Welcome to iDiscuss - Coding Forums</title>
</head>

<body>
    <?php include 'partials/_dbconnect.php'; ?>
    <?php include 'partials/_header.php'; ?>

     <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">About Us - iDiscuss</h1>
            <p class="lead">
                Welcome to iDiscuss — we believe that every developer—whether you're writing your first line
                of code or deploying production systems—deserves fast, reliable answers and a welcoming community to
                grow in. We're more than just a Q&A site. We're a community-driven platform built for sharing knowledge,
                solving real-world coding problems, and helping each other succeed. Whether you’re stuck with a tricky
                bug, looking for code optimization tips, or eager to help others, DevQuery is your space.
            </p>
        </div>
    </div>

    <div class="container mb-5">
        <div class="accordion" id="aboutAccordion">

            <!-- Our Mission -->
            <div class="card">
                <div class="card-header" id="headingMission">
                    <h2 class="mb-0">
                        <button class="btn btn-link text-left w-100" type="button" data-toggle="collapse"
                            data-target="#collapseMission" aria-expanded="true" aria-controls="collapseMission">
                            Our Mission
                        </button>
                    </h2>
                </div>
                <div id="collapseMission" class="collapse show" aria-labelledby="headingMission"
                    data-parent="#aboutAccordion">
                    <div class="card-body">
                        "To create a collaborative, inclusive, and transparent platform where developers and tech
                        enthusiasts can learn, teach, and grow—together."
                    </div>
                </div>
            </div>

            <!-- Why We Exist -->
            <div class="card">
                <div class="card-header" id="headingWhy">
                    <h2 class="mb-0">
                        <button class="btn btn-link text-left w-100 collapsed" type="button" data-toggle="collapse"
                            data-target="#collapseWhy" aria-expanded="false" aria-controls="collapseWhy">
                            Why We Exist
                        </button>
                    </h2>
                </div>
                <div id="collapseWhy" class="collapse" aria-labelledby="headingWhy" data-parent="#aboutAccordion">
                    <div class="card-body">
                        <p><strong>Most tech forums are cluttered, intimidating, or slow to respond. We wanted something better:</strong></p>
                        <ul>
                            <li>Questions get thoughtful and respectful answers.</li>
                            <li>Beginners feel safe to ask without judgment.</li>
                            <li>Experts are recognized and rewarded.</li>
                            <li>High-quality discussions are promoted, not lost.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- How DevQuery Works -->
            <div class="card">
                <div class="card-header" id="headingHow">
                    <h2 class="mb-0">
                        <button class="btn btn-link text-left w-100 collapsed" type="button" data-toggle="collapse"
                            data-target="#collapseHow" aria-expanded="false" aria-controls="collapseHow">
                            How DevQuery Works
                        </button>
                    </h2>
                </div>
                <div id="collapseHow" class="collapse" aria-labelledby="headingHow" data-parent="#aboutAccordion">
                    <div class="card-body">
                        <ul>
                            <li><strong>Ask Clearly:</strong> Post programming, dev, or software questions.</li>
                            <li><strong>Earn Reputation:</strong> Gain votes, badges, and credibility.</li>
                            <li><strong>Answer Generously:</strong> Share knowledge to help others grow.</li>
                            <li><strong>Build Community:</strong> Follow topics, connect, and evolve together.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Our Values -->
            <div class="card">
                <div class="card-header" id="headingValues">
                    <h2 class="mb-0">
                        <button class="btn btn-link text-left w-100 collapsed" type="button" data-toggle="collapse"
                            data-target="#collapseValues" aria-expanded="false" aria-controls="collapseValues">
                            Our Values
                        </button>
                    </h2>
                </div>
                <div id="collapseValues" class="collapse" aria-labelledby="headingValues" data-parent="#aboutAccordion">
                    <div class="card-body">
                        <ul>
                            <li><strong>Openness:</strong> No question is “too basic.” Every voice matters.</li>
                            <li><strong>Quality:</strong> We promote detailed and thoughtful answers.</li>
                            <li><strong>Integrity:</strong> We combat plagiarism, spam, and misinformation.</li>
                            <li><strong>Support:</strong> Everyone is welcome—students, professionals, and lifelong learners.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Our Vision -->
            <div class="card">
                <div class="card-header" id="headingVision">
                    <h2 class="mb-0">
                        <button class="btn btn-link text-left w-100 collapsed" type="button" data-toggle="collapse"
                            data-target="#collapseVision" aria-expanded="false" aria-controls="collapseVision">
                            Our Vision
                        </button>
                    </h2>
                </div>
                <div id="collapseVision" class="collapse" aria-labelledby="headingVision" data-parent="#aboutAccordion">
                    <div class="card-body">
                        We aim to become the most trusted, community-first Q&A platform for developers around the globe.
                        We're constantly improving—enhancing features, listening to feedback, and putting users first.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php include 'partials/_footer.php'; ?>

    <!-- Bootstrap JS + dependencies -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>
</body>

</html>
