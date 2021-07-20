module CategoriesHelper
    def history_path(history)
        history = Category.find(1)
    end
    def engineering_path(engineering)
        engineering = Category.find(3)
    end

    def art_path(art)
       art = Category.find(4)
    end

    def philosophy_path(philosophy)    
       philosophy = Category.find(2)
    end

    def psychology_path(psychology)
        psychology = Category.find(6)
    end
end