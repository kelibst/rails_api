module Api
  module V1
    class BooksController < ApplicationController
      before_action :set_book, only: [:show, :edit, :update, :destroy]
      def index
        @books = Book.all
      end

      def create 
        book = Book.new(books_params)
        if book.save
          render json: book, status: :created
        else
          render json: book.errors, status: :unproccessable_entity
        end
      end

      def show
      end

      def edit
      end

      def destroy
        Book.find(params[:id]).destroy!
        head :no_content
      end

      private

      def set_book
        @book = Book.find(params[:id])
      end

      def books_params
        params.require(:book).permit(:title, :author, :descriiption )
      end
      

    end
  end
end


