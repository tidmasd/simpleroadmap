class ProjectsController < ApplicationController
	
	def index
		@projects = Project.all
	end

	# GET /project/1
	  def show
	  	@project = Project.find(params[:id])
	  	@feedbacks = Feedback.where(project_id: @project.id)
	  end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to projects_path, notice: "Project Created!"
		else
			render :new
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])

		if @project.update(project_params)
			redirect_to projects_path, notice: "Project updated!"
		else
			render :edit
		end
	end

	def roadmap
	end

	private

	def project_params
		params.require(:project).permit(:name, :description, :archived)
	end

end