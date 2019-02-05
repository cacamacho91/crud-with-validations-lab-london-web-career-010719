class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :released, inclusion: { in: [true, false] }
  validates :artist_name, presence: true
  validate :title_repeat
  validate :rel_year

  def title_repeat
    if Song.all.any? { |s| title == s.title && release_year == s.release_year && artist_name == s.artist_name }
      errors.add(:title, 'cannot have same song title in same year with same artist')
    end
  end

  def rel_year
    if released
      if !release_year
        errors.add(:release_year, 'release year cannot be empty for a released song')
      elsif release_year > Time.now.year
        errors.add(:release_year, 'release year cannot be in the future for a released song')
      end
    end
  end

end
