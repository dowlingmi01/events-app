class CategoriesController < ApplicationController
	before_action :set_category, only: [:show]
	skip_after_action :verify_authorized

	def show
		@categories = Category.all
		@category_events = @category.events.order(created_at: :desc)
	end

	private

		def set_category
			@category = Category.friendly.find(params[:id])

		rescue ActiveRecord::RecordNotFound
			flash[:alert] = "The category you just requested could not be found."
			redirect_to(request.referrer || events_url)
		end
end
