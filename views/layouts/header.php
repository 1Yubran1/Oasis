<?php
use yii\helpers\Html; 
?>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Oasis Gourmet</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">



  <!-- =======================================================
  * Template Name: Yummy
  * Updated: Jan 30 2024 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <br><br><br><br><br><br>
</head>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="/index.php" class="logo d-flex align-items-center me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1>Oasis Gourmet<span>.</span></h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="/index.php">Inicio</a></li>
          <li><a href="#about">Acerca de</a></li>
          <li><a href="#menu">Menú</a></li>
          <li><a href="#events">Eventos</a></li>
          <li><a href="#chefs">Chefs</a></li>
          <li><a href="#gallery">Galería</a></li>
          <li class="dropdown"><a href="#"><span>Productos</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><?= Html::a('Boneless', ['/bonele/index'], ['class' => 'collapse-item'])?></li>
              <li class="dropdown"><span><?= Html::a('Bebidas', ['/bebida/index'], ['class' => 'collapse-item']) ?></span> <i class="bi bi-chevron-down dropdown-indicator"></i>
                <ul>
                  <li><a href="#">Naturales</a></li>
                  <li><a href="#">Refrescos</a></li>
                  <li><a href="#">Jugos</a></li>
                  <li><a href="#">Bebidas alcoholicas</a></li>
                  <li><?= Html::a('Tipos de bebidas', ['/tbebida/index'], ['class' => 'collapse-item']) ?></li>
                </ul>
              </li>
              <li><?= Html::a('Hamburguesas', ['/hamburguesa/index',], ['class' => 'collapse-item']) ?></li>
              <li class="dropdown"><span><?= Html::a('Snacks', ['/snacks/index'], ['class' => 'collapse-item']) ?></span>
                <ul>
                  <li><a href="#">Snack 1</a></li>
                  <li><a href="#">Snack 2</a></li>
                  <li><a href="#">Snack 3</a></li>
                </ul>
              </li>
              <li><?= Html::a('Tacos', ['/taco/index',], ['class' => 'collapse-item']) ?></li>
              <li><?= Html::a('Tortas', ['/torta/index',], ['class' => 'collapse-item']) ?></li>
              <li><?= Html::a('Salsaa', ['/salsa/index',], ['class' => 'collapse-item']) ?></li>
              <li><?= Html::a('Wings', ['/alita/index',], ['class' => 'collapse-item']) ?></li>
              <li><?= Html::a('Postres', ['/postre/index',], ['class' => 'collapse-item']) ?></li>
            </ul>
          </li>
          <li><a href="#contact">Contacto</a></li>
          <li class="dropdown"><a href="#"><span>Administración</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li> <?= Html::a('Usuarios',      ['/user-management/user/index'],           ['class' => 'collapse-item']) ?></li>
              <li> <?= Html::a('Usuarios2',     ['/usuario/index'],                        ['class' => 'collapse-item']) ?></li>
              <li> <?= Html::a('Roles',         ['/user-management/role/index'],           ['class' => 'collapse-item']) ?></li>
              <li> <?= Html::a('Permisos',      ['/user-management/permission/index'],     ['class' => 'collapse-item']) ?></li>
              <li> <?= Html::a('Ventas',        ['/venta/index'],                          ['class' => 'collapse-item']) ?></li>
              <li> <?= Html::a('Visitas',       ['/user-management/user-visit-log/index'], ['class' => 'collapse-item']) ?></li>
              <li> <?= Html::a('Cerrar sesión', ['/site/logout'],                          ['class' => 'collapse-item']) ?></li>
        </ul>
      </nav><!-- .navbar -->
      <a class="btn-book-a-table" href="#book-a-table">Book a Table</a>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->