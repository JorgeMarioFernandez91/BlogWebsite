class Article < ApplicationRecord
	#helps to validate the data we sent to models
	#this will ensure that articles have a title of at least 5 chars
  validates :title, presence: true,
                    length: { minimum: 5 }
end
