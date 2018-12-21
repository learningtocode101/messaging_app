require 'data_mapper'
class Message

  include DataMapper::Resource
    property :id,           Serial
    property :content,      Text
    property :created_at,   DateTime

  def preview
    content.split("").take(20).join
  end

  def display_time
    created_at.strftime("%d-%m-%Y | %H:%M")
  end

end
