class ProjectController < ApplicationController
  
#  layout 'standard'
  
  def list
      @projects = Project.all
   end

   def show
      @project = Project.find(params[:id])
      @project.update_column('count_view', @project.count_view + 1) if @project.present?

   end
  
   def new
      @project = Project.new
      @teamleads = Teamlead.all
   end

   def project_params
      params.require(:projects).permit(:title, :teamlead_id, :description)
   end

   def create
      @project = Project.new(project_params)

      if @project.save
         redirect_to :action => 'list'
      else
         @teamleads = Teamlead.all
         render :action => 'new'
      end
   end
   
   def edit
      @project = Project.find(params[:id])
      @teamleads = Teamlead.all
   end
   
   def project_param
      params.require(:project).permit(:title, :teamlead_id, :description)
   end
   
   def update
      @project = Project.find(params[:id])
      
      if @project.update_attributes(project_param)
         redirect_to :action => 'show', :id => @project
      else
         @teamleads = Teamlead.all
         render :action => 'edit'
      end
   end
   
   def delete
      Project.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   
   def show_teamleads
      @teamlead = Teamlead.find(params[:id])
   end
end
