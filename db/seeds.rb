User.destroy_all
u1 = User.create :email => 'josh@ga.co', :password => 'chicken'
u2 = User.create :email => 'bob@ga.co', :password => 'chicken'

Chore.destroy_all
c1 = Chore.create :name => 'Clean stuff', :description => 'Go clean that shit', :reward => 20
c2 = Chore.create :name => 'Clean more stuff', :description => 'Go clean that other shit', :reward => 20

Group.destroy_all
g1 = Group.create :name => '1337 doodz'
g2 = Group.create :name => 'Crap Chaps'

###########################################
# Associations

# g1.users << u1
g2.users << u2

u1.chores << c1
u2.chores << c2
