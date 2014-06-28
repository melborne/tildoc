require "tildoc/version"

module Tildoc
  def ~
    margin = scan(/^[ \t]*(?=\S)/).map(&:size).min
    gsub(/^[ \t]{#{margin}}/, '')
  end
end

String.send(:include, Tildoc)

