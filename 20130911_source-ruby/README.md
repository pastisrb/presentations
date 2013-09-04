# Le code source de Ruby

**Avertissement** : cette présentation concerne **Ruby 2.0** (2.0.0-p247 pour être précis) qui est la version stable actuelle, installée sur Mac OS X via **rbenv**.

Petite précision : **Ruby** (avec un R majuscule) est le nom du langage, et **ruby** (tout en minuscules) est la commande ou le nom du binaire servant à exécuter du code Ruby.

* site officiel : https://www.ruby-lang.org
* source : https://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.gz
* miroir GitHub : https://github.com/ruby/ruby

## Core vs. StdLib

Comme la plupart des langages interprétés, Ruby est composé de 2 parties principales : **Core** et **StdLib**.

**Core** est le noyau du langage, écrit en C et compilé. C'est là que sont définies les fonctionnalités principale du langage, sa syntaxe et sa manière de fonctionner dans un environnement hôte.

**StdLib** — **Standard Library** — est un ensemble de bibliothèques étendant les capacités du langage en apportant des fonctionnalités bien utiles. On y trouve des bibliothèques pour faciliter les interactions avec les systèmes de fichiers, les échanges TCP/UDP, la création et l'utilisation de sockets Unix, la gestion des threads, … N'étant pas écrites en C, mais en Ruby, ces bibliothèques ont donc un code source beaucoup accessible à la lecture et la compréhension.


## Après l'installation

Une fois installé (via rbenv dans mon cas}, on trouvera son Ruby ici dans `~/.rbenv/versions/2.0.0-p247` ou `/usr/local/opt/rbenv/versions/2.0.0-p247`.

On y trouve plusieurs emplacements clés :

* `bin/ruby` : le binaire compilé
* `bin/{erb,gem,irb,rake,rdoc,ri,testrb}` : des scripts en Ruby permettant d'utiliser certaines bibliothèques fournies avec Ruby
* `lib/ruby/2.0.0/` : la Standard Library
* `lib/ruby/gems/2.0.0` : les gems installées a posteriori

## Consulter la documentation

### En ligne

Un des excellentes manières d'apprendre un langage de programmation est de lire sa documentation.

Ruby a longtemps souffert d'une documentation incomplète, difficile à comprendre, voire même fausse. Depuis la sortie des versions 1.9 et surtout 2.0, la situation est grandement améliorée.

Il est possible de consulter la documentation en ligne sur http://ruby-doc.org/. Vous y trouverez la documentation automatiquement générée, formatée en HTML, pour les parties Core, StdLib ainsi que certaines Gems.

Par exemple, pour la classe `Integer` on trouvera la liste complète des méthodes publiques. Pour chacune une explication de son utilité, quelques exemples et la possibilité d'afficher le code source (en C ou Ruby selon les cas).

![documentation de Integer]

### Sur son poste de travail

Il est possible de générer une documentation texte brut ou HTML sur son poste, mais cela nécessite d'utiliser plusieurs outils tels que `Rdoc` et j'avoue n'y être jamais arrivé complètement.

Le plus simple est probablement de télécharger des archives toutes faites pour ce qui vous intéresse : http://ruby-doc.org/downloads/ Il suffit de placer ces fichiers dans une zone accessible via un serveur web (pour que votre navigateur ne limite pas l'exécution du Javascript).

## Consulter le code source

### Core

Le code source du cœur de Ruby est facilement accessible

* sur le miroir Git hébergé par GitHub : `git clone git://github.com/ruby/ruby.git`
* via le dépôt SVN officiel : `svn co http://svn.ruby-lang.org/repos/ruby/trunk/ ruby`

### StdLib et gems

Le code source de la StdLib est accessible directement dans le dossier d'installation.

Pour éviter d'avoir à chercher dans cette arborescence compliqué, il existe une gem appelée [qwandry](https://github.com/adamsanderson/qwandry) qui permet d'ouvrir le code source d'une bibliothèque ou d'une gem dans votre éditeur de texte préféré (configurable via une variable d'environnement `QWANDRY_EDITOR`, `VISUAL` ou enfin `EDITOR`).

On peut donc ouvrir le code de la bibliothèque `CSV` avec la commande `qw csv`. Idem pour une gem installée : `qw activerecord-4.0.0`

Lorsque `Bundler` est installé et utilisé pour géré un projet (dans une application Rails par exemple) il est alors possible d'ouvrir le code d'une des gems pour l'exacte version utilisée dans ce projet. Il suffit d'exécuter `bundle open activerecord`.