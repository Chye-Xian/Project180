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
    return Door.new(name: name, image: "montyhall/door_#{rand(4)}.jpeg", contents: object)
  end
end
