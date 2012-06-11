packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libncurses5
  /
when "precise"
  packages |= %w/
    libncurses5
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
