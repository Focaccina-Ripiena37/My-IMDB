module ApplicationHelper
  # Check if an image asset exists under app/assets/images
  def image_asset_exists?(logical_path)
    File.exist?(Rails.root.join("app/assets/images", logical_path))
  end

  # Resolve a safe image path by trying common extensions and finally a fallback.
  # base_path can be provided with or without extension.
  def safe_image_path(base_path, exts: %w[jpg jpeg png webp gif], fallback: "actors/placeholder.png")
    return base_path if image_asset_exists?(base_path)

    exts.each do |ext|
      candidate = base_path.end_with?(".#{ext}") ? base_path : "#{base_path}.#{ext}"
      return candidate if image_asset_exists?(candidate)
    end

    fallback
  end

  # Render star rating (0..5)
  # Usage: star_rating(3) -> ★★★☆☆ with appropriate classes for styling
  def star_rating(value, out_of: 5)
    val = value.to_i.clamp(0, out_of)
    content_tag(:span, class: "stars", aria: { label: "Rating #{val} out of #{out_of}" }) do
      (1..out_of).map do |i|
        cls = [ "star", (i <= val ? "filled" : nil) ].compact.join(" ")
        content_tag(:span, "★", class: cls)
      end.join.html_safe
    end
  end
end
