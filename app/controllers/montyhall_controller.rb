class MontyhallController < ApplicationController
  include MontyhallHelper
  def index
    @game = Game.new()
    @game.Door.create(populate_door("door1")) 
    door2 = populate_door("door2")
    door2.save()
    door3 = populate_door("door3")
    door3.save()
    @game.save()
  end

  def choice
  end
end
