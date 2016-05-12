class MontyhallController < ApplicationController
  include MontyhallHelper
  def index
    @game = Game.new()
    @game.save()
    @game.doors.create(populate_door("door1"))
    @game.doors.create(populate_door("door2"))
    @game.doors.create(populate_door("door3"))
  end

  def choice
    @game = Game.find(params[:game])
  end
end
