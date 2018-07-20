class PostResource < JSONAPI::Resource
  attributes :title, :body

  before_create do
    _model.user = current_user
  end

  def self.records(options = {})
    user = current_user(options)
    user.posts
  end

  def self.creatable_fields(context)
    super - [:user]
  end

  def self.updatable_fields(context)
    super - [:user]
  end

  private

  def self.current_user(options)
    options.fetch(:context).fetch(:current_user)
  end

  def current_user
    context.fetch(:current_user)
  end

end
