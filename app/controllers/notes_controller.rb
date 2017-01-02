class NotesController < ApplicationController
	before_sction :set_book, only: [:create, :destroy] 

 # POST /books
 # POST /books.json
  def create
    @note = @book.note.new(note_params)

    respond_to do |format|
      if @note.save
      	redirect_to @book, notice:"Note successfully created."
      else
	    redirect_to @book, notice:"Unable to create note"
      end
    end
  end


 # DELETE /books/1
 # DELETE /books/1.json
  def destroy
  	@note = @book.notes.find(params[:id])
    @note.destroy

    redirect_to @book, notice:"Note deleted"

  end

 private
     # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:note).permit(:title, :note)
    end

end
