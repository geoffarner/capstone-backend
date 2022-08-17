class JurorsController < ApplicationController
  # belongs_to :users

  def index
    jurors = Juror.all
    render json: jurors.as_json
  end

  def show
    @juror = Juror.find_by(id: params[:id])
    render :show
  end

  def create
    juror = Juror.new(
      panel_number: params[:panel_number],
      name: params[:name],
      age: params[:age],
      sex: params[:sex],
      residence: params[:residence],
      housing: params[:housing],
      education: params[:password],
      law_experience: params[:law_experience],
      occupation: params[:occupation],
      military_service: params[:password],
      jury_relation: params[:jury_relation],
      prior_jury: params[:prior_jury],
      notes: params[:notes],
      jury_pool: params[:jury_pool],
      jury_box: params[:jury_box],
      jury_alternate: params[:jury_alternate],

    )
    if juror.save
      render json: { message: "Juror created successfully" }, status: :created
    else
      render json: { errors: juror.errors.full_messages }, status: :bad_request
    end
  end

  ### FIX UPDATE ###
  def update
    @juror = Juror.find_by(id: params[:id])
    @juror.jury_pool = params[:jury_pool] || @juror.jury_pool
    @juror.jury_box = params[:jury_box] || @juror.jury_box
    @juror.jury_alternate = params[:jury_alternate] || @juror.jury_alternate

    if @juror.save
      render :show
    else
      render json: { errors: @juror.errors.full_messages },
             status: 401
    end
  end

  def destroy
    juror = Juror.find_by(id: params[:id])
    juror.destroy
    render json: { message: "Juror Removed From Jury Pool." }
  end
end
