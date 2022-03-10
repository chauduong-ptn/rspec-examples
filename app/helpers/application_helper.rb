module ApplicationHelper
  def all_errors_of(model)
    model.errors.full_messages
  end
end
