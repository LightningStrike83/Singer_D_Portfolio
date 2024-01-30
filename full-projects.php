<!-- Note To Professor Haaf:
Please see the bottom of this page for my thought process -->

<!DOCTYPE html>
<html lang="en">
<?php 

require_once('connect.php');

$query = 'SELECT projects.id AS proID, title, portfolio_image, category_id, category, category.id, folder FROM projects, category WHERE projects.category_id = category.id AND category_id = :categoryId';

$stmt = $connection->prepare($query);
$categoryId = $_GET['cat'];
$stmt->bindParam(':categoryId', $categoryId, PDO::PARAM_INT);
$stmt->execute();

$query2 = 'SELECT category, id FROM category WHERE id = :categoryId2';
$stmt2 = $connection->prepare($query2);
$categoryId2 = $_GET['cat'];
$stmt2->bindParam(':categoryId2', $categoryId2, PDO::PARAM_INT);
$stmt2->execute();
$title = $stmt2->fetch(PDO::FETCH_ASSOC);
$heading = $title['category'];
    
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Full Projects- Delilah Singer</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/main.css">
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/gsap.min.js"></script>
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/Flip.min.js"></script>
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"></script>
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollToPlugin.min.js"></script>
    <script defer src="js/full-projects.js"></script>
    <script defer src="js/main.js"></script>
</head>
<body>
    <h1 class="hidden">Full Projects</h1>
    <header class="full-width-grid-con">
        <nav class="grid-con top-nav">
            <a class="col-span-1 m-col-span-2 l-col-span-1 header-logo" href="index.html"><svg data-name="Layer 2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 105.47 66.24">
                <defs>
                  <style>
                    .cls-1-h {
                      fill: #231f20;
                      stroke-width: 0px;
                    }
                  </style>
                </defs>
                <g id="Layer_1-2" data-name="Layer 1">
                  <path class="cls-1-h" d="m67.18,16.42c0,4.29-1.49,8.82-4.46,13.61-3.94,6.3-9.66,11.19-17.16,14.66-6.91,3.19-14.34,4.78-22.29,4.78h-11.6L24.4,13.39h12.69l-10.79,30.45c4.62,0,9.19-1.42,13.73-4.25s7.85-6.34,9.93-10.51c1.88-3.68,2.81-6.75,2.81-9.21,0-4.03-1.12-6.93-3.38-8.68-2.02-1.55-5.11-2.32-9.28-2.32H6.11L11.53,0h34.03c5.88,0,10.78,1.24,14.7,3.73,4.62,2.93,6.93,7.16,6.93,12.69Z"/>
                  <path class="cls-1-h" d="m11.01,28.7l-5.01-10.45,10.45-5.01"/>
                  <path class="cls-1-h" d="m5.01,49.36L0,38.91l10.45-5.01"/>
                  <path class="cls-1-h" d="m57.79,49.76h-8.51c-2.14,0-4,.37-5.59,1.12-2.06.97-3.09,2.42-3.09,4.33,0,2.16,1.42,3.85,4.27,5.07,2.2.94,4.55,1.4,7.05,1.4,3.17,0,5.82-.7,7.94-2.09,2.46-1.6,3.7-3.91,3.7-6.91,0-2.06-.78-5.02-2.35-8.88-1.57-3.86,9.94-6.69,11.65-2.38,1.71,4.32,2.56,7.7,2.56,10.14,0,5.23-2.89,9.16-8.68,11.78-4.32,1.93-9.37,2.89-15.16,2.89-5.29,0-9.98-.74-14.07-2.21-5.75-2.06-8.62-5.23-8.62-9.51,0-6.23,5.3-9.34,15.9-9.34l13.01,4.58Z"/>
                  <path class="cls-1-h" d="m76.56,36.16h8.51c2.14,0,4-.37,5.59-1.12,2.06-.97,3.09-2.42,3.09-4.33,0-2.16-1.42-3.85-4.27-5.07-2.2-.94-4.55-1.4-7.05-1.4-3.17,0-5.82.7-7.94,2.09-2.46,1.6-3.7,3.91-3.7,6.91,0,2.06.78,5.02,2.35,8.88,1.57,3.86-9.94,6.69-11.65,2.38-1.71-4.32-2.56-7.7-2.56-10.14,0-5.23,2.89-9.16,8.68-11.78,4.32-1.93,9.37-2.89,15.16-2.89,5.29,0,9.98.74,14.07,2.21,5.75,2.06,8.62,5.23,8.62,9.51,0,6.23-5.3,9.34-15.9,9.34l-13.01-4.58Z"/>
                </g>
              </svg></a>

            <img class="col-start-4 col-end-5 m-col-start-12 m-col-end-13 hamburger" src="images/ham_menu.svg" alt="Hamburger Menu">

            <div class="col-start-4 col-end-5 m-col-start-12 m-col-end-13 l-col-span-9 navigation">
                <ul>
                    <li><a href="portfolio.php">Portfolio</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="resume.html">Resume</a></li>
                    <li><a href="demos-home.html">Demos</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>

            <div class="col-start-4 col-end-5 m-col-start-11 m-col-end-13 l-col-start-12 l-col-end-13 social-media-header">
                <a class="github" href="https://github.com/LightningStrike83"><svg  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 98 98"><path class="github" fill-rule="evenodd" clip-rule="evenodd" d="M48.854 0C21.839 0 0 22 0 49.217c0 21.756 13.993 40.172 33.405 46.69 2.427.49 3.316-1.059 3.316-2.362 0-1.141-.08-5.052-.08-9.127-13.59 2.934-16.42-5.867-16.42-5.867-2.184-5.704-5.42-7.17-5.42-7.17-4.448-3.015.324-3.015.324-3.015 4.934.326 7.523 5.052 7.523 5.052 4.367 7.496 11.404 5.378 14.235 4.074.404-3.178 1.699-5.378 3.074-6.6-10.839-1.141-22.243-5.378-22.243-24.283 0-5.378 1.94-9.778 5.014-13.2-.485-1.222-2.184-6.275.486-13.038 0 0 4.125-1.304 13.426 5.052a46.97 46.97 0 0 1 12.214-1.63c4.125 0 8.33.571 12.213 1.63 9.302-6.356 13.427-5.052 13.427-5.052 2.67 6.763.97 11.816.485 13.038 3.155 3.422 5.015 7.822 5.015 13.2 0 18.905-11.404 23.06-22.324 24.283 1.78 1.548 3.316 4.481 3.316 9.126 0 6.6-.08 11.897-.08 13.526 0 1.304.89 2.853 3.316 2.364 19.412-6.52 33.405-24.935 33.405-46.691C97.707 22 75.788 0 48.854 0z" fill="#24292f"/></svg></a>
                <a href="https://www.linkedin.com/in/delilah-singer-64b98028b/"><svg class="linkedin" height="72" viewBox="0 0 72 72" width="72" xmlns="http://www.w3.org/2000/svg"><g fill="none" fill-rule="evenodd"><path class="out" d="M36,72 L36,72 C55.882251,72 72,55.882251 72,36 L72,36 C72,16.117749 55.882251,-3.65231026e-15 36,0 L36,0 C16.117749,3.65231026e-15 -2.4348735e-15,16.117749 0,36 L0,36 C2.4348735e-15,55.882251 16.117749,72 36,72 Z" fill="#007EBB"/><path class="in" d="M59,57 L49.959375,57 L49.959375,41.6017895 C49.959375,37.3800228 48.3552083,35.0207581 45.0136719,35.0207581 C41.3785156,35.0207581 39.4792969,37.4759395 39.4792969,41.6017895 L39.4792969,57 L30.7666667,57 L30.7666667,27.6666667 L39.4792969,27.6666667 L39.4792969,31.6178624 C39.4792969,31.6178624 42.0989583,26.7704897 48.3236979,26.7704897 C54.5455729,26.7704897 59,30.5699366 59,38.4279486 L59,57 Z M20.372526,23.8257036 C17.4048177,23.8257036 15,21.4020172 15,18.4128518 C15,15.4236864 17.4048177,13 20.372526,13 C23.3402344,13 25.7436198,15.4236864 25.7436198,18.4128518 C25.7436198,21.4020172 23.3402344,23.8257036 20.372526,23.8257036 Z M15.8736979,57 L24.958724,57 L24.958724,27.6666667 L15.8736979,27.6666667 L15.8736979,57 Z" fill="#FFF"/></g></svg></a>
            </div>
        </nav>
    </header>

    <section id="front-end" class="grid-con port-section">
      <div class="col-span-full portfolio-pieces">
        <?php
                echo '<h3>'.$title.'</h3>';
        ?>

        <div class="project-container">

            <?php
                while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    echo '<a class="'.$row['folder'].'-thumbnail" href="project-details.php?id='.$row['id'].'"><div class="code-project"><img src="images/project_images/'.$row['folder'].'/'.$row['portfolio_image'].'" alt="'.$row['title'].'"><p class="project-title-front">'.$row['title'].'</p></div></a>';
                }

            ?>

        </div>
        <div class="port-more">
          <a id="to-top" href="#front-end">&#x2191; To Top</a>
        </div>
      </div>
    </section>

    <footer class="full-width-grid-con">
        <p class="copyright">© Delilah Singer</p>
    </footer>
</body>
</html>

<!-- Note to Professor Haaf:
This is my attempt at converting one of my html pages into a php page and I just wanted to review what I was attempting to do. I realize I may not have mastered it yet, but I wanted to make an attempt!

1. This page dynamically changes based on what category of project is selected. Front-End, Video, etc. and displays all content from that category

2. The main elements I'm pulling from the database are the h3 title, the image paths, and the project names

3. With the explanations below, I realize I might be missing and/or overthinking a few hookups to make it work. If I am, I apologize ^^; I'm just trying to work through a process based on what I know currently so it definitely is rocky with a few snags.

4. This is why I chose the elements for $query up top:
    -category from the projects table so the page knows what type of project it is and to display it as the H3

    -I believe I need a link for category_id in projects table and category_id in the category table so that way there's a dynamic link. What I want to say is: "The link on the previous page is calling upon category_id from projects_table, so here's the dynamic link to the category table so you can display the type of project as an h3" Admittedly I do feel like I'm missing something or overthinking this but this is the attempt~

    -title from projects table so the page can pull and display the project name

    -image_path from images table so the page can pull the image source

    -image_id and page_id are brought in as well because without them, the database won't discriminate images on their project id. Something that may only be on a details page will get populated here too. So this linking table is meant to create that discrimination. So it's essentially checking for all images that are associated with project ids, then checking those image ids and seeing if the page id matches as well. If it is, then it's accessing the pathway and filling in the image source

    -project_id from the project table so it knows where to redirect the user when the link is clicked on and so that way there's a link for the page to look for and access image pathways in the database that match what wants to be shown

5. Essentially, what I'm trying to tell the database is:
    The previous page is calling upon category_id to link to this page and display all projects that match the category id. Dynamically change the h3 title to the category of project it is. Then, with all the results you've found, create images and text that match all ids from your results, but the images are only if it belongs on the page. Finally, slap a link on top of those images and text that will redirect the user to the specific project page

    Or to put it another way: "I want to see all front end projects, which is the id of 1 in the category table. So make an array that have "1" in category_id in the projects table. So take all those of those results' titles and slap them on the page. While you're at it, take a quick check in the images table and if there's any project ids that are populating this page and match, and those images are a part of this page, bring in that image too.

6. My explanation about the images and pages might be a little rough so let me put it like this:
    -The page is checking for project ids. Say images of Iron Man, Spider-Man, and Doctor Strange are relevant but I only want to display Iron Man on the page for right now
    -The linking table will take the image of Iron Man and make sure that's the only one that gets populated on the page and saves Spider-Man and Doctor Strange for later. Without the isolation, it will populate Spider-Man and Doctor Strange

7. I realize I might be a little in over my head right now, or overthinking things, but I wanted to make an attempt and try and demonstrate my knowledge and understanding~ At least, what I do know. The process might be simpler, or more complicated, than I'm making it out to be but I'm trying! :D-->

