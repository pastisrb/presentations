<!SLIDE bullets>
 
# CoffeeScript
* [pastis.rb](http://pastisrb.org)
* L'Équitable Café, Marseille, le 13 février 2013

<!SLIDE bullets transition=turnUp>

# David Authier
* Développeur

<!SLIDE bullets transition=turnUp>

![coffeescript](coffeescript.png)

<!SLIDE bullets transition=turnUp>

# Pourquoi utiliser CoffeeScript
* écrire moins pour en avoir plus
* lisibilité
* maintenabilité

<!SLIDE bullets transition=turnUp>

# Plus de déclaration de variable

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    var message;
    message = "Catch them all !";
    alert(message);

__COFFEE__

    @@@ javascript
    message = "Catch them all !"
    alert message

<!SLIDE bullets transition=turnUp>

# Les fonctions

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    var catch_pokemon = function(){
      return confirm("Ready for catching ?");
    }

__COFFEE__

    @@@ javascript
    catch_pokemon = ->
      confirm "Ready for catching ?"

<!SLIDE bullets transition=turnUp>

# Paramètres des fonctions

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    var catch_pokemon;
    catch_pokemon = function(name) {
      return confirm("Ready for catching " + name + " ?");
    };

__COFFEE__

    @@@ javascript
    catch_pokemon = (name) ->
      confirm "Ready for catching #{name} ?"

<!SLIDE bullets transition=turnUp>

# Appels de fonctions

<!SLIDE bullets transition=turnUp>

__COFFEE__

    @@@ javascript
    catch_pokemon = ->
    # catch_pokemon()
    # do catch_pokemon

    catch_pokemon = (name) ->
    # catch_pokemon("Rattata")
    # catch_pokemon "Rattata"

    catch_pokemon = (name, level) ->
    # catch_pokemon("Rattata", 12)
    # catch_pokemon "Rattata", 12

<!SLIDE bullets transition=turnUp>

# jQuery vers CoffeeScript

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    function catch_pokemon(event){
      event.preventDefault();
      $("#fight-screen .pokemon").replaceWith("<img src= 'img/items/pokeball.gif'>");
      $(this).remove();
    }

    $("#inventory .pokeball .use").click(catch_pokemon);

<!SLIDE bullets transition=turnUp>

__COFFEE__

    @@@ javascript
    catch_pokemon = (event) ->
      event.preventDefault()
      $("#fight-screen .pokemon").replaceWith "<img src= 'img/items/pokeball.gif'>"
      $(@).remove()
      
    $("#inventory .pokeball .use").click catch_pokemon

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    $("#pokedex .pokemon .icon").click(function (event){
      event.preventDefault();
    });

__COFFEE__

    @@@ javascript
    $("#pokedex .pokemon .icon").click (event) ->
      event.preventDefault()

<!SLIDE bullets transition=turnUp>

# Les conditions

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    if (age == 10){
      alert("You can be a Pokemon trainer !");
    }

<!SLIDE bullets transition=turnUp>

__COFFEE__

    @@@ javascript
    if age == 10
      alert "You can be a Pokemon trainer !"
      
    alert "You can be a Pokemon trainer !"  if age == 10

    if age == 10 then alert "You can be a Pokemon trainer !"

<!SLIDE bullets transition=turnUp>

# Les opérateurs

<!SLIDE bullets transition=turnUp>

* is | ==> | ===
* isnt | ==> | !==
* not | ==> | !
* or | ==> | ||
* true yes on | ==> | true
* false no off | ==> | false

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    if (all_the_pokemon() && have_meet_chen() === true) {
      you_finish_pokemon();
    }

    if (!work_to_do()) {
      start_game();
    }

<!SLIDE bullets transition=turnUp>

__COFFEE__

    @@@ javascript
    if all_the_pokemon() and have_meet_chen() is on then you_finish_pokemon()

    start_game() if not work_to_do()
    #=> start_game() unless work_to_do()

<!SLIDE bullets transition=turnUp>

# Chainer les comparaisons

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    if (100 < pokemon_count && pokemon_count < 130) {
      alert('Not so bad dummy !');
    }

__COFFEE__

    @@@ javascript
    if 100 < pokemon_count < 130
      alert 'Not so bad dummy !'

<!SLIDE bullets transition=turnUp>

# Opérateur existentiel

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    if (typeof poke_world !== 'undefined' && poke_world !== null){
      alert("They exist!");
    }

__COFFEE__

    @@@ javascript
    alert "They exist!" if poke_world?

<!SLIDE bullets transition=turnUp>

# Opérateur existentiel sur les fonctions

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    if (typeof gameboy.start === "function") {
      gameboy.start();
    }

__COFFEE__

    @@@ javascript
    gameboy.start?()

<!SLIDE bullets transition=turnUp>

# Plages

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    var range = [0, 1, 2, 3, 4, 5];

__COFFEE__

    @@@ javascript
    range = [0..5]

<!SLIDE bullets transition=turnUp>

# Tableaux

<!SLIDE bullets transition=turnUp>

__COFFEE__

    @@@ javascript
    pokemons = ['Bulbizare', 'Dracaufeu', 'Pikachu']

    pokemons = [
      'Bulbizare'
      'Dracaufeu'
      'Pikachu'
    ]

<!SLIDE bullets transition=turnUp>

# Boucles

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    var pokemon, _i, _j, _k, _len, _len1, _len2;

    for (_i = 0, _len = pokemons.length; _i < _len; _i++) {
      pokemon = pokemons[_i];
      alert("Pokemon: " + pokemon);
    }

    for (_j = 0, _len1 = pokemons.length; _j < _len1; _j++) {
      pokemon = pokemons[_j];
      alert("Pokemon: " + pokemon);
    }

    for (_k = 0, _len2 = pokemons.length; _k < _len2; _k++) {
      pokemon = pokemons[_k];
      if (pokemon !== 'Pikachu') {
        alert("Pokemon: " + pokemon);
      }
    }

<!SLIDE bullets transition=turnUp>

__COFFEE__

    @@@ javascript
    for pokemon in pokemons
      alert "Pokemon: #{pokemon}"
      
    alert "Pokemon: #{pokemon}" for pokemon in pokemons

    alert "Pokemon: #{pokemon}" for pokemon in pokemons when pokemon isnt 'Pikachu'

<!SLIDE bullets transition=turnUp>

# Objets

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    var pokemon;
    pokemon = {
      name: 'Carapuce',
      strength: 12,
      water_gun: function() {
        return alert("" + this.name + " hurt you!");
      }
    };

<!SLIDE bullets transition=turnUp>

__COFFEE__

    @@@ javascript
    pokemon = 
      name: 'Carapuce'
      strength: 12
      water_gun: ->
        alert "#{@name} hurt you!"
        
    pokemon.name
    #=> Carapuce
    pokemon.water_gun
    #=> Carapuce hurt you !'

<!SLIDE bullets transition=turnUp>

# Classes

<!SLIDE bullets transition=turnUp>

__JS__

    @@@ javascript
    var Pokemon, minidraco;

    Pokemon = (function() {

      function Pokemon(name) {
        this.name = name;
      }

      Pokemon.prototype.cute = function() {
        return alert("" + this.name + " is so cute");
      };

      return Pokemon;

    })();

<!SLIDE bullets transition=turnUp>

__COFFEE__

    @@@ javascript
    class Pokemon
      constructor: (@name) ->
      cute: ->
        alert "#{@name} is so cute"
        
    minidraco = new Pokemon('Minidraco')
    minidraco.name
    #=> Minidraco
    minidraco.cute 
    #=> Minidraco is so cute

<!SLIDE bullets transition=turnUp>

# Ressources
* [coffeescript.org](http://coffeescript.org/)

<!SLIDE bullets transition=turnUp>

# Merci pour votre attention
* [@david_authier](https://twitter.com/#!/david_authier)