c1 = Curriculum.create!(name: 'カリキュラム1')
c2 = Curriculum.create!(name: 'カリキュラム2')
c3 = Curriculum.create!(name: 'カリキュラム3')

Chapter.create!(name: 'カリキュラム1のチャプター1', curriculum: c1)
Chapter.create!(name: 'カリキュラム1のチャプター2', curriculum: c1)
Chapter.create!(name: 'カリキュラム1のチャプター3', curriculum: c1)

Chapter.create!(name: 'カリキュラム2のチャプター1', curriculum: c2)
Chapter.create!(name: 'カリキュラム2のチャプター2', curriculum: c2)
Chapter.create!(name: 'カリキュラム2のチャプター3', curriculum: c2)

Chapter.create!(name: 'カリキュラム3のチャプター1', curriculum: c3)
Chapter.create!(name: 'カリキュラム3のチャプター2', curriculum: c3)
Chapter.create!(name: 'カリキュラム3のチャプター3', curriculum: c3)