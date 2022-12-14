class FavImage < ApplicationRecord
  has_one_attached :file

  validates :name,
            presence: true
  validates :file,
            presence: true,
            blob: { content_type: :image, size_range: 1..(10.megabytes) }

  before_validation :add_name_if_needed

  def add_name_if_needed
    self.name = file.filename.to_s if name.blank?
  end
end
