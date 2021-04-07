Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hand', to: 'cards#hand', as: 'show_hand'
  get 'draw', to: 'cards#draw', as: 'draw_card'
  get 'show', to: 'cards#show', as: 'show_deck'
  get 'shuffle', to: 'cards#shuffle', as: 'shuffle_deck'
  root to: 'cards#hand'
end
