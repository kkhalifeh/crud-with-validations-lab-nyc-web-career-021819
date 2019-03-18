class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  validates_inclusion_of :released , in: [ true , false ]
  validates :genre, presence: true
  validates :artist_name, presence: true
  # validates_with ReleaseYearValidator
  validate :release_y_condition
  validate :released_condition

  private
  def release_y_condition
    # binding.pry
    if self.released == true && self.release_year == nil
      errors.add(:release_year, "song is not released")
    end
  end

  def released_condition
    # binding.pry
    if self.release_year.to_i > DateTime.now.year.to_i
      errors.add(:release_year, "year is in the future")
    end
  end

end
