module SearchableHelper
  def search
    @query = params[:search][:query] || "" unless params[:search].nil?
    @query = params[:query] unless @query
    @query.strip!
    @searchables = perform_query searchable_class, @query
  end
  
  protected
  
  def perform_query searchable_class, query
    searchable_class.find_by_solr(query, :limit => :all).docs
  end
  
  def searchable_class
    raise "Must implement SearchHelper#model_class method"
  end
end