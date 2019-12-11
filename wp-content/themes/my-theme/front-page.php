<?php get_header(); ?>

<div class="container">
    
    

<?php
if ( have_posts() ) {
  while ( have_posts() ) {
    /**
     * La méthode the_post() permet de charger le post courant
     * Un post est un type de contenu, par exemple une actualité ou une page
     **/
    the_post(); 

    /**
     * La méthode the_content() affiche le contenu du post en cours
     * Il s'agit du contenu que vous avez renseigné dans le back-office
     * Il existe d'autres méthodes, par exemple pour afficher le Titre du contenu, on peut utiliser la méthode the_title()
     */
    the_content();
      
    $banner_background_image = get_field('banner_background_image');    
?>
      
      <section class="section-1" style="background-image: url(<?php echo $banner_background_image['url']; ?>)" >
        
          <div class="section-1-cont">
          <p class="section-title">
              <?php the_field('section-title'); ?>
      </p>
        <p class="section-chaine">
               <?php the_field('section-chaine'); ?>
              </p>
          <p class="section-q">
               <?php the_field('section-q'); ?>
              </p>
          
          <a class=link href="#">
               <?php the_field('link'); ?>
              </a>
          </div>
          
    </section>
    
    <section class="section-2">
        
        
    <div class="section-2-cont">
        <p class="section-conf">
        <?php the_field('section-conf'); ?>
        </p>
        <hr></hr>
        <p class="txt">
        <?php the_field('txt'); ?>
        </p>
        </div>
    <?php      
    $banner_background_image = get_field('img-2');
    $programs = get_field('program');
    
    ?>
    <div class="section-img" style="background-image: url(<?php echo $banner_background_image['url']; ?>)" >
    </div>
    
    </section>
    
    <section class="section-3">
        <p class="section-prog">Au programme</p>
        <div class="section-3-content">
            <div class="colon-1">
                
                <?php foreach($programs as $program){ ?>
                
                    <div class="program">
                        <span class="program-hour"><?php echo $program['hour']; ?></span>
                        <span class="program-description"><?php echo $program['description']; ?></span>
                    </div>
                    

                <?php } ?>
                
            </div>

            <div class="colon-2">
                <!--<div class="program">
                    <span class="program-hour">8:30</span>
                    <span class="program-description">Introduction par...</span>
                </div>
                <div class="program">
                    <span class="program-hour">8:30</span>
                    <span class="program-description">Introduction par...</span>
                </div>-->
            </div>
        </div>
        
        <div><a class=link href="#">
            S'inscrire aux rencontres
        </a></div>
        
        
    </section>
    
     <section class="section-4">
        <p class="section-orat">Les orateurs</p>
          
    </section>
    
    <section class="section-5">
        <p class="section-info">Informations pratiques</p>
          
    </section>
    
        <section class="section-5">
        <p class="section-video">vidéos</p>
          
    </section>
    
    <section class="section-6">
        <p class="section-actu">Actus</p>
          
    </section>

    
    
<?php
  }
}
?>

</div>

<?php get_footer(); ?>