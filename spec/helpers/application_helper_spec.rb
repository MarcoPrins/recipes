require 'spec_helper'

describe ApplicationHelper do
  describe "#render_markdown" do
    it "returns true" do
      html = helper.render_markdown('This is a *test* for markdown rendering')
      expect(html).to eq("<p>This is a <em>test</em> for markdown rendering</p>\n")
    end
  end
end
