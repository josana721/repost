json.array!(@try1s) do |try1|
  json.extract! try1, :id, :name, :cpnumber, :address
  json.url try1_url(try1, format: :json)
end
