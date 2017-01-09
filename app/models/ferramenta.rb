class Ferramenta < ApplicationRecord
  belongs_to :categoria
  belongs_to :usuario
end
