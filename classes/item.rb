class Item
  attr_accessor :genre, :author, :source, :label, :publish_date
  attr_reader :id, :archived

  def initialize(publish_date, archived: false)
    @id = rand(1..1000)
    @publish_date = publish_date
    @archived = archived
    @label = nil
    @genre = nil
    @author = nil
  end

  def can_be_archived?
    (Date.today - @publish_date) > 10 * 365 * 24 * 60 * 60
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
