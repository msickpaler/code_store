module DeepFreezable
  def deep_freeze(a_or_h)
    a_or_h.freeze

    case a_or_h
    when Array
      a_or_h.each do |element|
        element.freeze
      end
    when Hash
      a_or_h.each do |k, v|
        k.freeze
        v.freeze
      end
    end
  end
end

# includeでインスタンスメソッドとして登録、extendでクラスメソッドとして登録
class Team
  extend DeepFreezable

  COUNTRIES = deep_freeze(%w[Japan US India])
end

class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
  p CURRENCIES.frozen?
  CURRENCIES.each { |k, v| p k.frozen? && v.frozen? }
end
