require 'rails_helper'

describe 'Books API' do
    it 'should return all books' do
        get '/api/v1/books'
        expect(response).to have_http_status(:success)
    end
end