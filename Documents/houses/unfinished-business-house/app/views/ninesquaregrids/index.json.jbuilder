json.array!(@ninesquaregrids) do |ninesquaregrid|
  json.extract! ninesquaregrid, :id, :text, :picture
  json.url ninesquaregrid_url(ninesquaregrid, format: :json)
end
