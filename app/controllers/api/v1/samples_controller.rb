class Api::V1::SamplesController < ApplicationController
	def index
		render :json => {"Test": true, "name": "John", "age": 45}
	end
end
