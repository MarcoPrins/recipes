require 'redcarpet'

module ApplicationHelper
  def render_markdown(markdown)
    renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    renderer.render(markdown).html_safe
  end
end
