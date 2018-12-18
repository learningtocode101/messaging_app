class Message
  attr_reader :content, :time

  def initialize(content)
    @content = content
    @time = Time.now.strftime("%d-%m-%Y | %H:%M")
  end

  def preview
    @content.split("").take(20).join
  end
end
