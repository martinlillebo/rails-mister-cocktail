class Dose < ApplicationRecord
  belongs_to :ingredients
  belongs_to :cocktails
end
