module ArticlesHelper
  def pluralize_article(string)
    (Article.all.length > 1) ? string.pluralize : string
  end
end
