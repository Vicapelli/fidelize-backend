Rails.application.routes.draw do
  # Defines the root path route ("/")

  post "sign_up", to: "registrations#create"
  get "verify",   to: "registrations#confirm_email"
end
