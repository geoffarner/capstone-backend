class JurorsController < ApplicationController
  def index
    @jurors = Juror.all
    render :index
  end

  def show
    @juror = Juror.find_by(id: params[:id])
    render :show
  end

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
    render json: { Juror Removed From Jury Pool }
  end
end
