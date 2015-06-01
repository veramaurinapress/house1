json.array!(@sixteensquaregrids) do |sixteensquaregrid|
  json.extract! sixteensquaregrid, :id, :text, :picture
  json.url sixteensquaregrid_url(sixteensquaregrid, format: :json)
end
