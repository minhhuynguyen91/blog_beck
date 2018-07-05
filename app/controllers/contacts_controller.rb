class ContactsController < ApplicationController
  def new
  end

  def create
    @contact = Contact.new(contact_params)
    
    respond_to do |format|
      if @contact.save
        flash[:notice] = "Successfully added"
        format.html {redirect_to root_path}
        format.js {}
      else
        render '/contact'
      end
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :comment)
    end
end
