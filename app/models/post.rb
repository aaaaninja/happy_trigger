# frozen_string_literal: true

class Post < ApplicationRecord
  before_create do
    self.id = ULID.generate_bytes
  end
end
