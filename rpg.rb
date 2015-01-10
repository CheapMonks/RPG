#RPG

puts "What is your name?"

class Hero
  attr_accessor :name, :hit_points, :hit_chance

  def initialize(name)
    @name = name
    @hit_points = 10
    @hit_chance = 90
  end
end

new_name = gets.chomp.capitalize!

player = Hero.new(new_name)
puts player
puts "#{player.name} enters the forest!"
puts "Hi #{player.name}! Prepare for battle!"

class Villain
  attr_accessor :name, :hit_points, :hit_chance

  def initialize(name)
    @name = name
    @hit_points = 6
    @hit_chance = 60
    # @strength = 4
    # @defense = 4
  end
end

villains = ["Trey", "JSON", "Tiffany", "Rachel", "David", "Andrew", "Will"]

baddie = Villain.new(villains.sample)
puts baddie
succesful_hero_hit = 0
succesful_villain_hit = 0

def fight(player, baddie)
  puts "#{player.name} attacks!"

  living = true

  succesful_hero_hit = 0
  succesful_villain_hit = 0

  while living

    if	rand(1..100) <= 80
      succesful_hero_hit+1

    end

    if rand(1..100) <= 60
      succesful_villain_hit+1
    end

    puts player.hit_points

    if hero.hit_points >= 0
      puts  "#{player.name} has fallen in battle!"
      living = false
    end

    if villain.hit_points >= 0
      puts "#{player.name} has defeated evil today!"
      living = false
    end
  end

end

# def flee

# end

fight_question = true

while fight_question == true
  puts "... will #{player.name} fight or flee?"
  fight_flee = gets.chomp.downcase
  if fight_flee == "fight"
    fight(player, baddie)
    fight_question = false
  elsif fight_flee == "flee"
    flee()
    fight_question = false
  end
end

