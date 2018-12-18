class Message
  attr_reader :content, :time

  def initialize(content, time=Time.now)
    @content = content
    @time = time
  end

  def preview
    @content.split("").take(20).join
  end

  def display_time
    @time.strftime("%d-%m-%Y | %H:%M")
  end

end
