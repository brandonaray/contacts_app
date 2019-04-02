class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def new
    @users = User.all
    render "new.html.erb"
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      email: params[:email],
      bio: params[:bio]
      )
    @contact.save
    redirect_to "/contacts/#{@contact.id}"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.html.erb"
  end
end
