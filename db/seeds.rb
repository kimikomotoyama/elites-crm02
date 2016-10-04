Company.create(name: "株式会社ABC不動産", url: "http://www.abc_sample.co.jp/", address: "東京都新宿区東新宿4")
Company.create(name: "株式会社NOWALL", url: "http://nowall.co.jp/", address: "東京都新宿区西新宿6")
Company.create(name: "株式会社ZZZ運輸", url: "http://www.zzz_sample.co.jp/", address: "東京都新宿区北新宿8")

Faker::Config.locale = :ja

100.times do |index|
  Customer.create(
    family_name: Faker::Name.last_name,
    given_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    company_id: rand(1..3)
  )
end