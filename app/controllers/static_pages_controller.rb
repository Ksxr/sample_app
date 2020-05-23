class StaticPagesController < ApplicationController
  def home
    # => "app/views/#{リソース名}/@{アクション名}/.html.erb"
  end

  def help
  end
  
  def about
  end
    # => app/views/statics_viwes
  def contact
  end

end
