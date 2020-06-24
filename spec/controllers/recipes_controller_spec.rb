# frozen_string_literal: true

require 'rails_helper'

describe RecipesController, type: :controller do
  describe 'GET index' do
    it 'fetches data from contentful' do
      expect_any_instance_of(Contentful::Client).to(
        receive(:entries).with(content_type: 'recipe'))
        .and_return([])

      get :index
    end
  end

  describe 'GET show' do
    it 'fetches data from contentful' do
      expect_any_instance_of(Contentful::Client).to(
        receive(:entry).with('test-id'))

      get :show, params: { id: 'test-id' }
    end
  end
end
