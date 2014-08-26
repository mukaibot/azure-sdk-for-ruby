# Code validate private/public IP acceptable ranges.
class IPAddr
  PRIVATE_RANGES = [
    IPAddr.new('10.0.0.0/8'),
    IPAddr.new('172.16.0.0/12'),
    IPAddr.new('192.168.0.0/16')
  ]

  def private?
    return false unless self.ipv4?
    PRIVATE_RANGES.each do |ipr|
      return true if ipr.include?(self)
    end
    false
  end

  def public?
    !private?
  end

  class << self
    def validate_ip_and_prefix(ip, cidr)
      if cidr.to_s.empty?
        raise "Cidr is missing for IP '#{ip}'."
      elsif valid?(ip)
        raise "Ip address '#{ip}' is invalid."
      elsif !IPAddr.new(ip).private?
        raise "Ip Address #{ip} must be private."
      end
    end

    def validate_address_space(ip)
      if ip.split('/').size != 2
        raise "Cidr is invalid for IP #{ip}."
      elsif valid?(ip)
        raise "Address space '#{ip}' is invalid."
      end
    end

    def address_prefix(ip, cidr)
      ip + '/' + cidr.to_s
    end

    def valid?(ip)
      (IPAddr.new(ip) rescue nil).nil?
    end
  end
end
