class TodoList
	def initialize(list)
	@list=list
	end

	def get_items
		return @list
	end

	def add_item(item)
		@list<<item
	end
end