class Size < ApplicationRecord
  belongs_to :player

  def height_to_cm
    "#{height} cm"
  end

  def weight_to_kilos
    "#{weight} kg"
  end
end
