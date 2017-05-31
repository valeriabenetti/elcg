class ProfilesController < ApplicationController
  # GET /profiles
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  def show
    @profile = Profile.find(params[:id])
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    @profile = Profile.find(params[:id])
  end

  # POST /profiles
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /profiles/1
  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to @profile, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /profiles/1
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to profiles_url, notice: 'Profile was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def profile_params
    params.require(:profile).permit(:name, :role, :user_id)
  end
end
