class PalavraChave < ApplicationRecord
  has_and_belongs_to_many :tccs
end
