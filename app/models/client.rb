class Client < ApplicationRecord
  GENDERS = {
    0 => 'Mujer',
    1 => 'Hombre'
  }

  ID_TYPES = {
    0 => 'Tarjeta de Identidad',
    1 => 'Cedula',
    2 => 'Pasaporte'
  }
  
  validates :name, presence: true
  
  def gender_to_s
    GENDERS[gender]
  end

  def id_type_to_s
    ID_TYPES[id_type]
  end
end
