class HomeController < ApplicationController
  def index
  end

  def about_me
  end

  def contact
    @contact = Contact.new
  end
end
