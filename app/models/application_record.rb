class ApplicationRecord < ActiveRecord::Base
  before_action :authenticate_user!

  self.abstract_class = true
end
