
  
  <!-- Navbar Area -->
  <div class="clever-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <!-- Menu -->
                <nav class="classy-navbar justify-content-between" id="cleverNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="<?php echo $this->path('home');?>"><img src="css/img/quiz.png" alt=""></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">

                        <!-- Close Button -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>

                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul> 
                                <li><a href="<?php echo $this->path('home');?>">Accueil</a></li> 
                                <li><a href="<?php echo $this->path('about');?>">À propos</a></li>
                                <li><a href="Quest.php">Questionnaire</a></li>
                               <!-- <li><a href="blog.html"></a></li>
                                <li><a href="contact.html">Contact</a></li> -->
                            </ul>

                            <!-- Search Button -->
                            <div class="search-area">
                                <form action="#" method="post">
                                    <input type="search" name="search" id="search" placeholder="Search">
                                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                </form>
                            </div> 

                            <!-- Register / Login -->
                            <div class="register-login-area">
                                <a href="<?php echo $this->path('inscriptionEtu');?>" class="btn">Inscription Etudiant</a>
                                <a href="<?php echo $this->path('inscriptionProf');?>" class="btn">Inscription Prof</a>
                                <a href="<?php echo $this->path('login');?>" class="btn active">Connexion</a>
                            </div>

                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
</header>
        <div id="page">