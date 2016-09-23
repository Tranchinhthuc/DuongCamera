module StaticPagesHelper
  def class_new_arrivals index
    default_class = 'col-md-3 new-grid simpleCart_shelfItem wow flipInY animated'

    class_name = if (index == 0 || index == 3)
                   default_class
                 elsif index == 1
                   "#{default_class} new-mdl"
                 else
                   class_name = "#{default_class} new-mdl1"
                 end
  end

  def class_popular_product index
    default_class = 'col-md-3 gallery-grid wow flipInY animated'

    class_name = if (index == 0 || index == 3)
                   default_class
                 elsif index == 1
                   "#{default_class} gallery-grid1"
                 else
                   class_name = "#{default_class} gallery-grid2"
                 end
  end
end
