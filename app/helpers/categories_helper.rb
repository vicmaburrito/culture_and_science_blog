module CategoriesHelper
  def history_path(_history)
    history = Category.find(1)
  end

  def engineering_path(_engineering)
    engineering = Category.find(3)
  end

  def art_path(_art)
    art = Category.find(4)
  end

  def philosophy_path(_philosophy)
    philosophy = Category.find(2)
  end

  def psychology_path(_psychology)
    psychology = Category.find(6)
  end
end
