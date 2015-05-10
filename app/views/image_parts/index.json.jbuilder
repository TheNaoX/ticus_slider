json.cache! @image_parts do
  %i( headers bodies footers ).each do |type|
    json.set! type do
      json.array! @image_parts.send(type) do |image_part|
        json.id    image_part.id.to_s
        json.image image_part.image.url
        json.type  image_part.type
      end
    end
  end
end
