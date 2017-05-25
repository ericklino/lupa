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

  ## == Devise ==
  config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
   config.authorize_with :cancan

   config.navigation_static_links = {
  'Relatórios' => 'http://www.google.com'
}


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

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new

    # export
    bulk_delete
    # show
    edit

    delete do
      except ['About']
    end

    delete

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

    # config.model "User" do
    #   list do
    #     field :id
    #     #field :name
    #     field :email
    #     field :admin
    #   end
    #   edit do
    #     #field :name
    #     field :email
    #     field :encrypted_password
    #     # field :confirm_password
    #   end
    #   show do
    #   end
    # end

    config.model "Question" do
      list do
        field :id
        field :type_question
        field :enunciation
        field :category
        field :quiz
      end
      edit do
        field :enunciation
        field :type_question
        field :category do
          inline_add false
          inline_edit false
        end
        field :quiz do
          inline_add false
          inline_edit false
        end
        field :alternatives do
          inline_add false
        end
      end
    end

#------------Config avaliação ----------------------"
  config.model "Evaluation" do

    list do
      field :id
      field :user
      field :device
      field :status
    end

    edit do
      field :user
      field :device
      field :status
    end

    show do

    end
end
#------------Config alternativa ----------------------"
  config.model "Alternative" do
    list do
      field :id
      field :description
      field :weight
      field :type_alternative
    end
    edit do
      field :description
      field :weight
      field :type_alternative
    end
  end
#------------Config cateogoria----------------------"
  config.model "Category" do
    list do
      field :id
      field :description
    end
    edit do
      field :description
    end
  end
#------------Config diagnosticos----------------------"
  config.model "Diagnostic" do

    list do
      field :id
      field :description
      field :score
      field :type_diagnostic
    end

    edit do
      field :description
      field :score
      field :type_diagnostic

    end

    show do

    end
end
#------------Config dispositivos----------------------"
  config.model "Device" do
    list do
      field :id
      field :phone_img
      field :model_device
      field :processor
      field :os
      field :size_device
      field :type_device
      field :mark
    end
    edit do
      field :phone_img
      field :model_device
      field :processor
      field :os
      field :size_device
      field :type_device
      field :mark
    end
    show do

    end
  end
#------------Config marca ----------------------"
  config.model "Mark" do
    list do
      field :id
      field :name
    end
    edit do
      field :name
    end
  end
#------------Config tipo ----------------------"
  config.model "Quiz" do
    list do
      field :id
      field :title
      field :type
    end
    edit do
      field :title
      field :type
      field :description
      field :questions
    end
  end
#--------------------------------------------------------------------#

  end
end
