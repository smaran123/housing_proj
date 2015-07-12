class ContactusController < ApplicationController
def new
  	@contactu = ContactU.new
  end

  def create
  	@contactu = ContactU.new(contactu_params)
  	if @contactu.save
  		redirect_to new_contactu_path
  	else
  		render :action => :new
  	end
  end
  
  def index
  end

  private

  def contactu_params
  	params.require(:contact_u).permit!
  end
end
