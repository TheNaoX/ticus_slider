json.cache! @image_parts do
  json.headers do
    json.array! @image_parts.headers do |image_part|
      json.id    image_part.id.to_s
      json.image image_part.image
      json.type  image_part.type
    end
  end

  json.bodies do
    json.array! @image_parts.bodies do |image_part|
      json.id    image_part.id.to_s
      json.image image_part.image
      json.type  image_part.type
    end
  end

  json.footers do
    json.array! @image_parts.footers do |image_part|
      json.id    image_part.id.to_s
      json.image image_part.image
      json.type  image_part.type
    end
  end
end
