class NotesController < ApplicationController
  before_action do
    @user = User.find_by(:id => session[:user_id])
    unless @user
      head 403
    end
  end

  def index
  end

  def create
    note_params = params.require(:note).permit(:title, :body)
    @note = @user.notes.create(note_params)
    redirect_to('/notes')
  end
end
