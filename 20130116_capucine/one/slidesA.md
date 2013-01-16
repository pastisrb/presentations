<!SLIDE bullets>
 
# Capucine
* [pastis.rb](http://pastisrb.org)
* La Passerelle, Marseille, le 16 janvier 2013

<!SLIDE bullets transition=turnUp>

# David Authier
* Développeur, esclave de designer

<!SLIDE bullets transition=turnUp>

![capucine](capucine.png)

# Capucine, c'est quoi ? 

<!SLIDE bullets transition=turnUp>

# Compass 
* Framework CSS pour Sass
* [Et plein d'autre choses](http://maylis-compass.herokuapp.com)

<!SLIDE bullets transition=turnUp>

# CoffeeScript
* Un petit langage qui compile en JavaScript

<!SLIDE bullets transition=turnUp>

# Pourquoi utiliser Capucine
* Dans tous vos projets Web !
* Tant que vous avez besoin de CSS et / ou JS

<!SLIDE bullets transition=turnUp>

# Installation

  ```
    $ gem install capucine
  ```
  
<!SLIDE bullets transition=turnUp>

# Créer ou initialiser un projet

  ```
    $ capucine new mon_projet
  ```
  
  ```
    $ capucine init
  ```

<!SLIDE bullets transition=turnUp>

# Compilation automatique 

  ```
    $ capucine watch
  ```

<!SLIDE bullets transition=turnUp>

# Un peu plus de configuration

<!SLIDE bullets transition=turnUp>

# capucine.yml

    use_compass: true
    use_coffeescript: true

    # -----------------[ COMPASS ]------------------
    compass:
      sass_dir: sass
      css_dir: public/css_generated
    
    # ---------------[ COFFEESCRIPT ]---------------
    # coffeescript_bare: false
    coffeescript_files_dir: coffeescript
    coffeescript_output_dir: public/js_generated

<!SLIDE bullets transition=turnUp>

# Conclusion
* Avec Capucine
* commencez la rubyfication
* de votre environnement de travail !

<!SLIDE bullets transition=turnUp>

# Ressources
* Capucine sur github
* [github.com/damln/Capucine](https://github.com/damln/Capucine)

<!SLIDE bullets transition=turnUp>

# Merci pour votre attention
* [@david_authier](https://twitter.com/#!/david_authier)