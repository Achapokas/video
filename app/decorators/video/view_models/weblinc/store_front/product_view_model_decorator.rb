module Weblinc
  decorate StoreFront::ProductViewModel, with: 'video' do
   def frame_styles
     aspect_ratio.present? ? "padding-bottom: #{aspect_ratio}%; height: 0;" : nil
   end

   private

   def aspect_ratio
     return nil if width.nil? || height.nil?
     height / width * 100
   end

   def width
     find_dimension(/width=["'](\d+)["']/)
   end

   def height
     find_dimension(/height=["'](\d+)["']/)
   end

   def find_dimension(regex)
     results = video_embed.match(regex)
     if results.present?
       value = results.captures[0].to_f
       value > 0 ? value : nil
     end
   end
  end
end
