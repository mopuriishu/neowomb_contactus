class ContactuspagesController < ApplicationController
	before_action :authenticate_user!, except: [:index,:new,:create]
    load_and_authorize_resource
	def index
		#render action: "index"
=begin	
		if params[:search].present?
           @locations = Contactuspage.near(params[:search], 50, :order => :distance)
  		   else
    	   @locations = Contactuspage.all
        end
=end
		@contacts = Contactuspage.all
        @contact = Contactuspage.new

	end

	def new
	end

	def create
		@contact = Contactuspage.new(contactuspage_params)
		#@contact.user_id = current_user.id
		if @contact.save
	  		redirect_to contactuspages_path, notice: "sucesfuly created"
	  	else #display error message
	  		render action: "new"
		end
	end

	def show

	end
=begin
	def edit

	end

	def update
	end

	def destroy
	end
=end
	def description_details
		@contact = Contactuspage.all
	end

	def google_map
	end

	def private
		def contactuspage_params
			params[:contactuspage].permit(:name,:email,:subject,:description,:address,:latitude,:longitude)
		end
	end

end
#:address,:latitude,:longitude