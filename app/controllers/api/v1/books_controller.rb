module Api
  module V1
    class BooksController < ApplicationController
      
      def index
        render json: Book.all
      end

      def create 
        book = Book.new(books_params)
        if book.save
          render json: book, status: :created
        else
          render json: book.errors, status: :unproccessable_entity
        end
      end

      def destroy
        Book.find(params[:id]).destroy!
        head :no_content
      end

      private

      def books_params
        params.require(:book).permit(:title, :author, :descriiption )
      end

    end
  end
end


