class Api::ContactsController < ApplicationController
  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    render "show.json.jbuilder"
    @contact.save
  end

  def create
    @contact = Contact.new
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.phone_number = params[:phone_number]
    @contact.save
    render "show.json.jbuilder"
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
    render json: {message: "Contact successfully deleted"}
  end
end