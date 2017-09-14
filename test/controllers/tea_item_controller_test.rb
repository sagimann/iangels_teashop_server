require 'test_helper'

class TeaItemControllerTest < ActionDispatch::IntegrationTest
  test "should return non empty list of all teas" do
     ti = TeaItem.new
     ti.name = "ti2"
     ti.price = 2.0
     ti.save

     ti = TeaItem.new
     ti.name = "ti3"
     ti.price = 52.0
     ti.save
     get '/teas'
     assert response.parsed_body.length == 2
  end


  test "should return non empty list of featured teas" do
     ti = TeaItem.new
     ti.name = "ti2"
     ti.price = 2.0
     ti.save

     ti = TeaItem.new
     ti.name = "ti3"
     ti.price = 52.0
     ti.save
     get '/teas/featured'
     assert response.parsed_body.length == 1
  end


  test "should return non empty tea item" do
     ti = TeaItem.new
     ti.name = "ti2"
     ti.price = 2.0
     ti.description = "desc1"
     ti.image = "image1"
     ti.link = "link1"
     ti.type = "Black"
     ti.save

     get '/tea/' + ti.id.to_s
     assert response.parsed_body.key? ("id")
     assert response.parsed_body['name'] = ti.name
     assert response.parsed_body['price'] = ti.price
     assert response.parsed_body['description'] = ti.description
     assert response.parsed_body['image'] = ti.image
     assert response.parsed_body['link'] = ti.link
     assert response.parsed_body['type'] = ti.type
  end

end
