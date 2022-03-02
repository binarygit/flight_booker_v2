class Airport < ApplicationRecord
  before_save do
    self.airport_code.upcase!
  end
end
