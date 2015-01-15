
#Show chat? Set to false if not
showChat = true
channel = "michaelforrest"

# write your own messages here:
secondsPerMessage = 15
messages =
    _({

      
      "FAQ: What is this?!": "This is live electronic music by Michael Forrest"
      "Like on Facebook": "facebook.com / michael.forrest.music"
      "FAQ: Is this a DJ set?": "No! It's all my own music, played live"
      "Follow on Twitter": "@mf_music"
      "New here?": "Tell me where you're from in the chat :)"
      "Follow on SoundCloud": "soundcloud.com / michaelforrest"
      "Releases, live dates, blog posts": "go to michaelforrestmusic.com"
      "Music videos and experiments": "youtube.com / michaelforrest"


      }).map (value, key)-> {title: key, text: value}



if Meteor.isClient
  Template.messages.helpers
    messages: -> messages
    username: -> username
    showChat: -> showChat
    channel: -> channel

  Template.messages.rendered = ->
    $('.messages').unslick()
    $('.messages').slick
      autoplay: true
      slidesToScroll: 1
      autoplaySpeed: secondsPerMessage * 1000
