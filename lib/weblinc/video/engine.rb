module Weblinc
  module Video
    class Engine < ::Rails::Engine
      include Weblinc::Plugin
      isolate_namespace Weblinc::Video

      initializer 'weblinc.video' do
        # configure and customize WebLinc here
        Plugin.append_partials(
         'admin.edit_product_relations',
         'weblinc/admin/catalog_products/video'
        )

        Plugin.append_partials(
         'admin.edit_product',
         'weblinc/admin/catalog_products/video_form'
        )

        Plugin.append_partials(
         'store_front.product_show',
         'weblinc/store_front/products/video'
        )

        Plugin.append_stylesheets(
          'store_front.components',
          'weblinc/store_front/video/components/video'
        )
      end
    end
  end
end
