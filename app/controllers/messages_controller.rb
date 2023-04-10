class MessagesController < ApplicationController
    before_action :require_user 

    def create 
        message = current_user.messages.build(message_params)
        if message.save 
            ApplicationCable.server.broadcast "chatroom_channel",
        end
    end

    private 
    
    def message_params 
        params.require(:message).permit(:body)
    end
end
