
module.exports = (robot) ->
  insults = [
    "I come bearing a gift. I'll give you a hint. It's in my diaper and it's not a toaster.",
    "Am I to spend the entire day wallowing around in my own feces? A little service here!",
    "You know, I rather like this God fellow. Very theatrical, you know. Pestilence here, a plague there. Omnipotence... gotta get me some of that.",
    "Do these huggies make my ass look big?",
    "Damn you, vile woman! You've impeded my work since the day I escaped from your wretched womb."
    "There's always been a lot of tension between you and me. And it's not so much that I want to kill you, it's just, I want you not to be alive anymore.",
    "Victory is mine!",
    "When the world is mine, your death shall be quick and painless.",
    "Forecast for tomorrow; a few sprinkles of genius with a chance of doom!",
    "Damn you all.",
    "You're quite clearly the end result of a drunken back-seat grope-fest and a broken prophylactic!",
    "I'm not having fun anymore. I think you should know that.",
    "Listen you, I'll use these facilities when I'm damn well ready! Until then, you shall continue to sanitize my crevasse and be damn grateful for the opportunity! Starting right... Well, not now... but soon!",
    "You know, as first lady of the American stage Helen Hayes once said...'I'm going to kill you!",
    "Now look here, you gourd-bellied codpiece! Leave me alone or I shall kill you! Now get out of here, you hobo!",
    "You're exactly the kind of idiot I would expect to see at Taco Bell at 1 in the morning!",
    "Your skin has the texture of a decorative autumn squash."
  ]

  robot.respond /insult/i, (res) ->
    res.reply res.random insults

  robot.respond /insult @?([\w .\-]+)\?*$/i, (res) ->
    name = res.match[1].trim()
    res.send "@#{name}: " + res.random insults
