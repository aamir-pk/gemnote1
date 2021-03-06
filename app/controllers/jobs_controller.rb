class JobsController < ApplicationController
  before_action :set_job, only: [:show]

  # GET /jobs
  def index
    @jobs = Job.all
    if params["lastmonth"] == '1'
      start_date = Date.today.last_month.beginning_of_month
      end_date   = Date.today.last_month.end_of_month
      @jobs = @jobs.where(:posted_on => start_date..end_date)
    end
    if params.key? "job_type_id"
      @jobs = @jobs.where(:job_type_id => params["job_type_id"])
    end

    render json: @jobs
  end

  # GET /jobs/1
  def show
    render json: @job
  end

  # POST /jobs
  def create
    @job = Job.new(job_params)
    @job.posted_on = Date.today

    if @job.save
      render json: @job, status: :created, location: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_params
      params.require(:job).permit(:title, :description, :company_name, :company_url, :job_type_id)
    end
end
