class Book < ApplicationRecord
  before_create do
    self.id = ULID.generate_bytes
  end
  belongs_to :author
end
