class Special < ApplicationRecord
  belongs_to :comedian

  validates_presence_of :name
  validates_presence_of :runtime

  # def self.average_special_runtime(comedian_id)
  #   Special.where("comedian_id = ?", comedian_id)
  # end
end
