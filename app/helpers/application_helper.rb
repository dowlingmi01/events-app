module ApplicationHelper
	def full_title(page_title = " ")
		default_title = "Eventsboard - Create Events to Socialize"
		if page_title.empty?
			default_title
		else
			"#{page_title} | #{default_title}"
		end
	end

	def time_format(event_date)
		event_date.strftime("%A, %d %b %Y %l:%M %p")
	end
end
