<!SLIDE bullets>
 
# Capucine
* [pastis.rb](http://pastisrb.org)
* La Passerelle, Marseille, le 16 janvier 2013

<!SLIDE bullets transition=turnUp>

# David Authier
* Développeur, monsieur esclave  

<!SLIDE bullets transition=turnUp>

![capucine](capucine.jpg)

# 2 en 1 

<!SLIDE bullets transition=turnUp>

# Compass 
* Framework CSS
* [Et plein d'autre choses](http://maylis-compass.herokuapp.com/#1)

<!SLIDE bullets transition=turnUp>

# CoffeeScript
* Un petit langage qui compile en javascript

<!SLIDE bullets transition=turnUp>

# Où et pourquoi utiliser Capucine
* Tout vos projets web
* Tant que vous avez besoin de CSS et/ou de JS

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

    # ---------------[ COMPASS ]------------------------
    compass:
      sass_dir: sass
      css_dir: public/css_generated
    
    # ---------------[ COFFEESCRIPT ]--------------------------
    # coffeescript_bare: false
    coffeescript_files_dir: coffeescript
    coffeescript_output_dir: public/js_generated

<!SLIDE bullets transition=turnUp>

# Conclusion
* Voilà de quoi faire pour vos prochains projets
* Et voilà une nouvelle idée de présentation pour la prochaine fois

<!SLIDE bullets transition=turnUp>

# Ressources
* Github
* [github.com/damln/Capucine](https://github.com/damln/Capucine)

<!SLIDE bullets transition=turnUp>

# Merci pour votre attention
* [@david_authier](https://twitter.com/#!/david_authier)