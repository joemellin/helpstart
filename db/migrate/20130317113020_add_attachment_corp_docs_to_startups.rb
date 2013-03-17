class AddAttachmentCorpDocsToStartups < ActiveRecord::Migration
  def self.up
    change_table :startups do |t|
      t.attachment :corp_docs
    end
  end

  def self.down
    drop_attached_file :startups, :corp_docs
  end
end
