class Comedian < ApplicationRecord
  has_many :specials

  validates_presence_of :name
  validates_presence_of :age

  def self.average_age
    # "#{average(:age).round(2)} Years"
    average(:age)
  end

  def average_special_runtime
    specials.average(:runtime)
  end

  def longest_special
    specials.order(runtime: :desc).first.runtime
    # specials.maximum(:runtime)
  end

  def count_of_specials
    specials.count
  end
end
