class AppliedSanction < ApplicationRecord
  belongs_to :sanction
  belongs_to :model
  belongs_to :detail
  belongs_to :head_quarte
end
