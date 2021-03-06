class SubdomainPresent
	def self.matches?(request)
		request.subdomain.present?
	end
end

class SubdomainBlank
	def self.matches?(request)
		request.subdomain.blank?
	end
end


Rails.application.routes.draw do

  resources :feedbacks
  get 'pages/product'
  get 'pages/pricing'
  get 'pages/signin'
  constraints(SubdomainPresent) do
  	root 'projects#index', as: :subdomain_root
  	devise_for :users
  	resources :users, only: :index
  	resources :projects do
      resources :feedbacks
    end
  end

  constraints(SubdomainBlank) do
	root 'welcome#index'
	resources :accounts
  end

  
end
