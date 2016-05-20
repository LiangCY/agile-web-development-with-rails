class LineItem < ActiveRecord::Base
  belongs_to :oreder
  belongs_to :product
end
