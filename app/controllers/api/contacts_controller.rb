class Api::ContactsController < ApplicationController
  def first_contact
    @contact = Contact.first
    render "first_contact.json.jbuilder"
  end

  def all_contacts
    @contacts = Contact.all
    render "all_contacts.json.jbuilder"
  end
end