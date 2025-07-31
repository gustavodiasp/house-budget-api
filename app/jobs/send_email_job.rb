class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts '=================== SENDING EMAIL ====================='
    sleep 10
    puts '=================== EMAIL SENT ====================='
  end
end
