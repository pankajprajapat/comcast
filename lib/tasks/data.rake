namespace :data do

  desc "add apples in basket"
  task :add_apple_to_basket, [:variety, :count] => :environment do |task, args|
    vrty = args[:variety] || ["Kashmiri Apple", "Green Apple", "Washington Apple"].sample
    ct = args[:count].to_i || rand(1..50)
    for i in (1..ct) do
      bkt = Apple.where(variety: vrty).last&.basket
      if bkt.present? && bkt.fill_rate < 100
        basket = bkt
      else
        basket = Basket.find_by(fill_rate: 0)
      end
      if basket.present?
        Apple.create(basket: basket, variety: vrty)
        rt = (basket.reload.apples.count.to_f/basket.capacity.to_f)*100
        basket.update(fill_rate: rt)
        puts "Apple added to baskets | Apple counter ::#{i} | Apple variety :: #{vrty}"
      else
        puts "All baskets are full. We couldn't find the place for #{ct-i} apples"
        break;
      end
    end
  end

  desc "Generate baskets"
  task :generate_basket, [:count] => :environment do |task, args|
    bskt_ct = args[:count].to_i || 50
    for i in (1..bskt_ct) do
      num = rand(2..27)
      Basket.create(capacity: num, fill_rate: 0)
    end
    puts "Basket generated"
  end

end
