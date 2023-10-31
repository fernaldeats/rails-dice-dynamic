class DiceController < ApplicationController
  def user_home
    render({ :template => "dice_templates/home"})
  end

  def user_two_six
    @rolls = []

    2.times do
      die = rand(1..6)

      @rolls.push(die)
    end

    render({ :template => "dice_templates/two_six"})
  end

  def user_two_ten
    @rolls = []

    2.times do
      die = rand(1..10)

      @rolls.push(die)
    end

    render({ :template => "dice_templates/two_ten"})
  end

  def user_one_twenty
    @rolls = []

    1.times do
      die = rand(1..20)

      @rolls.push(die)
    end

    render({ :template => "dice_templates/one_twenty"})
  end

  def user_five_four
    @rolls = []

    5.times do
      die = rand(1..4)

      @rolls.push(die)
    end

    render({ :template => "dice_templates/five_four"})
  end

  def user_flexible
    @rolls = []
    
    @no_of_dice = params.fetch("no_of_dice").to_i
    @no_of_sides = params.fetch("no_of_sides").to_i

    @no_of_dice.times do
      die = rand(1..@no_of_sides)

      @rolls.push(die)
    end

    render({ :template => "dice_templates/flexible"})
  end

end
