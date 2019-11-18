class AddBadgeToSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :badge, :text

    after_initialize :set_defaults

    def set_defaults
      self.badge ||= "http://placehold.it/250x250"
    end
  end
end
