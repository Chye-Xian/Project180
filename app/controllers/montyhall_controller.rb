class MontyhallController < ApplicationController
  include MontyhallHelper
  def index
    @@game = Game.new()
    @@game.save()
    @@game.doors.create(populate_door("door1"))
    @@game.doors.create(populate_door("door2"))
    @@game.doors.create(populate_door("door3"))
    @@game.save()
  end

  def choice
    #@game = params[:first]
  end
end
