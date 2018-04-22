FactoryGirl.define do
  factory :loan do
    value 1.5
    date "2018-04-21"
    debt 1.5
    paid_out false
    model_id 1
  end
end
