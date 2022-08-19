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
    @juror = Juror.new(
      panel_number: params[:panel_number],
      name: params[:name],
      age: params[:age],
      sex: params[:sex],
      residence: params[:residence],
      housing: params[:housing],
      education: params[:education],
      law_experience: params[:law_experience],
      occupation: params[:occupation],
      military_service: params[:military_service],
      jury_relation: params[:jury_relation],
      prior_jury: params[:prior_jury],
      notes: params[:notes],
      jury_pool: params[:jury_pool],
      jury_box: params[:jury_box],
      jury_alternate: params[:jury_alternate],

    )
    if @juror.save
      render :show, status: :created
    else
      render json: { errors: juror.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @juror = Juror.find_by(id: params[:id])
    @juror.panel_number = params[:panel_number] || @juror.panel_number
    @juror.name = params[:name] || @juror.name
    @juror.age = params[:age] || @juror.age
    @juror.sex = params[:sex] || @juror.sex
    @juror.residence = params[:residence] || @juror.residence
    @juror.housing = params[:housing] || @juror.housing
    @juror.education = params[:education] || @juror.education
    @juror.law_experience = params[:law_experience] || false
    @juror.occupation = params[:occupation] || @juror.occupation
    @juror.military_service = params[:military_service] || false
    @juror.jury_relation = params[:jury_relation] || false
    @juror.prior_jury = params[:prior_jury] || @juror.prior_jury
    @juror.notes = params[:notes] || @juror.notes
    @juror.jury_pool = params[:jury_pool] || false
    @juror.jury_box = params[:jury_box] || false
    @juror.jury_alternate = params[:jury_alternate] || false

    if @juror.save
      render :show
    else
      render json: { errors: @juror.errors.full_messages }, status: 401
    end
  end

  def destroy
    juror = Juror.find_by(id: params[:id])
    juror.destroy
    render json: { message: "Juror Removed From Jury Pool." }
  end
end
