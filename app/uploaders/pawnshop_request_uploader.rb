class PawnshopRequestUploader < ApplicationUploader
  include CarrierWave::MiniMagick

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  version :thumb do
    process resize_to_fill: [350, 263]
  end
end
