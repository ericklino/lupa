class Device < ActiveRecord::Base
  include SearchCop
  mount_uploader :phone_img, CellImageUploader

  belongs_to :mark
  has_many :evaluations
  validates :phone_img, :model_device, :processor, :os, :size_device, :type_device, :mark, presence:true

  # Implementation search with gem searchcop
  search_scope :search do
    attributes :model_device, :processor, :os, :type_device
  end



  def cont_eval
    evaluations.count
  end




  # def self.search(search)
  #   where("model_device like ?", "%#{search}%")
  # end

  def percent_of_evaluation(eval_spec)
    percent = 0
    percent = (eval_spec * 100 / cont_eval)
    percent > 0 ? percent.to_s << "%" :percent
  end

end
