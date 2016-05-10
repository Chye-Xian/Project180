class Game < ActiveRecord::Base
  has_many :doors
  @@contents = {"pumpkin" => 0, "stick" => 0}

  def self.get_contents
    @@contents
  end
end
