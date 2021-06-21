class TennisAssociation < ApplicationRecord

  has_many :players

  private

  def self.atp
    find_by(acronym: "ATP")
  end

  def self.wta
    find_by(acronym: "WTA")
  end
end
