json.array!(@foursquaregrids) do |foursquaregrid|
  json.extract! foursquaregrid, :id, :text, :picture
  json.url foursquaregrid_url(foursquaregrid, format: :json)
end
