FactoryBot.define do
  factory :task do
    sequence(:title) { |n| "Task_#{n}" }
    status { rand(2) }
    from = Date.parse("2019/08/01")
    to   = Date.parse("2019/12/31")
    deadline { Random.rand(from..to) }
    association :project

    trait :task_status do
      status { :done }
    end

    trait :task_completion_date do
      completion_date { Time.current.yesterday }
    end
  end
end
