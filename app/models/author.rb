class Author < ApplicationRecord
  before_create do
    self.id = ULID.generate_bytes
  end
end
