require 'active_support/concern'

module ActiveRecordExtension

  extend ActiveSupport::Concern

  class_methods do
    def children
      reflect_on_all_associations(:has_one).map(&:name) +
      reflect_on_all_associations(:has_many).map(&:name)
    end
  end
end

ActiveRecord::Base.send(:include, ActiveRecordExtension)