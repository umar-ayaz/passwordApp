class CredentialsController < ApplicationController

  def new
    @credential = Credential.new
  end

  def create
    @credential = Credential.new(params[:credential])
   # return render :json => current_user.id
    @credential.user_id = current_user.id

    if @credential.save
      redirect_to   credentials_path
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end

  end


  def index
     @credentials = current_user.credentials #Credential.find_all_by_user_id(current_user.id)

  end

  def show

  end
end
