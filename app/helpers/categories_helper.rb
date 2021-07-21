module CategoriesHelper
  def history_path(_query_history)
    Category.find(1)
  end

  def engineering_path(_query_engineering)
    Category.find(3)
  end

  def art_path(_query_art)
    Category.find(4)
  end

  def philosophy_path(_query_philosophy)
    Category.find(2)
  end

  def psychology_path(_query_psychology)
    Category.find(6)
  end

  def bottom_img(art, idx)
    img = ''
    img << image_tag(url_for(art.image.blob), class: 'article-img')
    img.html_safe if idx.even?
  end
end
