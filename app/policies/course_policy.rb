class CoursePolicy < ApplicationPolicy
  def create?
    true
  end

  def new?
    create?
  end

  def show?
    true
  end

  def update?
    record.teacher == user
  end

  def edit?
    update?
  end

  def destroy?
    record.teacher == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
