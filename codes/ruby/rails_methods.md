# Ruby on Rails methods

---

## as_json

examples

```ruby

Schedule.includes(:user, :events).
      where("schedule_date > ?", today).
      where(users: { isPublic: true }).
      as_json(include: [
                { user: { only: [:name] } },
                { events: { only: [:event_name] } },
              ])
# => "comment"=>"user2",
  # "schedule_date"=>"2020-11-11",
  # "user_id"=>5,
  # "created_at"=>"2020-10-28T16:38:05.930+09:00",
  # "updated_at"=>"2020-11-01T11:48:21.761+09:00",
  # "start_time"=>16.0,
  # "user"=>{"name"=>"testUser"}, # include
  # "events"=>[{"event_name"=>"結果"}, {"event_name"=>"ちゃん"}] # include
```

```ruby
user = User.first
# => #<User id: 1, first_name: ‘Tatsuro’, last_name: ‘Baba’, email: ‘harakirisoul@gmail.com’>
user.as_json
# => {"email"=>"user_1@example.com", "first_name"=>"User1", "id"=>1, "last_name"=>"USER1"}
```

link

- [ActiveModel as_json のオプション一覧](https://qiita.com/tmak_tsukamoto/items/b45cdc3ad6a0607534cb)
- [rdoc Active Model JSON Serializer](https://api.rubyonrails.org/classes/ActiveModel/Serializers/JSON.html#method-i-as_json)
- [Rails の as_json をもうちょっと便利に使うオプション](https://qiita.com/tbaba/items/ea44025b056f708ab0b4)

notes

---
