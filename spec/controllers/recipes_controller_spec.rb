# frozen_string_literal: true

require 'rails_helper'

describe RecipesController, type: :controller do
  describe 'GET index' do
    it 'fetches data from contentful' do
      expect(Contentful::Recipe).to(receive(:all)).and_call_original
      get :index
    end
  end

  describe 'GET show' do
    it 'fetches data from contentful' do
      expect(Contentful::Recipe).to(receive(:find).with('test-id')).and_call_original
      get :show, params: { id: 'test-id' }
    end
  end
end
