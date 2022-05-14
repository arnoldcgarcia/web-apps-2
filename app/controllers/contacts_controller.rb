class ContactsController < ApplicationController

  def show
    @contact = Contact.find_by({ "id" => params["id"] })
    @company = Company.find_by({ "id" => @contact["company_id"] })
  end

  def new
    @contact = Contact.new
  end

  def create
    puts params
    Contact.create(first_name: params["contact"]["first_name"], last_name: params["contact"]["last_name"], 
      email: params["contact"]["email"],phone_number: params["contact"]["phone_number"],company_id: params["contact"]["company_id"])
    redirect_to "/companies/#{params["contact"]["company_id"]}"
  end


end
