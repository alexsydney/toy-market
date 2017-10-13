require 'rails_helper'

RSpec.describe 'toys/new', type: :view do
  before { assign :toy, Toy.new }

  it 'renders a toy form' do
    render
    assert_select 'form[action=?][method=?]', toys_path, 'post' do
      assert_select 'input[name=?]', 'toy[name]'
      assert_select 'textarea[name=?]', 'toy[description]'
      assert_select 'input[name=?][value=?]', 'commit', 'OK'
      assert_select 'a', text: 'Cancel'
    end
  end
end