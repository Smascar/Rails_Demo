class Comment < ApplicationRecord
  # Declare relationship with "article" table. 
  # Comment belongs to article.
  belongs_to :article
end
