require "tildoc/version"

module Tildoc
  def ~
    margin = scan(/^ +/).map(&:size).min
    gsub(/^ {#{margin}}/, '')
  end
end

String.send(:include, Tildoc)

