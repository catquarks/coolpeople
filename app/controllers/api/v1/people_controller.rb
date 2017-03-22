module Api
	module V1
		class PeopleController < ApplicationController
			before_action :set_person, only: [:show, :update, :destroy]

			def index
				people = Person.all
				render json: people
			end

			def show
				render json: @person
			end

			def create
				person = Person.create(person_params)
				if person.save
					render json: person
				else
					render json: person.errors, status: 500
				end
			end

			def update
				if @person.update(person_params)
					render json: @person
				else
					render json: @person.errors, status:500
				end
			end

			def destroy
				if @person
					@person.destroy
					head :ok
				else
					render json: {"error" => "Person with ID of #{params[:id]} not found"}, status: 404
				end
			end

			private

				def set_person
					@person = Person.find(params[:id])
				end

				def person_params
					params.require(:person).permit(:name, :favorite_city, :instrument)
				end

		end
	end
end