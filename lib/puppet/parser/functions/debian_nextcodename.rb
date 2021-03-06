module Puppet::Parser::Functions
  newfunction(:debian_nextcodename, :type => :rvalue) do |args|
    case args[0]
      when "etch"    then "lenny"
      when "lenny"   then "squeeze"
      when "squeeze" then "wheezy"
      when "wheezy"  then "sid"
      when "sid"     then "experimental"
      else "sid"
    end
  end
end
