class HomeController < ApplicationControll:error
    def index
        (1..5).to_a.each do |number|
            sleep 1
            SendEmailJob.perform_later
        end
        @message = 'Carregado'
    end
end