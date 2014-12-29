RSpec::Matchers.define :create_model do
  def for(n)
    @number = n
    self
  end

  def times
    @create_count = @number
    self
  end

  match do |model|
    klass = model.class
    name = klass.table_name.singularize

    @create_count ||= 1

    before_count = klass.count

    @create_count.times { create(name) }

    @created_count = klass.count - before_count
    @created_count == @create_count
  end

  description { "create #{@created_count} #{'record'.pluralize(@created_count)}" }
  failure_message do
    "expected to create #{@created_count} #{'record'.pluralize(@created_count)}, but created #{@created_count}"
  end
end

RSpec::Matchers.define :have_not_null_constraint_on do |field|
  match do |model|
    model.send("#{field}=", nil)
    begin
      model.save!(validate: false)
      false
    rescue ActiveRecord::StatementInvalid
      true
    end
  end

  description { "have NOT NULL constraint on #{field}" }
  failure_message { "expected to have NOT NULL constraint on #{field}, but not" }
end
