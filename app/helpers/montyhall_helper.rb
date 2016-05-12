module MontyhallHelper
  def populate_door(name)
    contents = Game.get_contents
    if contents["stick"] == 2 || (rand(3) == 0 && contents["pumpkin"] == 0) 
      object = "pumpkin"
      contents["pumpkin"] = 1
    else
      object = "stick" 
      contents["stick"] += 1
    end
    something = Hash[name: name, image: "montyhall/door_#{rand(4)}.jpeg", contents: object]
    return something
  end

  def choose_other_door(door_id, game)
    #still something wrong
    picked_door = Door.find(door_id)
    door_list = Array.new
    @game.doors.each do |door|
      if door.id != door_id.to_i
        door_list << door
      end
    end
    if picked_door.contents == "pumpkin"
      return door_list.at(rand(2))
    else
      return door_list.at(0).contents == "pumpkin" ? door_list.at(1) : door_list.at(0)
    end
  end
end
