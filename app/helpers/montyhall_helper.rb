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
end
