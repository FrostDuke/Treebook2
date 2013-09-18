module ApplicationHelper

	def flash_class(type)
		 case type
		 when :alert
		 	"Alert -Error"
		 when :notice
		 	"Alert Success"
		 else
		 	""
		 end
    end
end
