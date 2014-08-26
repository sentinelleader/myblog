module MenuHelpers

  def build_menu_item(nav_item)
    data = '
      <span class="w-nav-title">'+nav_item+'</span>
      <span class="w-nav-arrow"></span>'
    return data
  end

end
