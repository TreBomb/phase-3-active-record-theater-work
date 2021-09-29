#Seed roles
peter_pan = Role.create(character_name: "Peter Pan")
captain_hook = Role.create(character_name: "Captain Hook")

#Seed auditions
john = Audition.create(actor: "John", location: "Rome Theater", phone: "1234567890", hired: "false", role_id: peter_pan.id)
franklin = Audition.create(actor: "Franklin", location: "Local Theater", phone: "0987654321", hired: "false", role_id: peter_pan.id)
todd = Audition.create(actor: "Todd", location: "Home Recording", phone: "2340985671", hired: "false", role_id: peter_pan.id)
kevin = Audition.create(actor: "Kevin", location: "AT&T Stadium", phone: "9874361294", hired: "false", role_id: captain_hook.id)
steven = Audition.create(actor: "Steven", location: "Florida State Ampitheater", phone: "3627364947", hired: "false", role_id: captain_hook.id)