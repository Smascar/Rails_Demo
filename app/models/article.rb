class Article < ApplicationRecord
  # Article < ApplicationRecors < ActiveRecord::Base
  # This provides CRUD and additional functionalities like searching, realtions, validations.

  # Check Active Record Validations for more.
  validates :title, presence: true,
                    length: { minimum: 5 }
end
