User.destroy_all
u1 = User.create :name => 'Josh', :email => 'josh@ga.co', :password => 'chicken'
u2 = User.create :name => 'Bob', :email => 'bob@ga.co', :password => 'chicken'
u3 = User.create :name => 'Phil', :email => 'phil@ga.co', :password => 'chicken'
u4 = User.create :name => 'Andrew', :email => 'andrew@ga.co', :password => 'chicken'
u5 = User.create :name => 'Suzanne', :email => 'suzanne@ga.co', :password => 'chicken'
u6 = User.create :name => 'Jessica', :email => 'jessica@ga.co', :password => 'chicken'
u7 = User.create :name => 'Kate', :email => 'kate@ga.co', :password => 'chicken'
u8 = User.create :name => 'William', :email => 'william@ga.co', :password => 'chicken'
u9 = User.create :name => 'Dianne', :email => 'Dianne@ga.co', :password => 'chicken'
u10 = User.create :name => 'Belinda', :email => 'belinda@ga.co', :password => 'chicken'

Chore.destroy_all
c1 = Chore.create :name => 'Clean stuff', :description => 'Go clean that shit', :reward => 20
c2 = Chore.create :name => 'Clean more stuff', :description => 'Go clean that other shit', :reward => 20

Group.destroy_all
g1 = Group.create :name => '1337 doodz'
g2 = Group.create :name => 'Crap Chaps'

###########################################
# Associations


g1.users << u7
g1.users << u8
g1.users << u9
g1.users << u10
g2.users << u2
g2.users << u3
g2.users << u4
g2.users << u5
g2.users << u6


u2.chores << c1
u2.chores << c2
