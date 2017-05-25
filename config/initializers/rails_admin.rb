RailsAdmin.config do |config|

  ### Popular gems integration

  ################  Global configuration  ################
  config.main_app_name = ['Área administrativa']
  config.default_items_per_page = 20
  config.compact_show_view = false

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar false

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except ['About']
    end
    # export
    bulk_delete
    # show
    edit
    delete do
      except ['About']
    end
    # show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    ###  User  ###
    config.model 'User' do
      # navigation_label 'Gerenciar usuários'
      # navigation_icon 'icon-user'
      list do
        field :id
        field :name
        field :email
        field :updated_at
        field :admin
      end
      edit do
        field :name
        field :email
        field :password
        field :password_confirmation
        field :admin
      end
    end

    ### Slide ###
    config.model 'Slide' do
      list do
        field :id
        field :title
      end
      edit do
        field :title
        field :image
      end
    end

    ### Contact ###
    config.model 'Contact' do
      visible false
    end

    ### About ###
    config.model 'About' do
      list do
        field :id
        field :title
      end
      edit do
        field :title
        field :about_images
        field :content, :wysihtml5
      end
    end

    config.model 'AboutImage' do
      visible false
      edit do
        field :image
        field :description
      end
    end
  end
end
