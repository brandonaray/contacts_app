class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end
end
