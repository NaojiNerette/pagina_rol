module NavigationHelper

  def my_menu_items
    Proc.new do |primary|
      @items_menu = Post.all
      primary.item :home, 'Contenidos', root_path do |sub_nav|
        @items_menu.each do |post|
          sub_nav.item :post, post.title, url_for(post)
        end
      end
    end
  end
end
