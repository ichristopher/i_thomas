module ApplicationHelper

	# Helper for returning full title with site name, or site name if not provided by page
	def full_title(page_title)
		base_title = "iThomas"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	
end
