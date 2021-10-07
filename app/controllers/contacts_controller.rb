class ContactsController < ApplicationController
  def index
    @contacts = current_user.contacts
  end

  def import
    Contact.import(params[:file], current_user)
    redirect_to contacts_index_path, notice: 'imported'
  end

  def destroy
    current_user.contacts.delete_all
    redirect_to contacts_index_path, notice: 'deleted all contacts'
  end
end
