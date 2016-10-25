Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'add/:number_1/:number_2' => 'calculator#add'
  # get 'subtract/:number_1/:number_2' => 'calculator#subtract'
  get ':operation/:number_1/:number_2' => 'calculator#math'
end
