require_relative '../../spec/minitest_helper'

# describe '/root' do
#   it 'should return woo' do
#     visit '/'
#     page.body.must_equal 'root'
#   end
#
#   it 'return 200' do
#     get '/'
#     last_response.status.must_equal 200
#   end
#
#   it 'id' do
#     template_id = 12
#     get "/template/#{template_id}"
#     last_response.status.must_equal 200
#   end
#
#   it 'should has get id' do
#     visit '/template/1'
#     page.body.must_equal "1 on get"
#   end
# end


class AppFooTest < Minitest::Test
  require_relative '../../app'
  require 'rack/test'
  include Rack::Test::Methods

  def app
    App
  end

  def test_root_path
    get '/'
    assert_equal last_response.status, 200
  end
end