class Article < ApplicationRecord
  # Article < ApplicationRecors < ActiveRecord::Base
  # This provides CRUD and additional functionalities like searching, realtions, validations.
  # Check Active Record Validations for more.
  
  # Article can have many comments. Must destroy on parent destruction.
  # See Active Record Associations.
  has_many :comments, dependent: :destroy
  # Validation at title, must exist and minmium length 5
  validates :title, presence: true,
                    length: { minimum: 5 }
end
