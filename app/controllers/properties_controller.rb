class PropertiesController < ApplicationController
before_action :set_property, :except => [:index, :new, :create]

	def new
		@property = Property.new
	end

	def create

		@property = Property.new(property_params)
		@city = params[:k_city] if params[:k_city].present?
		@city = params[:a_city] if params[:a_city].present?
		@city = params[:t_city] if params[:t_city].present?
		@property.city= @city
		if @property.save
			redirect_to properties_path
		else
			render "new"
		end
	end


	def edit

	end

	def update
@city = params[:k_city] if params[:k_city].present?
		@city = params[:a_city] if params[:a_city].present?
		@city = params[:t_city] if params[:t_city].present?
		@property.city= @city
		if @property.update(property_params)
			redirect_to properties_path
		else
			render "edit"
		end
	end

	def show
	
	end

	def index
		@properties = Property.all
	end

	def destroy
		@property.destroy
		redirect_to properties_path
	end


	private

	def set_property
		@property = Property.find(params[:id])
	end

	def property_params
		params.require(:property).permit!
	end

end
