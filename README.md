# funicu

A mindfulness/wellness experiment integrating the Twilio API with Rails. 

Inspired by the [experience sampling method][experience-sampling], we wanted to create an app that would allow users to spontaneously record thoughts, feelings, or reminders to themselves throughout the day to monitor their mental and physical well-being. 

---

Upon creating an account and signing in, users can view the messages/reminders they've sent themselves in their personal journal.

![journal][journal]

---

Users can also view messages from other users who have chosen to make their journals public.

![dash][dash]

---

Or, send a message to yourself or another user through the application itself.

![new][new]

---

### In progress

- allow app to send users customized reminders at requested intervals via sidekiq/sidetiq or heroku scheduler
- d3 for tracking patterns of user habits
- expand channels to also allow for tracking health/eating habits/exercise habits via numerical inputs(?) etc, in addition to journaling

[experience-sampling]: https://en.wikipedia.org/wiki/Experience_sampling_method
[journal]: https://github.com/eating247/funicu/blob/master/screenshots/funicu-journal.png
[dash]: https://github.com/eating247/funicu/blob/master/screenshots/funicu-dash.png
[new]: https://github.com/eating247/funicu/blob/master/screenshots/funicu-new.png