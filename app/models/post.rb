# frozen_string_literal: true

class Post < ApplicationRecord
  include ULID::Rails
  ulid :id # The argument is the primary key column name
end
