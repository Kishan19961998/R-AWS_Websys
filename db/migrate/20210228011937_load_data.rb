class LoadData < ActiveRecord::Migration[6.1]
    def up
      # Create initial users.
      down
      em = User.new(username: 'Elon Musk')
      em.save(validate: false)
      sp = User.new(username: 'Sundar Pichai')
      sp.save(validate: false)
      tc = User.new(username: 'Tim Cook')
      tc.save(validate: false)
      sn = User.new(username: 'Satya Nadella')
      sn.save(validate: false)
      jb = User.new(username: 'Jeff Bezoz')
      jb.save(validate: false)
      mz = User.new(username: 'Mark Zuckerberg')
      mz.save(validate: false)


      # Create initial photos.
      emp1 = Photo.new(date_time: '2022-02-01 10:44:23', file_name: 'musk1.jpg')
      emp1.user = em
      emp1.save(validate: false)

      emp2 = Photo.new(date_time: '2022-02-02 20:00:00', file_name: 'musk2.jpg')
      emp2.user = em
      emp2.save(validate: false)


      spp1 = Photo.new( date_time: '2022-02-03 20:05:03', file_name: 'pichai1.jpg')
      spp1.user = sp
      spp1.save(validate: false)

      spp2 = Photo.new(date_time: '2022-02-04 18:02:00', file_name: 'pichai2.jpg')
      spp2.user = sp
      spp2.save(validate: false)


      tcp1 = Photo.new(date_time: '2022-02-05 17:30:00', file_name: 'cook1.jpg')
      tcp1.user = tc
      tcp1.save(validate: false)

      tcp2 = Photo.new( date_time: '2022-02-06 16:02:49', file_name: 'cook2.jpg')
      tcp2.user = tc
      tcp2.save(validate: false)


      snp1 = Photo.new(date_time: '2022-02-07 23:48:00', file_name: 'nadella1.jpg')
      snp1.user = sn
      snp1.save(validate: false)

      snp2 = Photo.new(date_time: '2022-02-08 14:26:00', file_name: 'nadella2.jpg')
      snp2.user = sn
      snp2.save(validate: false)


      jbp1 = Photo.new(date_time: '2022-02-09 09:02:00', file_name: 'bezoz1.jpg')
      jbp1.user = jb
      jbp1.save(validate: false)

      jbp2 = Photo.new(date_time: '2022-02-09 09:02:00', file_name: 'bezoz2.jpg')
      jbp2.user = jb
      jbp2.save(validate: false)


      mzp1 = Photo.new(date_time: '2022-02-10 09:03:00', file_name: 'berg1.jpg')
      mzp1.user = mz
      mzp1.save(validate: false)

      mzp2 = Photo.new(date_time: '2022-02-10 09:03:00', file_name: 'berg2.jpg')
      mzp2.user = mz
      mzp2.save(validate: false)

# upload initial comments.
      comment = Comment.new(date_time: '2022-02-01 10:48:25', :comment_text => 'Starlink space program')
      comment.user = sp
      comment.photo = emp1
      comment.save(validate: false)

      comment = Comment.new(date_time: '2022-02-01 10:48:25', :comment_text => 'new Tesla model release date?')
      comment.user = mz
      comment.photo = emp2
      comment.save(validate: false)

      comment = Comment.new(date_time: '2022-02-01 10:48:25', :comment_text => 'edo okati by musk')
      comment.user = em
      comment.photo = spp1
      comment.save(validate: false)

    end

    def down
      Comment.delete_all
      Photo.delete_all
      User.delete_all
    end
  end
