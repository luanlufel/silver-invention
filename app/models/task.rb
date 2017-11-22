class Task < ActiveRecord::Base
      belongs_to :user 
      
      auto_html_for :content do
      html_escape
      image(width: '100%', height: 250)
      youtube(width: '100%', height: 250)
      link target: '_blank', rel: 'nofollow'
      simple_format
      
      end
      
      validates :user_id, presence: true
      validates_presence_of :content, on: :create, message: "Campo não pode ser nulo"
      
end
