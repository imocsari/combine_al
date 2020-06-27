class User < ApplicationRecord
  has_many :audios
  has_many :conferences
end
