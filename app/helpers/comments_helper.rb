module CommentsHelper

	def readable_date date
		# date.strftime("%B %d, %Y")
		time_ago_in_words(date)
	end

end