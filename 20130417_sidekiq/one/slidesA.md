<!SLIDE bullets>
 
# Sidekiq
* [pastis.rb](http://pastisrb.org)
* La Bo[a]te, Marseille, le 17 avril 2013

logo : http://hivecolor.com/img/id/43/sidekiq_502_205.png
images pour les slides où tu veux :

* http://misc.team-aaa.com/perso_Dragoonhead/images/SSF2THDR-ryu-hadoken.jpg
* http://cf.imados.fr/1/humour/martine/photo/0987364098/1749636651/martine-martine-balayette-rotatif-img.jpg (si tu arrive à me la mettre celle-là tu es mon héroïne !)


<!SLIDE bullets transition=turnUp>

# David Authier

<!SLIDE bullets transition=turnUp>

# Quand l'utiliser

![sidekiq](sidekiq.png)

* Pour gérer des processus lent

<!SLIDE bullets transition=turnUp>

# Prérequis

* Redis
* Ruby ;)

<!SLIDE bullets transition=turnUp>

# Dans une application rails

<!SLIDE bullets transition=turnUp>

## app/workers/my_worker.rb

    @@@ ruby
    class MyWorker
      include Sidekiq::Worker
      
      def perform(params1, params2)
        # do what you here
      end
    end

<!SLIDE bullets transition=turnUp>

## somewhere/in_your/app.rb

    @@@ ruby
    MyWorker.perform_async(params1, params2)

<!SLIDE bullets transition=turnUp>

## la commande

    @@@ shell
    bundle exec sidekiq

<!SLIDE bullets transition=turnUp>

# Ce qui est cool

<!SLIDE bullets transition=turnUp>

* différentes queues et prioritées
* Les middlewares
* Logging / Monitoring
* Une API

<!SLIDE bullets transition=turnUp>

# Bonnes pratiques

<!SLIDE bullets transition=turnUp>

* Des workers simples et petits
* Worker idempotent et transactionnel

<!SLIDE bullets transition=turnUp>

# Ressources
* Site officiel Sidekiq
* [http://sidekiq.org/](http://sidekiq.org/)
* Railscast
* [http://railscasts.com/](http://railscasts.com/episodes/366-sidekiq?view=asciicast)
* Autoscaler
* [https://github.com/JustinLove/autoscaler](https://github.com/JustinLove/autoscaler)

<!SLIDE bullets transition=turnUp>

# Merci pour votre attention
* [@davidawea](https://twitter.com/#!/davidawea)