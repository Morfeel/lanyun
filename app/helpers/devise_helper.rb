module DeviseHelper
  def devise_error_messages!
    flash_alerts = []
    error_key = 'errors.messages.not_saved'

    if !flash.empty?
      flash_alerts.push(flash[:error]) if flash[:error]
      flash_alerts.push(flash[:alert]) if flash[:alert]
      # flash_alerts.push(flash[:notice]) if flash[:notice]
      error_key = 'devise.failure.invalid'
    end

    return "" if resource.errors.empty? && flash_alerts.empty?
    errors = resource.errors.empty? ? flash_alerts : resource.errors.full_messages

    messages = errors.map { |msg| content_tag(:li, msg) }.join

    if resource
      sentence = I18n.t('errors.messages.not_logged', :count    => errors.count,
                      :resource => resource.class.model_name.human.downcase)

    else

      sentence = I18n.t('errors.messages.not_logged', :count    => errors.count)

    end


    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">x</button>
      <strong>#{sentence}</strong>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end
end