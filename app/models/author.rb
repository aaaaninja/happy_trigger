class Author < ApplicationRecord
  before_create do
    self.id = ULID.generate_bytes
  end
  has_many :books
  validates :name, presence: true

  def to_s
    name
  end
end
