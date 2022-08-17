class UsersController < ApplicationController
  # has_many :jurors

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      council: params[:council],
      password: params[:password],

    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name] || @user.name
    @user.council = params[:council] || @user.council
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password

    if @user.save
      render :show
    else
      render json: { errors: @user.errors.full_messages }, status: 401
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: { message: "User Removed from Council." }
  end
end
