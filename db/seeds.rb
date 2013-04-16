#encoding: utf-8

Project.destroy_all
Project.create({:title=>'CMS6Bey',:description=>'这是一个根据在线分享的淘宝客.',
	       :detail=>'这是一个开源的淘宝客,用户可以在这里分享自己喜欢的宝贝,可以收藏，@好友等等',
	       :home_url=>'http://bey6.herokuapp.com/',
	       :github_url=>'https://github.com/mistbow/cms_6bey'})

Project.create({:title=>'epoch_client',:description=>'这是一个纽约华人社区.',
	      :detail=>'在epoch，你可以看到纽约的所有华人餐馆，了解华人，寻求华人帮助的有效社区.',
	      :home_url=>'http://epoc.herokuapp.com',
	      :github_url=>'https://github.com/fireweb/blaze'})

Project.create({:title=>'chatter',:description=>'这是一个在线聊天室.',
	     :detail=>'chatter不用于一般的聊天室，它不仅能够实现实时聊天，还对聊天记录进行持久话，用户可以收藏和关注聊天室.',
	     :home_url=>'http://chatter9.herokuapp.com',
	     :github_url=>'https://github.com/fireweb/chater'})

Attachment.destroy_all
Attachment.create({:img_path=>'http://bcs.duapp.com/weidaxue123/cms6bey.png',project_id:Project.first.id})
Attachment.create({:img_path=>'http://bcs.duapp.com/weidaxue123/bey6-all.png',project_id:Project.first.id})
Attachment.create({:img_path=>'http://bcs.duapp.com/weidaxue123/bey6-deal.png',project_id:Project.first.id})
Attachment.create({:img_path=>'http://bcs.duapp.com/weidaxue123/bey6-sq.png',project_id:Project.first.id})
Attachment.create({:img_path=>'http://bcs.duapp.com/weidaxue123/epoc-main.png',project_id:Project.all[1].id})
Attachment.create({:img_path=>'http://bcs.duapp.com/weidaxue123/epoc-map.png',project_id:Project.all[1].id})
Attachment.create({:img_path=>'http://bcs.duapp.com/weidaxue123/chatter-home.png',project_id:Project.all[2].id})
Attachment.create({:img_path=>'http://bcs.duapp.com/weidaxue123/chatter-main.png',project_id:Project.all[2].id})
Attachment.create({:img_path=>'http://bcs.duapp.com/weidaxue123/chatter-room.png',project_id:Project.all[2].id})
Attachment.create({:img_path=>'http://bcs.duapp.com/weidaxue123/chatter-new-room.png',project_id:Project.all[2].id})


Person.destroy_all
Person.create({name:'Race',email:'ken@yankist.com',location:'Beijing',power:'ruby,rails,mysql...'})
Person.create({name:'small_fish__',email:'songjiayang1@gmail.com',location:'Chengdu',power:'ruby,rails,mysql...'})