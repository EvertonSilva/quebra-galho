class Usuario < ApplicationRecord
  has_many :habilidades
  has_many :ferramentas
end
