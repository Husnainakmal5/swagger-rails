class Api::V1::BooksController < ApplicationController
	def index
		render :json => {"name": "John", "age": 45}
	end
end
