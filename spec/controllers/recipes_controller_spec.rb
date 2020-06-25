# frozen_string_literal: true

require 'rails_helper'

describe RecipesController, type: :controller do
  describe 'GET index' do
    it 'fetches data from contentful' do
      VCR.use_cassette("recipes/all") do
        expect(Contentful::Recipe).to(receive(:all)).and_call_original
        get :index
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'GET show' do
    it 'fetches data from contentful' do
      VCR.use_cassette("recipes/find") do
        expect(Contentful::Recipe).to(receive(:find).with('test-id')).and_call_original
        get :show, params: { id: 'test-id' }
        expect(response.status).to eq(200)
      end
    end
  end
end
