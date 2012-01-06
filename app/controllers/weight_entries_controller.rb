class WeightEntriesController < ApplicationController
	respond_to :html, :atom
	
	def index
		@weightEntries = WeightEntry.order("[on] asc")			
		respond_with @weightEntries, @lc
	end
	
	def show
		@entry = WeightEntry.find_by_id(params[:id])
		respond_with @entry
	end
	
	def new
		@entry = WeightEntry.new
	end
	
	def create
		@entry = WeightEntry.create(params[:weight_entry])
		
		if @entry.save
			redirect_to weight_entries_path
		else
			render "new"
		end
	end
	
	def edit
		@entry = WeightEntry.find_by_id(params[:id])
	end
	
	def update
		@entry = WeightEntry.find_by_id(params[:id])
		if @entry.update_attributes(params[:weight_entry])
			redirect_to weight_entries_path
		else
			render "edit"
		end
	end
	
	def destroy
		entry = WeightEntry.find_by_id(params[:id])
		entry.destroy
		redirect_to weight_entries_path, :notice => "Weight on #{entry.on} was deleted."
	end
end
