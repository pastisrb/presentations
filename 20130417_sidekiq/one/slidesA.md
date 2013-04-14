<!SLIDE bullets>
 
# Sidekiq
* [pastis.rb](http://pastisrb.org)
* La Bo[a]te, Marseille, le 17 avril 2013

<!SLIDE bullets transition=turnUp>

# David Authier

<!SLIDE bullets transition=turnUp>

# Quand l'utiliser

![sidekiq](sidekiq.png)

* Pour gérer des processus lent
* Des traitements backs divers

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
* Tâches programmées 

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