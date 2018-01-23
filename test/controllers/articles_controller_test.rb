require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should not save empty article' do
    assert_not Article.new.save
  end
end
