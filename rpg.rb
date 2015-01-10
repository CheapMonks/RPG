#RPG

puts "What is your name?"

hero = {"name"=> "", "hit_points"=> 10, "hit_chance"=> 80}

hero[:name] = gets.chomp.capitalize!

puts "#{hero[:name]} enters the forest!"

puts "Hi #{hero[:name]}! Prepare for battle!"

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

villains

shrek = Villain.new("Shrek")

succesful_hit = 0;

def fight
  puts "#{hero[:name]} attacks!"


  living = true

  succesful_hero_hit = 0
  succesful_villain_hit = 0
  
  while living


    if	rand(1..100) <= 80
      succesful_hero_hit+1
      if rand (1..100) <= 60
        succesful_villain_hit+1
      end

      if rand (1..100) <= 60
        succesful_villain_hit
      end
      if hero[:hit_points]} >= 0
        puts  "#{hero[:name]} has fallen in battle!"
        living = false
      end
      if || villain[:hit_points]} >= 0
        puts "#{hero[]} has defeated evil today!"
        living = false
      end


    end

  end


  def flee
    ######
  end

  fight_question = true

  while fight_question == true
    puts "... will #{hero[:name]} fight or flee?"
    fight_flee = gets.chomp.downcase
    if fight_flee == "fight"
      fight()
      fight_question = false
    elsif fight_flee == "flee"
      flee()
      fight_question = false
    end
  end
