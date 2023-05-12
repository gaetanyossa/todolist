<?php


include_once '../Admin/fonction.php';
?>
<!DOCTYPE html>
<html lang="fr" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <title><?php
    echo ucfirst(str_replace(".php","",basename($_SERVER['PHP_SELF'])));
    ?>
    </title>
    <link rel="stylesheet" href="../assets/css/style.css" />
    <!-- Boxicons CDN Link -->
    <link
      href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
      rel="stylesheet"
     />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
    
    <div class="sidebar">
      <div class="logo-details">
     

      <i class='bx bxl-python'></i>
        <span class="logo_name">Gaetan DEV</span>
      </div>
      <ul class="nav-links">
        <li>
          <a href="index.php" class="<?php
    echo basename($_SERVER['PHP_SELF'])=="index.php" ? "active" : ""
    
    ?> ">
    
          <i class='bx bx-plus-circle'></i>
            <span class="links_name" >Nouvelle Tache</span>
          </a>
        </li>
     
     
        <li>
          <a href="liste.php" class="<?php
    echo basename($_SERVER['PHP_SELF'])=="liste.php" ? "active" : ""
    
    ?> ">
         <i class='bx bxs-save'></i>
            <span class="links_name">Taches enregistrée</span>
          </a>
        </li>
       
      
      </ul>
    </div>
    <section class="home-section">
      <nav>
        <div class="sidebar-button">
          <i class="bx bx-menu sidebarBtn"></i>
          <span class="dashboard"><?php
    echo ucfirst(str_replace(".php","",basename($_SERVER['PHP_SELF'])));
    
    ?></span>
        </div>
     
      </nav>
      <footer>
  <p>&copy; 2023 GAETAN DEV. Tous droits réservés.</p>
</footer>
