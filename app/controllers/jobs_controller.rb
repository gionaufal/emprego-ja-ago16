class JobsController < ApplicationController
  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
    @companies = Company.all
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job
    else
      @companies = Company.all
      flash[:notice] = 'Não foi possível criar a vaga'
      render :new
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :company_id, :location, :category, :description, :featured)
  end


end
