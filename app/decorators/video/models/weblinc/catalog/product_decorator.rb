module Weblinc
 decorate Catalog::Product, with: 'video' do
  decorated do
   field :video_header, type: String
   field :video_embed, type: String
  end
 end
end
