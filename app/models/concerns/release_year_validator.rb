class ReleaseYearValidator < ActiveModel::Validator
  def validate(record)
    # binding.pry
    if record.release_year > DateTime.now.year
        record.errors.add(:release_year, 'Error')
    end
  end
end
