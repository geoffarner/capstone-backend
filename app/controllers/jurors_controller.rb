class JurorsController < ApplicationController
  def index
    jurors = Juror.all
    render json: jurors.as_json
  end
end
