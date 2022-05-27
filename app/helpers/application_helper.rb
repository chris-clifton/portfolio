module ApplicationHelper
  def active_nav(view_title, action_name, controller_name)
    if controller_name == 'home'
      if view_title == action_name
        'active-nav-element'
      else
        'nav-element'
      end
    else
      if view_title == controller_name
        'active-nav-element'
      else
        'nav-element'
      end
    end
  end

  def active_mobile_nav(view_title, action_name, controller_name)
    if controller_name == 'home'
      if view_title == action_name
        'active-mobile-nav-element'
      else
        'mobile-nav-element'
      end
    else
      if view_title == controller_name
        'active-mobile-nav-element'
      else
        'mobile-nav-element'
      end
    end
  end
end
