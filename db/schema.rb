# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_30_190348) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

<<<<<<< HEAD
  create_table 'articles', force: :cascade do |t|
    t.string 'headline'
    t.string 'body'
    t.string 'url'
    t.string 'sentiment'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'topic_id'
    t.bigint 'source_id'
    t.index %w[source_id], name: 'index_articles_on_source_id'
    t.index %w[topic_id], name: 'index_articles_on_topic_id'
  end

  create_table 'filters', force: :cascade do |t|
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'user_id'
    t.bigint 'source_id'
    t.index %w[source_id], name: 'index_filters_on_source_id'
    t.index %w[user_id], name: 'index_filters_on_user_id'
=======
  create_table "articles", force: :cascade do |t|
    t.string "headline"
    t.string "body"
    t.string "url"
    t.string "sentiment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "topic_id"
    t.bigint "source_id"
    t.index ["source_id"], name: "index_articles_on_source_id"
    t.index ["topic_id"], name: "index_articles_on_topic_id"
  end

  create_table "filters", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "source_id"
    t.index ["source_id"], name: "index_filters_on_source_id"
    t.index ["user_id"], name: "index_filters_on_user_id"
>>>>>>> 41855c2... Created relationships
  end

  create_table 'sources', force: :cascade do |t|
    t.string 'name'
    t.string 'url'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

<<<<<<< HEAD
  create_table 'subscriptions', force: :cascade do |t|
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'user_id'
    t.bigint 'topic_id'
    t.index %w[topic_id], name: 'index_subscriptions_on_topic_id'
    t.index %w[user_id], name: 'index_subscriptions_on_user_id'
=======
  create_table "subscriptions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "topic_id"
    t.index ["topic_id"], name: "index_subscriptions_on_topic_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
>>>>>>> 41855c2... Created relationships
  end

  create_table 'topics', force: :cascade do |t|
    t.string 'title'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'name'
    t.string 'email'
    t.string 'password_digest'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

<<<<<<< HEAD
  add_foreign_key 'articles', 'sources'
  add_foreign_key 'articles', 'topics'
  add_foreign_key 'filters', 'sources'
  add_foreign_key 'filters', 'users'
  add_foreign_key 'subscriptions', 'topics'
  add_foreign_key 'subscriptions', 'users'
=======
  add_foreign_key "articles", "sources"
  add_foreign_key "articles", "topics"
  add_foreign_key "filters", "sources"
  add_foreign_key "filters", "users"
  add_foreign_key "subscriptions", "topics"
  add_foreign_key "subscriptions", "users"
>>>>>>> 41855c2... Created relationships
end
