class Task < ActiveRecord::Base
  belongs_to :priority
  belongs_to :status
end
