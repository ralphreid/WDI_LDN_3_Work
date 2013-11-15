class MessagesController < ApplicationController
  def create
    TextMessage.new(params[:content], "07985057831").send
    redirect_to new_message_path
  end

end