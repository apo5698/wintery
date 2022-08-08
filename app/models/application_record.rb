class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  class << self
    def sample
      find(pluck(:id).sample)
    end
  end
end
