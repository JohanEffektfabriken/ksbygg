module ApplicationHelper
  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  def create_account_links
    if user_signed_in?
      render 'layouts/partials/navbar_signedin_dropdown'
    else
      render 'devise/sessions/inline_new'
    end
  end

  def create_nav_link(action, text, path)
    content_tag :li, class: action?(action.to_s) ? 'active' : '' do
      link_to text, path
    end
  end

  def create_from_input_addon(glyph_postfix)
    content_tag :span, '', class: 'input-group-addon' do
      content_tag :span, '', class: "glyphicon glyphicon-#{glyph_postfix}"
    end
  end

  def gravatar_url_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=252&d=mm"
  end
end
