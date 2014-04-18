module ApplicationHelper
  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  def create_nav_link(action, text, path)
    content_tag :li, class: action?(action.to_s) ? 'active' : '' do
      link_to text, path
    end
  end
end
