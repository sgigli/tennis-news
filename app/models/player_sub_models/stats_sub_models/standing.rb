class Standing < ApplicationRecord
  belongs_to :stats, polymorphic: true
end
