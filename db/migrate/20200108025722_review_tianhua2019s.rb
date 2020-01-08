class ReviewTianhua2019s < ActiveRecord::Migration[6.0]
  def change
    remove_column :tianhua2019s, :jan, :decimal
    remove_column :tianhua2019s, :feb, :decimal
    remove_column :tianhua2019s, :mar, :decimal
    remove_column :tianhua2019s, :apr, :decimal
    remove_column :tianhua2019s, :may, :decimal
    remove_column :tianhua2019s, :jun, :decimal
    remove_column :tianhua2019s, :jul, :decimal
    remove_column :tianhua2019s, :aug, :decimal
    remove_column :tianhua2019s, :sep, :decimal
    remove_column :tianhua2019s, :oct, :decimal
    remove_column :tianhua2019s, :nov, :decimal
    remove_column :tianhua2019s, :dec, :decimal
    remove_column :tianhua2019s, :monday, :decimal
    remove_column :tianhua2019s, :tuesday, :decimal
    remove_column :tianhua2019s, :wednesday, :decimal
    remove_column :tianhua2019s, :thursday, :decimal
    remove_column :tianhua2019s, :friday, :decimal
    add_column :tianhua2019s, :max_month_unit, :string
    add_column :tianhua2019s, :student_no, :integer
    add_column :tianhua2019s, :learn_times, :decimal
    add_column :tianhua2019s, :pop_course, :string
    add_column :tianhua2019s, :old_folk, :string
    add_column :tianhua2019s, :service_times, :integer
    add_column :tianhua2019s, :skywalker, :string
    add_column :tianhua2019s, :major, :string
    add_column :tianhua2019s, :best_addin, :string
  end
end
