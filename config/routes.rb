Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    get "admin_pages/home"
    get "admin_pages/help"
  end
end
