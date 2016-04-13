class CreateUserJob < ApplicationJob
  queue_as :creator

  def perform(n)
    User.create!(name: "name #{n}")
  end
end
