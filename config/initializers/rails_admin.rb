RailsAdmin.config do |config|

  ### Popular gems integration

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

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    # export
    bulk_delete
    # show
    edit
    delete
    # show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

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

      end

      edit do
        field :enunciation
        field :type_question
        field :category
        field :alternatives

      end

      show do

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
      field :kind
    end

    edit do
      field :description
      field :weight
      field :kind
    end

    show do

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

    show do

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

    show do

    end

end
#------------Config tipo ----------------------"
  config.model "Kind" do

      list do
        field :id
        field :description
      end

      edit do
        field :description
      end

      show do

      end
end
#--------------------------------------------------------------------#
  end
end
