<!SLIDE bullets>
 
![logo-rspec](https://d1ffx7ull4987f.cloudfront.net/images/courses/large_badge/14/testing-with-rspec-28aac9e9dc98d373f4bce659214c5b3a.png)

* [pastis.rb](http://pastisrb.org)
* La Bo[a]te, Marseille, le 12 juin 2013

<!SLIDE bullets transition=turnUp>

# David Authier

![ken](ken.gif)

* Développeur Ruby

<!SLIDE bullets transition=turnUp>

# Un framework de test

* Moins de ruby
* Syntaxe plus naturel

<!SLIDE bullets transition=turnUp>

# Au commencement

<!SLIDE bullets transition=turnUp>

## Quelques commandes

    @@@ shell
    gem install rspec

    rspec --init

<!SLIDE bullets transition=turnUp>

# Décrire une classe

<!SLIDE bullets transition=turnUp>

## spec/zombie_spec.rb

    @@@ ruby
    describe Zombie do
      # put some tests here
    end

<!SLIDE bullets transition=turnUp>

# Un premier test

<!SLIDE bullets transition=turnUp>

## spec/zombie_spec.rb

    @@@ ruby
    it "is named Bob" do
      zombie = Zombie.new
      zombie.name.should == 'Bob'
    end

<!SLIDE bullets transition=turnUp>

## spec/zombie_spec.rb

    @@@ ruby
    it "is named Bob" do
      subject.name.should == 'Bob'
    end

<!SLIDE bullets transition=turnUp>

## spec/zombie_spec.rb

    @@@ ruby
    its(:name) { should == 'Bob'}

<!SLIDE bullets transition=turnUp>

# Un prédicat

<!SLIDE bullets transition=turnUp>

    @@@ ruby
    it "is hungry" do
      subject.hungry?.should == true
    end

<!SLIDE bullets transition=turnUp>

    @@@ ruby
    it "is hungry" do
      should be_hungry
    end

<!SLIDE bullets transition=turnUp>

# Plus de matchers

<!SLIDE bullets transition=turnUp>    

## have

<!SLIDE bullets transition=turnUp>

    @@@ ruby
    it 'starts with two weapons' do
      subject.weapons.count.should == 2
    end

<!SLIDE bullets transition=turnUp>

    @@@ ruby
    it 'starts with two weapons' do
      should have(2).weapons
    end

<!SLIDE bullets transition=turnUp>

## change

<!SLIDE bullets transition=turnUp>

    @@@ ruby
    it 'changes the number of Zombies' do
      expect { subject.save }.to change { Zombie.count }.by(1)
    end

<!SLIDE bullets transition=turnUp>

## Et d'autres

<!SLIDE bullets transition=turnUp>

* be_within(<range>).of(<expected>)
* exist
* satisfy { <block> }
* be_kind_of(<class>)
* be_an_instance_of(<class>)

<!SLIDE bullets transition=turnUp>

# Ajouter un contexte

<!SLIDE bullets transition=turnUp>

    @@@ ruby
    context 'with a veggie preference' do
      subject { Zombie.new(vegetarian: true) }

      its(:craving) { should == 'vegan brains' }
    end

<!SLIDE bullets transition=turnUp>

# Quelques 'let'

<!SLIDE bullets transition=turnUp>

    @@@ ruby
    subject { Zombie.new(weapons: [axe]) }
    let(:axe) { Weapon.new(name: 'axe') }
    its(:weapons) { should include(axe) }

<!SLIDE bullets transition=turnUp>

# Hooks

<!SLIDE bullets transition=turnUp>

    @@@ ruby
    before do
      # do something
    end

<!SLIDE bullets transition=turnUp>

# Ressources

* Site officiel Rspec
* [http://rspec.info](http://rspec.info)

<!SLIDE bullets transition=turnUp>

# Merci pour votre attention

* [@davidawea](https://twitter.com/#!/davidawea)