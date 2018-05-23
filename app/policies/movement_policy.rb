class MovementPolicy < ApplicationPolicy
  def index?
    true
  end
  
  def create?
    user.present? && user.admin?
  end
  
  def update?
    return true if user.present? && user.admin?

    user.present? && user == movement.user
  end
  
  def destroy?
    return true if user.present? && user.admin?
  end
  
  private
  
  def movement
    record
  end
end