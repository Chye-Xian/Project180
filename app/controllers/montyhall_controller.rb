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
    #perhaps change the content string to the image path
    #of the content?
    #well actually its a goat regardless so no need
    @door_id = params.keys.find {|k| k.include? ".y"}
    @door_id = @door_id.chomp(".y")
    @open_door = choose_other_door(@door_id, @game)
  end

  def result
    @result = params.to_s
    @game = Game.find(params[:game])
    @door_set = {
      params[:open_door].to_i => "open_door",
      params[:swap_door].to_i => "swap_door",
      params[:keep_door].to_i => "keep_door"}
  end
end
