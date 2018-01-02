class NotesController < ApplicationController
  def index
    @notes = Note.all
    render json: @notes
  end

  def create
  end

  def update
    note = Note.find {|note| note.user === current_user} || Note.create(user: current_user)
    note.content = params['note']['content']
    note.save
  end

  def destroy
  end
end
