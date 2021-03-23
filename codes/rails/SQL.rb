scope :after_today, -> { where('schedule_date >= ?', Time.zone.today.to_s) }
scope :public_user, -> { where(users: { isPublic: true }) }
scope :sort_by_schedule_date, lambda {
  sort { |a, b| a[:schedule_date] <=> b[:schedule_date] }
}
scope :sort_by_created_at, lambda {
  sort { |a, b| a[:created_at] <=> b[:created_at] }
}

# 数制限
# limit(3)

# スタート地点（この場合、31個目を含む5つ）
# Client.limit(5).offset(30)

# 重複のグループ分け（注文のある日付ごとにOrderオブジェクトの作成）
Order.select('date(created_at) as ordered_date, sum(price) as total_price').group('date(created_at)')

# 昇順
# order(created_at:)

# 降順
# order(created_at: :desc)

# TODO: multi order
#

# order以外の並べ替え
# sort { |a, b| a[:created_at] <=> b[:created_at] }

# 取得するカラムの選択
# select("viewable_by, locked")

# 重複の削除
# Client.select(:name).distinct

# 条件の付加
# where('schedule_date >= ?', Time.zone.today.to_s)
# where(user_id: user_id)
# where(users: { isPublic: true })

# 外部テーブルを結合してそれで条件付けする
schedules = Schedule.includes(:user, :events)
                    .where(users: { isPublic: true })

# スケジュールの値を全て取得する？。　外部テーブルでソートする。
schedules = Schedule.includes(:user, :events, :likes)
                    .select('schedules.*')
                    .order('likes.created_at desc')

# メインのテーブル以外はincludeでjsonに含める
schedules.as_json(
  only: %i[id schedule_date comment s_image],
  include: [
    { events: { only: %i[event_name order] } },
    { user: { only: %i[id name image] } }
  ]
)
