module SpotsHelper
  def marker_content(spot)
    html = ""
    html << "<strong>Name:</strong> #{spot.name}<br />"

    # To use variant of image, you need to add 'image_processing' gem to your Gemfile."
    # html << "<strong>Photo:</strong> #{image_tag spot.photo.variant(resize: "100x100^")}<br />" if spot.photo.attached?
    html << "<strong>Photo:</strong> #{image_tag spot.photo, width: '100%'}<br />" if spot.photo.attached?

    html << "<strong>Url:</strong> #{spot.url}<br />"
    return html.html_safe
  end
end
