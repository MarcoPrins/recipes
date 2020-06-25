# frozen_string_literal: true

class Contentful::Recipe < ContentfulModel::Base
  self.content_type_id = 'recipe'

  has_one :chef, class_name: 'Contentful::Chef'

  def photo_url
    photo.fields[:file].url
  end
end
