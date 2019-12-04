class ArticlesController < ApplicationController
  # Article handling logic.
  # index, show, new, edit, create, update, destroy
  # Each function corresponds to their respective html file. E.G. index.html.erb


  # Authentication handling. Ask password for everything except viewing.
  http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]


  def index
    # Show entire list of articles.
    @articles = Article.all
  end

  def show
    # Show 1 article from database by ID provided by request.
    @article = Article.find(params[:id])
  end

  def new
    # New article page.
    # @article is init incase some function routes here and it is nill, it's error check method will throw a tantrum.
    # Used by 'create'
    @article = Article.new
  end

  def edit
    # Update/Edit article page.
    # Find article by ID first.
    # Used by 'update'
    @article = Article.find(params[:id])
  end

  def create
    # Article creation logic.

    # We can check what parameters are passed on clicking submit
    # render plain: params[:article].inspect 

    # "Article" (app/models/article.rb class) model is mapped to the database. We pass the form parameters to it.
    @article = Article.new(article_params)

    # Check if savable. Validations in models/article.rb.
    if @article.save
      redirect_to @article # On success, display article.
    else
      # render is used so that @article and state is transferred. redirect_to will issue new request.
      render 'new' # On failure, go to new function.
    end
  end

  def update
    # Update handling.
    # Find article to update by ID.
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    # Find article to destroy.
    # Destroy
    @article = Article.find(params[:id])
    @article.destroy

    # Nothing to do here, take user to some working space.
    # Index is a good space.
    redirect_to articles_path
  end

  private
    def article_params
      # "Strong Parameters" security feature. Only permitted fields are allowed in a mass update.
      # Malicious requests with extra fields are blocked.
      # 400 Bad request on non-completion of fields.
      params.require(:article).permit(:title, :text)
    end
end
