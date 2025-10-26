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

  def trophy_icon
    <<~SVG.html_safe
      <svg class="icon-trophy" viewBox="0 0 24 24" width="18" height="18" aria-hidden="true">
        <path d="M6 2h12v2h3v3c0 3.31-2.69 6-6 6h-.35A5.99 5.99 0 0 1 12 15a5.99 5.99 0 0 1-2.65-2H9c-3.31 0-6-2.69-6-6V4h3V2zm-1 6c0 2.21 1.79 4 4 4 .35 0 .69-.05 1-.14V6H5v2zm15-2h-5v5.86c.31.09.65.14 1 .14 2.21 0 4-1.79 4-4V6zM9 17h6v2H9v-2zm-2 3h10v2H7v-2z" />
      </svg>
    SVG
  end
end
