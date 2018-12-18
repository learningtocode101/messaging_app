class Message
  attr_reader :content, :time, :id

  def initialize(content, id=1)
    @content = content
    @time = Time.now.strftime("%d-%m-%Y | %H:%M")
    @id = id
  end

  def preview
    @content.split("").take(20).join
  end

end
