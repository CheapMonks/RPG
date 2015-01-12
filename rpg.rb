#RPG organization repo

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
  	"#{player.name} with #{player.hit_points} vs. #{}
    player_Roll = rand(1..100)
    puts player_Roll
    baddie_Roll = rand(1..100)
    puts baddie_Roll
    if	player_Roll <= 80
      baddie.hit_points -= rand(2..4)
      puts baddie.hit_points



    elsif baddie_Roll <= 60
      player.hit_points -= rand(2..4)
      puts player.hit_points
    end


    if player.hit_points <= 0
      puts  "#{player.name} has fallen in battle!"
      living = false


    elsif baddie.hit_points <= 0
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
