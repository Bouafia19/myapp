class WelcomeController < ApplicationController

  def index
    @contact = Contact.new
  end

  def new
    
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
        flash.now[:success] = 'Message sent!'
    else
        flash.now[:error] = 'cannot send message'
        render :index
    end
  end

end
