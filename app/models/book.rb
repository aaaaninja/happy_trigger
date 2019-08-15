class Book < ApplicationRecord
  before_create do
    self.id = ULID.generate_bytes
  end
  belongs_to :author
  validates :title, presence: true

  def to_s
    name
  end
end
