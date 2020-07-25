class AboutController < ApplicationController
  def about
  end


   def create
     @message = Message.new(params[:contact])
     @message.request = request
     if @message.deliver
       flash.now[:error] = nil
   redirect_to root_path, notice: 'Message sent successfully'
     else
       flash.now[:error] = 'Cannot send message'
       render :about
     end
   end
end
