Rails.application.routes.draw do

    resources :contacts do
        collection do
            post :confirm
            get :thankyou
        end
    end

    root 'contacts#new'

end
