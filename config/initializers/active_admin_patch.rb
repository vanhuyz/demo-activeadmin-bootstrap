# module ActiveAdmin
#   module Views
#     class Header

#       alias_method :original_build_site_title, :build_site_title
#       alias_method :original_build_global_navigation, :build_global_navigation
#       alias_method :original_build_utility_navigation, :build_utility_navigation

#       def build_site_title
#         div class: "side_bar_top" do
#           original_build_site_title
#         end
#       end

#       def build_global_navigation
#         div class: "side_bar_content" do
#           original_build_global_navigation
#         end
#       end

#       def build_utility_navigation
#         div class: "side_bar_footer" do
#           original_build_utility_navigation
#         end
#       end
#     end

#     module Pages
#       class Base

#         alias_method :original_build, :build

#         # This should be the same as add_classes_to_body but for the html main element
#         def add_classes_to_html_tag
#           document.add_class(params[:action])
#           document.add_class(params[:controller].gsub('/', '_'))
#           document.add_class("active_admin")
#           document.add_class("logged_in")
#           document.add_class(active_admin_namespace.name.to_s + "_namespace")
#         end

#         def build(*args)
#           original_build
#           add_classes_to_html_tag
#         end

#         def build_page
#           within @body do
#             div id: "wrapper" do
#               div id: "details_view" do
#                 build_title_bar
#                 build_page_content  
#                 #build_footer
#               end
#               div id: "master_view" do
#                 build_header
#               end
#             end
#           end
#         end
#       end
#     end
#   end
# end