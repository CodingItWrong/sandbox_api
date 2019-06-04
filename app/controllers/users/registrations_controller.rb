# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    super
    create_sample_resources
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  private

  def created_user
    User.find_by(email: params['user']['email'])
  end

  def create_sample_resources
    create_sample_posts
    create_sample_restaurants
    create_sample_games
  end

  def create_sample_posts
    (1..3).each do |n|
      Post.create!(
        user: created_user,
        title: "Sample Post #{n}",
        body: "This is sample post #{n}",
      )
    end
  end

  def create_sample_restaurants
    sushi_place =
      created_user.restaurants.create!(
        name: 'Sushi Place', address: '123 Main Street',
      )
    burger_place =
      created_user.restaurants.create!(
        name: 'Burger Place', address: '456 Other Street',
      )

    sushi_place.dishes.create!(name: 'Volcano Roll', rating: 3)
    sushi_place.dishes.create!(name: 'Salmon Nigiri', rating: 4)

    burger_place.dishes.create!(name: 'Barbecue Burger', rating: 5)
    burger_place.dishes.create!(name: 'Slider', rating: 3)
  end

  def create_sample_games
    ps = created_user.systems.create!(name: 'PlayStation')
    wii = created_user.systems.create!(name: 'Wii')
    xb_360 = created_user.systems.create!(name: 'Xbox 360')

    ps.games.create!(title: 'Castlevania: Symphony of the Night', year: 1_997)
    ps.games.create!(title: 'Final Fantasy 7', year: 1_997)
    wii.games.create!(title: 'Okami', year: 2_006)
    xb_360.games.create!(title: 'Fallout 3', year: 2_008)
    xb_360.games.create!(title: 'Portal', year: 2_007)
  end
end
