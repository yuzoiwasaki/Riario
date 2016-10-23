module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?

    html = errmsg = ""
    resource.errors.full_messages.each do |msg|
      errmsg += "<li>#{msg}</li>"
    end
    html += <<-EOF
    <div class="devise-error">
      <div class="alert alert-danger">
        <ul>
          #{errmsg}
        </ul>
      </div>
    </div>
    EOF
    html.html_safe
  end
end
