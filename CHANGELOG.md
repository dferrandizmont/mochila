# Changelog

What changes in each version of Mochila, newest first. The "Unreleased" section fills up as changes land and becomes
the next version on the day it ships.

Numbering: the last number goes up with fixes and small tweaks (0.1.0 → 0.1.1), the middle one with new features
(→ 0.2.0), and 1.0.0 will be the production launch in the stores. Every version is tried first in the private test
channels; Google Play and the App Store get several at once, so they can skip numbers.

Mochila is still in its test stage: every build below is a test build for the people trying the app, and none of them
is in a store yet. The name in each heading is the release, and the number in brackets is the build the app shows in
Settings.

## Unreleased

Nothing yet.

## v0.1.0-e2.6.9 (0.1.0+46) · 2026-10-27

- Only the "El parte" design is left; the old "Classic" look is gone.
- New app icon and splash screen (sky and backpack).
- Signing out takes you back to the welcome screen: sign in with Google, or keep going without an account.
- Pasting a message you had discarded now offers the suggestions again.
- At night, the light theme shows a dusk sky with a moon and stars.
- Animated loading cards, after-school activities full width, better contrast.
- The word for the after-school club now uses the word of each language.
- The website uses three columns on wide screens.

## v0.1.0-e2.6.8 (0.1.0+45) · 2026-10-27

- Mochila without an account: it no longer asks you to sign in with Google, you just start. Without an account your
  family can read 3 notices a day and 20 a month, the data is kept on our servers and is deleted after 90 days without
  opening the app. You can link Google later and keep your family.
- A notice in Settings › Account about where your data is kept when you have no account.
- The permission to read messages with AI says something slightly different now, so the app asks for it once more.
- Free launch: with an account, 20 notices a day and 200 a month for the family.

## v0.1.0-e2.6.7 (0.1.0+44) · 2026-10-26

- The night notice is written in lines: "Tomorrow · <name>" and the backpack at the top; when you open it, one line
  per thing (backpack, who brings and who collects, activities, payments and signatures, menu). On Android it is a
  drop-down list; on iOS, line breaks.
- The menu in the notice is optional and off by default (Settings › Notifications › "Include the menu in the evening
  summary").
- "Mixed fruit" and "Wholemeal bread" now start with a lower case letter.
- You can sign out from the start-up error screen and from the "the website is not open yet" screen.
- Lists in Arabic and other right-to-left languages come out in the right order (Week, backpack and widget).
- iOS (still untested on the Mac): the share extension and the widget follow the language you picked in Mochila.

## v0.1.0-e2.6.6 (0.1.0+43) · 2026-10-25

- The example message on the welcome screen comes out in your app's language, not always in Catalan.
- School calendar in your language: holidays, non-school days and the start and end of term come out in your app's
  language, also in Basque and Galician. Before, they came out in Catalan or Spanish.
- Notices and timetable abbreviations follow the language of the titles; the backpack also recognises activities written
  in English, Basque or Galician.
- Prices use the format of each language.
- Website: the demo examples (message, menu and timetable) and their screenshots, in the five languages.

## v0.1.0-e2.6.5 (0.1.0+42) · 2026-10-24

- All the texts reviewed in Catalan, Spanish, English, Basque and Galician: more natural sentences, screen names in
  quotes inside a sentence, buttons in the imperative in the "El parte" design, and Galician and Basque corrections.
- The website is now in Basque and Galician too, with a language switcher. It is published separately.

## v0.1.0-e2.6.4 (0.1.0+41) · 2026-10-24

- Clearer language pickers: in Settings › Language and in "language for titles and notes", each language shows its
  own name in your app's language underneath, except the language the app is already in.
- Arabic and Urdu now look the same size as the other languages in those pickers.
- Backpack reminder: when what to bring or the child's name is in Arabic or Urdu, the text of the notice no longer
  comes out scrambled.

## v0.1.0-e2.6.3 (0.1.0+40) · 2026-10-24

- The app in Basque and Galician, on top of Catalan, Spanish and English (Settings › Language, or the language of the
  app on Android).
- What the AI writes, in 18 languages: titles, what to bring and notes can come out in Basque, Galician, French,
  Portuguese, Italian, German, Romanian, Bulgarian, Ukrainian, Russian, Arabic, Urdu or Chinese, as well as Catalan,
  Spanish and English, whatever the language of the message. Arabic and Urdu are shown right to left.
- The notices written by the server come out in your app's language.
- Security: the invisible characters that could scramble the text are removed.

## v0.1.0-e2.6.2 (0.1.0+39) · 2026-10-24

- The "no school" notice on Today only appears while that day is not in the calendar. If either adult has already
  added it, it disappears on both phones.
- The button says what it does: "Add it to my calendar", and it only appears if you have a phone calendar linked. If
  you do not, the notice is just informative.
- Week: a day without school appears only once, instead of repeated.
- It includes the fix from test 6.1: the "Mochila" calendar is created in your own account.

## v0.1.0-e2.6.1 (0.1.0+38) · 2026-10-24

- The "Mochila" calendar in your account: "Create a 'Mochila' calendar" now only reuses a "Mochila" calendar from the
  account you sign in to Mochila with. If there is none, it creates one in your account without asking. Calendars from
  other accounts on the phone no longer show up: if you want one, choose it by hand.

## v0.1.0-e2.6 (0.1.0+37) · 2026-10-23

- Live between the two adults: things ticked as done, and any change to the children, the activities, the school, the
  calendar, the timetable, the menu or the backpack rules, reach the other phone in seconds while the app is open.
- Leaving the app while it is reading: if Android interrupts the reading, it retries on its own when you come back and
  does not use another monthly reading.
- School calendar from Import: a PDF like the one from Terrassa is detected and goes into the school calendar, with
  the intensive day. Dates that have passed are shown as not in session.
- The "Mochila" calendar in your Google account: it shows up in Google Calendar and on your other devices. The screen
  says where each calendar is.
- After-school activities: the price has a period (per session, week, month, term, half-term, school year or one-off)
  and Expenses works out the monthly cost.
- Loading screens with pulsing cards across the app.
- Widget: "Tomorrow" only when it really is tomorrow, and the style screen in the "El parte" design.
- Week: a deleted pickup disappears without reopening the app.
- Tablet: comfortable dialog widths and a side bar that does not overflow with the keyboard.

## v0.1.0-e2.5.1 (0.1.0+36) · 2026-10-23

- Live ticks: what one adult ticks appears on the other phone right away, with the app open. The other phone is told
  without showing any notification, and the app also goes over the ticks every 45 seconds while Today or the backpack
  list is on screen.
- Calendar pasted in Import: it now compares with the official calendar. With the Terrassa text it only suggests the
  6 free-disposition days, and the holidays you already have are folded under "You already have them".
- The sun is higher, in the app and in the widget.

## v0.1.0-e2.5 (0.1.0+35) · 2026-10-23

- Shared backpack ticks: what one adult ticks, the other sees when they open the app or come back to it (including
  ticking from the widget).
- Notices from the other adult with details: with "Show details" turned on they say what changed, for example "Dani
  collects Lena today at 17:00" or "Dani has changed: Excursion to Poblet (Fri 23)". With the details hidden they
  stay generic.
- The notifications permission is one of the first steps when you install.
- Illustration: the sun is always visible, in the open sky between the tree and the school; on the tablet it also
  looks sharp in the widget.
- Widget: "List" no longer leaves an empty gap; the small one ("Up next") makes more room for the lines of that day;
  an event for both children is only mentioned once.
- School calendar: if you paste or share a calendar in Import, the app notices it and takes it to the school calendar.
  Before saving you see what is new, what has changed and what you already have (the official holidays are folded
  away), and nothing is overwritten without you seeing it. With the Terrassa text it only suggests the 6
  free-disposition days.
- Reading photos and messages: "swimming trunks" no longer loses the "swimming"; timetables like "10 h - 13 h" come
  out as "from 10:00 to 13:00".
- Dates: if a message says "tomorrow Friday" and you paste it on another day, the date goes to Friday and is shown as
  uncertain.

## v0.1.0-e2.4.1 (0.1.0+34) · 2026-10-23

- Illustrated widget: the sun moves across the sky during the day (before it stayed where it rose until midday); after
  sunset the moon comes out (before the sun stayed until midnight); the moon travels across the open sky without
  covering the roof.
- Small widget: it is now called "Mochila · Up next", because it shows the next day with something, which is not
  always tomorrow. Remove it and add it again to see the new name.
- When you add the widgets from Android: the previews come out in the new style and in your language, in light and
  dark.
- Widget caption: it names the pickups and the holidays of the day, and stops naming them a while after they have
  passed.
- Messages from the previous day: if a message says "tomorrow Friday" and you paste it on the Friday, the date moves
  to the Friday and is shown as uncertain, with a note for you to check it.
- The calendar of another school year: the technical list of notices is gone, only the explanation is left.
- Settings › Widget: the preview says "swimsuit and towel".

## v0.1.0-e2.4 (0.1.0+33) · 2026-10-23

- A live illustration on Today and in the "Illustrated" widget: each child's backpack, in their colour, goes from
  home to school and back following the timetable. If the after-school activity is away from school, a little house
  with its drawing appears and the backpack goes there. The sun and the moon rise and set at the real local time of the
  school, and the widget changes the drawing without waking the phone.
- Import (before it was called "News"): if a photo, a PDF or a message has nothing about school, the app says so;
  "Why?" really explains why it is for that child; messages are pasted, not shared.
- School calendar: if the PDF is from another school year, or you already have it, the app says so and lets you close
  it.
- Family: the after-school activities; the schools and timetables on one line, with the children on the right;
  Expenses with what is paid and what is still pending.
- Week: more air above the month.
- Who brings and who collects: more room for "alternating weeks".
- Today: "Today | Tomorrow" and a "+" the size of the date.
- Widget: the tick can be marked by tapping the whole line; the small one shows tomorrow in the evening; the caption
  names the pickups and holidays of the day; its settings have a back arrow; the widget's own picker offers List and
  Illustrated.
- Notices: "Try tomorrow's summary" shows the real text; the pickup notice does not repeat what the summary already
  says; if you turn on "hide details", it also applies to the notices that are already scheduled.

## v0.1.0-e2.3 (0.1.0+32) · 2026-10-22

- Today: the "Today | Tomorrow" switch is on the date line. In the afternoon the app shows tomorrow, but one tap
  brings you back to today. The hours card says which day it is ("TOMORROW · FRIDAY 23"), and in the afternoon the
  "Today" block says what they had for lunch today.
- Short names: the other adult appears by their first name ("Dani collects") on Today, in the Week, in the notices and
  in the pickups grid.
- Widget like the mock-up, in two styles (you choose them in Settings › Home screen widget). List: the caption of the
  day and one column per child with ticks you can mark. Illustrated: the caption of the day with the drawing of the
  house, the road, the backpack and the school.
- Small widget "Mochila · Tomorrow": it shows the next day with something (Monday, if the weekend is empty). Add it
  from Settings › Home screen widget or from the list of widgets on Android.
- Choose your icon in Settings › Appearance: Current, Sky, Peach, Mint, Lavender, Rose or Monochrome. Some launchers
  take a few seconds to change it.
- School calendars: the intensive day is no longer imported as dozens of separate days.

## v0.1.0-e2.2 (0.1.0+31) · 2026-10-22

- News (before it was the Inbox): at the top, how many things have arrived, and four buttons to bring them in:
  Message, Chat, Photo and PDF. Photo and PDF are read on the phone, the same as when you share a file. Each suggestion
  reads like a sentence, and the underlined part can be changed by tapping it: the date, the child, the place or what
  to bring. If the date is uncertain it says so and lets you pick the day, use the one it suggests, or add it without
  a date. Changes to something already saved (postponed, cancelled, updated) keep the old card, because it shows the
  before and the after.
- Week: it joins the week and the agenda. Each day with what each child takes ("Pau · smock"), who brings and who
  collects, "No date" with its counter and "Later". The month opens with the calendar button.
- Family: the children with their colour, the adults, the school (timetables, menu, calendar, backpack rules,
  activities), who brings and who collects, and the expenses of the month. Settings, with the gear at the top.
- Notices written as a sentence: "Before leaving: Pau has a bib and water; Lena, a flute and tracksuit." And, at
  night: "Tomorrow you bring and you collect Noa at 16:30." With "hide details" turned on, the lock screen still only
  shows the generic text.
- Today: the backpack no longer repeats the title of the notice ("Sandwich, to bring a sandwich…").

## v0.1.0-e2.1.1 (0.1.0+30) · 2026-10-22

- Brighter dark mode: the background, the cards, the lines and the header sky go up a step in the five colour ranges.
  The texts still read with the same contrast.
- Settings within reach: in Family there is a Settings button (the gear) at the top right. The last row of the list
  stays where it was.

## v0.1.0-e2.1 (0.1.0+29) · 2026-10-22

- A test version of the new design. It has everything from Preview 28 and, on top of that, the "El parte" style. The
  app still starts with the usual design ("Classic").
- To turn it on: Settings › Appearance › App style › "El parte". The change shows at once, and to go back you only
  have to choose "Classic".
- Today, brand new: at the top, a band of sky with the date and a sentence that sums up the day ("Today Pau wears
  comfortable clothes and trainers, water and a bib. You collect at 16:30. Tomorrow: …"), with a drawing of the house,
  the road, the backpack and the school (at night, a moon and stars). Then the backpack of each child, with ticks, and
  the hours of the day: who brings, school, lunch, who collects and activities. If you tap an hour, the school or the
  pickup opens with all its options.
- Four tabs: Today, News, Week and Family. Settings is at the end of Family.
- Settings › Appearance: the style, the colour range (Sky, Peach, Mint, Lavender or Rose) and the theme, with a
  preview. A range that matches the colour of one of the children cannot be chosen: you have to change the colour of
  that child first.
- The rest of the screens already take the new colours and lettering, but keep their usual shape. News, Week and
  Family change in the next batch.

## v0.1.0-preview.28 (0.1.0+28) · 2026-10-22

- Widget: it keeps the next 8 days and Android updates it on its own in the early hours and after the night summary,
  even if you do not open the app.
- Notices at the exact time: a new row in Settings › Notifications. Notices that arrive very late, for example
  after a restart, no longer show up.
- Who brings and who collects: a new option, "the other adult brings and collects". Week B starts empty and has a
  "Copy from week A" button.
- Deleting a duplicate: if you delete a task, its duplicates in the Inbox disappear. You no longer get "not found"
  when you come back in.
- Offline: when the network comes back, the "Offline" pill goes away by itself with the app open, and what you edited
  offline is saved.
- Changes from the other adult: Today updates without closing the app, and the notice closes by itself.
- Holiday cards: the Autumn Festival appears for the whole family, at its time and with the notes in your language.
  The Chestnut Festival is no longer mixed up with it.
- Updating a task: if you paste the same message again, the notes are replaced; if it is another message, only what is
  new is added, without repeating.
- Excursions: they show the return time when the message says so.
- Forms: if you leave with unsaved changes, it asks you before throwing them away.

## v0.1.0-preview.27 (0.1.0+27) · 2026-10-19

- Much faster: opening the app and deleting things make far fewer requests (deleting one item: from 87 to 4). The
  "too many attempts in a row" message no longer appears.
- Changing tab is instant: when you come back to Today, the cards are there straight away.
- Widget: at night it says "Tomorrow", and the style screen comes out in the language of the app.
- Agenda › List: first what has a date, in order; "No date" at the end, with a shortcut at the top.
- What to bring: the subjects are chosen in a field with a search box, without the breaks.
- Each child's school: you choose from your schools or add a new one (it is no longer a free-text field), and the
  record updates if you change it from the school.
- Selected chips: they read well in dark mode too.
- School holidays: the Autumn Festival no longer shows up as "Occasion Festival".

## v0.1.0-preview.26 (0.1.0+26) · 2026-10-19

- Editing at the same time: if someone changed something while you were saving, what you wrote is kept. You can choose
  "Save anyway", which saves only what you changed and respects the rest, or "Reload".
- Clearing a field (place, notes, amount, end time…) is now really saved.
- Tasks over several days (camps, half-days over several days): editing them no longer leaves them on a single day,
  and if you move the start, the end moves with it.
- Offline: Today works after editing from the Agenda or the week.
- The school on the tablet after joining the family: it can no longer create a duplicate school.
- When you sign out, the next account no longer inherits the municipality or the region of the previous one.
- Widget: what has already happened disappears at its time, and what was ticked offline carries over into the app.
- Other fixes: the week no longer shows pickups on holidays; the "update" cards show names instead of codes; the
  backpack notice of a holiday opens the right backpack.

## v0.1.0-preview.25 (0.1.0+25) · 2026-10-19

- New widget, "What to bring". Three styles: Agenda (the default one), Backpack and Most important. It shows the
  specifics, for example "17:00 Psychomotor activity · snack", and the backpack items can be ticked from the widget
  itself.
- Offline: Today now shows the saved copy, also after editing.
- Editing at the same time: you do not lose what you wrote; if someone else changed it, you get a notice to reload.
- Menu with a photo: it no longer freezes the phone.
- Agenda › List: "This week", "No date" and "Later".
- Children who do not go to school: they no longer get school things.
- Signing out: it asks you to confirm, it is quick, and when you sign back in it does not ask for the consent again.
- Sharing with the consent on pause: once you accept it, it carries on by itself.
- Touch-ups: "Who brings and who collects" is more compact; shortcuts to the timetable and to "What to bring"; half-day
  in the month; icons for the after-school activities; wording that fits any family.

## v0.1.0-preview.24 (0.1.0+24) · 2026-10-19

- A backup for match days. When the operators block Cloudflare during a match, the app connects on its own through a
  backup in Google Cloud (Madrid). You do not have to do anything or turn on WARP. When the block ends, it goes back
  to the normal connection within minutes.
- "Confirm everything" with many suggestions (for example, when importing a whole chat) sends the cards in batches
  and, if the server asks it to wait, it retries on its own.
- Clear messages if you reach the limit of saved menus or if you pick a date that is too far away.
- Small fixes to the offline copy.

## v0.1.0-preview.23 (0.1.0+23) · 2026-10-18

- It works offline. Today, the week, what is next and the detail of each task show the last copy with the note
  "Offline · updated at …". If the problem is the server, it says "Mochila cannot connect". The copy expires after 14
  days and is deleted when you sign out, when you leave the family, or if you are taken out of it.
- A better AI: shorter and more natural titles ("Bring…", "Sign…", "Pay…"), fewer suggestions in messages that ask for
  nothing, and the excursion with a leaving time ("We leave at 9:00") now keeps its time.
- School cases: strikes, half-days ("Early finish"), things that come back home ("Comes home: smock"), "every Friday
  bring…" as a backpack rule, "Pau does not go tomorrow", an after-school activity cancelled one day, camps over
  several days, pickups on alternating weeks and children's nicknames.
- Editing at the same time: if your partner changed the task while you were editing it, you get "Someone changed it
  meanwhile" instead of overwriting their change.
- Texts and design reviewed in Catalan, Spanish and English: cards, notices and buttons more consistent, better
  contrast and accessibility.

## v0.1.0-preview.22 (0.1.0+22) · 2026-10-18

- On the day of the excursion, the "At school" card of that child starts with the excursion: title, time and place.
  The timetable stays below, folded under "Usual timetable", in case the trip is only in the morning. The siblings who
  do not go see their normal card.
- "Pau is not going". A button on the excursion itself. Tap it and his backpack and timetable go back to normal, the
  change syncs with your partner and you can undo it. If you both tap it at the same time for different children, the
  two of them end up not going. If the excursion changed meanwhile, you get "The trip has changed meanwhile" instead
  of overwriting the change.
- Deleting a child also deletes what was only theirs, instead of leaving it for the whole family.

## v0.1.0-preview.21 (0.1.0+21) · 2026-10-18

- Excursion days. When a school notice is a trip, an excursion or a camp, the AI marks it. That day, that child's
  backpack only carries what the school asks for, plus the things of their after-school activities. The timetable
  suggestions (for example the psychomotor clothes) and your own rules for that day disappear.
- The card in the Inbox shows it with the "Trip or excursion" line before you confirm. If the AI is wrong, open the
  event, tap Edit and change the "Trip or excursion" switch. It only affects the children who go to that school, and
  trips of up to 14 days.
- Review of the menu and the timetable: it no longer says "Playtime, breakfast and lunch have been skipped" when
  nothing was skipped. "Dining room" and "Canteen" are recognised as breaks.
- Several days: the Inbox shows the end date of the events that last more than one day.
- Under the hood: the items of the same day always come out in the same order, and the subscription transfers are
  handled more robustly.

## v0.1.0-preview.20 (0.1.0+20) · 2026-10-17

- Delete account: before deleting anything it asks you to confirm your Google account. If you cancel, nothing is
  deleted. While it deletes, the Back button does not interrupt the process.
- Invitations: the link is now on the website (lamochila.app), with the code after the #, so it does not reach any
  server. In "I have a code" you can paste the whole message and the app finds the code.
- Menu: when you import the month again, it is replaced in one go. It can no longer end up half done.
- Legal links: the privacy policy and the terms open in lamochila.app, in your language. They are drafts, and the
  website is still private: it will ask for your e-mail.
- Consents: the first time you use the AI it asks again, because the text changed and is now kept with its version.
- Under the hood: if the two adults delete their account or leave the family at the same time, no orphan data is left
  on the server. Pending cards never pass to another account on a shared device.

## v0.1.0-preview.19 (0.1.0+19) · 2026-10-17

- New server: api.lamochila.app. Mochila now has its own domain. The app works the same.
- Delete your account, from beginning to end. It deletes your data from the server, then the Google sign-in (it may
  ask you to confirm the account) and finally what is on the phone. If something fails half way, the app tells you
  clearly and lets you finish.
- Clearer consents. The AI and image texts explain what is sent, to whom and with which limits. The image permission can
  be withdrawn from Privacy and AI.
- Data sources and licences, in Settings: where the calendars, the schools and the municipalities come from, with
  their licences.
- More robustness: very large photos are rejected before they are processed; deleting the data on the phone is retried
  if it fails; expired suggestions are deleted completely.

## v0.1.0-preview.18 (0.1.0+18) · 2026-10-17

- All of Spain: the official 2026-27 calendars of the 19 autonomous communities are there. 15 of them are verified
  against the official bulletin. Navarre and the Basque Country have a framework by school centre. Some provinces of
  Andalusia and Ceuta are still to be verified, and the app says so.
- Castile-La Mancha and Andalusia go by province, and the municipal non-school days of Murcia are already included.
- The mandatory shortened school day fills in by itself in Aragon, Castile and León, Cantabria and the Canary
  Islands.
- School search: you no longer have to choose the community, because it comes from the municipality. If your school is
  not in the directory (for the moment only Catalonia and Madrid), you choose the municipality out of the 8,132 in
  Spain and write the name.
- Version in Settings: at the very bottom it says "Mochila 0.1.0 (18)". If you press and hold it, it is copied.
- Links: only normal web links (http/https) are opened.

## v0.1.0-preview.17 (0.1.0+17) · 2026-10-17

- "What to bring" › Suggestions: the sheet takes the full width. If there are no suggestions, it explains where they
  come from and offers quick buttons (breakfast, water, nappy, spare clothes, smock) that open the rule already filled
  in. New suggestions from the timetable: psychomotor activity → comfortable clothes and nappies, swimming →
  swimsuit, towel and cap, art → smock, and every day in pre-school → breakfast, water and a nappy. The ones you
  rejected can be brought back with "Show the rejected ones again".
- School › School days: it shows what is already applied (the official Catalonia calendar and the local holidays of
  your municipality) and the next days without school. You can complete it in three ways: add the free-disposition days
  by hand; import the PDF or the photo of the calendar; open the school's website, already loaded for about 6,000
  centres.

## v0.1.0-preview.16 (0.1.0+16) · 2026-10-17

- Timetable from a rotated photo: the photo is straightened (90° or 180°) and times like "15:00h-16:30h" are read
  even if the phone reads them wrong ("16:3 0h"). The "15:05" is gone, and the breaks (breakfast, playtime, lunch) are
  saved as breaks. Tested with your real photo: the five days end at 16:30.
- More reliable reading with images: the image goes straight, and the AI no longer copies what the phone reads if it
  sees something else. For images a different, lighter reading model is used, which reads the rotated timetable
  20 out of 20, and if it fails, the previous one is used.
- Timetable: a three-dot menu with "Clear the timetable". Importing again replaces the previous timetable (after
  asking you). For the menu there is "Clear the month" and "Clear the whole menu".
- Subjects in CAPS everywhere, and the breaks in grey.
- Child's record: the school is a read-only line that opens the school.
- Agenda: each after-school activity appears only once, inside the school's card and with its timetable.
- Deleting several events: they no longer come back.
- iOS: the Mac has come a long way (widget, hardened sharing), although you do not see it on Android.

## v0.1.0-preview.15 (0.1.0+15) · 2026-10-16

- Timetable on Today: a compact list with the times aligned ("09:00–09:30 Arrival and routines"). It shows only what
  is left of the day and has "Show the whole timetable". The subjects use normal capitals and only what is off the
  usual is marked (for example PROJECT until 16:30).
- "Who brings and who collects": "Brings" and "Collects" instead of "Leaves".
- Free plan and Family plan (the split is a proposal and can be adjusted). Your account and the test accounts are
  testers and will not see any limit. Free: 10 messages a month, 2 children, 1 test image import and the afternoon
  summary. Family: everything, including WhatsApp chat import and all the reminders.
- More precise reading of documents: the printed times of the timetable are never changed. Timetables with the days in
  rows are read well. Colour PDF calendars are read as an image. Crooked photos are straightened. "before Friday" now
  falls on the right Friday. If there is a price per session and another total, the total is taken.
- Reliability: no more errors when signing out or signing in with a new account. Sharing right after signing back in
  works. A confirmed card is not lost even if the app closes half way. Nothing is duplicated on a retry.
- Privacy: the filter that removes the other parents' names is more precise (it respects days, months, circular tags
  and your children's names).

## v0.1.0-preview.14 (0.1.0+14) · 2026-10-16

- Session: signing out and signing back in no longer gives "Please sign in again".
- Family: the member list refreshes by itself and warns you when somebody joins. "Who collects" syncs between
  devices and has a new icon, instead of the lightning bolt.
- Notifications: the device registers when you sign in, without restarting the app. The app asks for the permission at
  the end of the onboarding. The weekly change of "Who collects" also notifies you. On Android the content of the
  notifications does not go through Google.
- Today and widget: Today comes first, and Tomorrow only after the last activity of the day (at the latest, 20:00).
  The "Today and tomorrow" widget includes tomorrow's events.
- School: children who do not go to school yet ("Does not go to school yet"), with no school questions at all. "Link
  the children" now goes to Done. The saved menu is visible. "Timetable confirmed". Menu icons in a single colour.
- Import: the menu is read whole and twice as fast. The 15:30-16:30 PROJECT band is read well. If you share the
  school calendar, it offers to import it in School.
- Inbox: the cards disappear when you confirm. Distant events can be opened and deleted. There is a single paste
  button. There are no duplicates when you change the language of the titles. The other parents' names are removed
  before sending.
- What to bring: every suggestion with its reason. Rules by day of the week with dates and a note. Optional daily
  reminder, in the morning or the night before.

## v0.1.0-preview.13 (0.1.0+13) · 2026-10-16

- Security: a full review and three differential reviews. The invitation codes have 10 characters, expire after 48
  hours and can be used only once, with a limit on attempts. When sharing files there is a maximum of 20 files and
  100 MB. Photos of documents are sent without GPS or EXIF. When you sign out, everything local is deleted except the
  theme and the language. Android backup is turned off. The server has spending limits per family and one global
  limit.
- Family: the owner can remove a member, and a member can leave the family.
- Who collects: a planner for the pickups; the other parent gets a notice of every change.
- "Tomorrow" widget for the home screen.
- School documents with an image (optional): timetable, menu or calendar read from a photo or one page of a PDF.
- Language of the titles configurable in Settings.
- Notifications: by default the lock screen does not show details.

## v0.1.0-preview.12 (0.1.0+12) · 2026-10-16

- The "Set up the school" assistant is neater: the list of steps no longer jumps back to the top after every action.
  The titles are not repeated and the completed rows can be tapped whole. "Accept the suggestions" only appears when
  there are backpack suggestions. If you rename the school, each child's record shows the new name. "Repeat the
  welcome" shows the colour, class and school of each child.
- More relevant school search: first the exact name, then your municipality and then the stages of your children.
  There is a Catalonia / Madrid of Spain selector that shows your family's region by default.
- Design: Family shows a single button to set up the school. The Today notice reads better. The suggestions close when
  the keyboard is taken away. "Pending" reads well in dark theme.

## v0.1.0-preview.11 (0.1.0+11) · 2026-10-16

- "Set up the school" assistant for registered users, in 7 steps: school, class, timetable, calendar, menu, after-school
  activities and "What to bring". Each step shows its state and can be done, skipped or reviewed. It is in
  Family › School, in Settings and in the Today card.
- Autocomplete for the school with the official directory: 4,352 centres in Catalonia and 2,945 in Madrid. Choosing
  yours fills in the municipality.
- Notice on Today if there is no school ("You have not added the school yet"). If you press "Not now", it comes back
  after 7 days. It also warns you when a child's timetable is missing.
- Intensive school day: invented dates are no longer pre-loaded. The rules let each school decide, so the app asks you
  to check it with your school.
- "Repeat the welcome" from Settings ("Do the setup again"), with your data already filled in and nothing deleted.

## v0.1.0-preview.10 (0.1.0+10) · 2026-10-16

- Design polish (phone and tablet). Tablet: Today in two columns (Today | Tomorrow), Inbox in a grid, Week in 7
  columns, Month with the month and the day's agenda side by side, detail in two columns, titles aligned with the
  content. Bottom bar: the labels no longer break with large text, the counter is smaller and in Catalan it says
  "Agenda" and "Settings". Contrast: the important texts are more legible, the fields have a visible border and the
  pop-ups darken the whole screen. Settings: grouped in cards, with "Delete account" on its own at the end. Edit form:
  even spacing, help texts and a Save button always visible. Month view: the selected day is told apart from the day
  without school, which appears hatched. Welcome: centred, and you can move on by swiping. Catalan reviewed: more
  natural sentences and consistent apostrophes.

## v0.1.0-preview.9 (0.1.0+9) · 2026-10-16

- Fixes over Preview 8. The weekday notice no longer appears when the date adds up; only the server calculates it,
  with the date written in the message. Timetable: the last band now comes out right (15:00–16:30 instead of 15:25),
  because the duration is deduced from the height of the row, and "Check the times" only appears on the corrected
  rows. In the test bank the timetables get 99.5 % of the slots right. "Pre-school" is assigned by itself to children
  in I3–I5. "Why?" quotes the web page the date comes from (for example the form). Optional enrolment forms no longer
  create a "Sign" task. Night summary: it no longer repeats things (like the "cap" twice). Week: what is for the whole
  family appears only once. Expenses: it separates what is paid from what is pending. Welcome: the language no longer
  changes on its own, the notifications step is more compact and the class is shown next to each child.

## v0.1.0-preview.8 (0.1.0+8) · 2026-10-16

- Import WhatsApp chats: in the group, open the menu > More > Export chat > Without media > Mochila. It only processes
  the new messages, with a preview of the period, and each date is worked out from the day of its message. It sends no
  names and no phone numbers.
- Better timetables: in your I3 timetable now 23 of 23 subjects and 18 of 23 hours come out right (before, about 8).
  The times that were corrected automatically are marked for you to review.
- Menus in calendar format: much better than in Preview 7 (17 of 22 days, before 8). It is still not perfect.
- "Why?": tapping the confidence of a suggestion shows the original sentence, what data are assumptions and which link
  the date comes from.
- Week: a screen with the week by child ("See the week" on Today), and a notification on Sunday with "The week ahead".
- Expenses: school costs by child and term, with CSV export (in Family).
- Subscription: an honest payment screen (yearly highlighted, 7 days free, restore purchases) and Settings ›
  Subscription with the month's usage. Your test account has the Family plan and will not see it.
- Fixes: the phone calendar no longer takes long to delete deleted events. You can now share .txt files from the Files
  app. PDFs of up to 30 MB can be processed. The welcome includes the step to create the school.

## v0.1.0-preview.7 (0.1.0+7) · 2026-10-15

- New school module. Family › School: the name of the school, the municipality (correct local holidays for Terrassa,
  Sabadell…), the intensive school day and A/B weeks (advanced option). Timetable per child: import it from a photo or
  a PDF and review it, or create it by hand; on the phone you see it day by day, on the tablet in a grid. Canteen menu:
  import it and review it, with diet variants; each child's diet is kept on the phone only. School calendar: import the
  free-disposition days and the school holidays. After-school activities with a period (term, whole school year…),
  price and course. "At school" on Today and Tomorrow: the highlighted subjects, the after-school activities and the
  menu of each child's diet. "Pack the backpack": tomorrow's list per child, with rules by subject or after-school
  activity and suggestions; the night summary includes the backpack. Days without school: a notice on Today and
  notifications 7 and 2 days before each day without school, and 3 days before the switch to the intensive day. Fixes:
  deleting the account signs you out, the confidence tag no longer says "High" on uncertain dates, events without a
  time are saved as "all day", and an invalid partner code shows a clear message.

## v0.1.0-preview.6 (0.1.0+6) · 2026-10-15

- Notifications: the night summary at the hour you choose (20:00 by default). Reminders of payments and signatures two
  days before and the same day at 08:00. An option to hide the details on the lock screen. In Settings,
  "Notifications" has a test button.
- Calendar: a Month view inside "Later", with verified official holidays (Catalonia and Madrid, local holidays by
  municipality). Sync with the phone calendar (Google/iCloud) or with your own "Mochila" calendar, from Settings ›
  Calendar. The titles have no emojis ("Bring:", "Pay:", "Sign:").
- Welcome: the children, the AI consent, a guided example and an invitation for your partner.
- Partner: an invitation with a code from Family.
- Privacy: export your data, delete the account and do not keep the original messages.
- The Inbox is kept on the phone: it is no longer lost when you restart or share something else.
- Reading a notice: it warns you if the day of the week does not add up with the date. What is optional does not
  become a task. Cleaner titles. "per person" in the prices.
- PDF: it shows the progress, and sharing with the app closed now works.

## v0.1.0-preview.5 (0.1.0+5) · 2026-10-15

- Swipe gestures. On Today and Later: ← deletes and → archives (marks as done), both with "Undo". In the Inbox: ←
  discards and → confirms. Confirming by swipe is blocked when the suggestion needs a review.
- Clipboard popup. When you open the app with a message copied, "Process / Not now" appears straight away, and then it
  takes you to the Inbox.
- "Already saved". Every line has "View", which opens the existing item highlighted.
- Deleting. Fixed the deletion of distant events (more than 30 days), which used to come out as "not found". If
  something fails, now you see the real error.

## v0.1.0-preview.4 (0.1.0+4) · 2026-10-15

- "Later" is now a complete agenda of everything ahead, grouped by month, with the "See past" button.
- A message already processed: if you discarded all its suggestions, it is processed again without asking. If you
  confirmed something it says "You already have it saved", and if something is still pending it takes you to the
  Inbox.
- New information means an update: if you share the same message again and now it brings more data (for example the
  date of the link), it comes out as "Update the existing one" with the change "Date: — → …".
- The AI always uses the date of the link when it finds it. It was already active on the server.
- Help texts with the real WhatsApp flow (copy, or share a screenshot).

## v0.1.0-preview.3 (0.1.0+3) · 2026-10-15

- WhatsApp by copy and paste: copy the message in WhatsApp and open Mochila. At the top you see "You have a copied
  message → Process". There is also a "Paste" button in the Inbox and the "Paste a message" shortcut when you press and
  hold the app icon.
- Duplicates: processing the same text twice does not use an extraction. The pending suggestions are not repeated, and
  what you already had saved is grouped into one line.
- Past events: they are now detected and carry the "Already happened" tag.
- Links: the AI reads the page linked in the message (date, time, address) and separates the "pay" suggestion when
  there is an amount.
- Place to Maps: tapping the place opens Google Maps, or the video call if it is Meet or Zoom.
- Privacy: phone numbers and e-mails are replaced with tags before sending and restored on the phone. The
  participants' numbers in the group are removed.
- Fixed: the red "Page Not Found" screen when sharing images.

## v0.1.0-preview.2 (0.1.0+1) · 2026-10-15

- Second test build: the real backend and the real AI.
- Sign in with Google. The backend is deployed on Cloudflare (data in Western Europe). When you share a message, the
  text is read on the phone (OCR for images and PDF) and the AI analyses it, with no data kept.
- The first time you sign in, your family is created automatically.
- Which file to install: the 64-bit one for current phones and tablets; the 32-bit one only for older devices.
- Known limits: there is no onboarding yet, so you have to add the children from Family before sharing, so that the AI
  can assign them by name or class. Free plan: 10 readings a month and at most 2 children. It still does not write to
  Google Calendar or send notifications. It is signed with the development key, like Preview 1, so it installs on top
  without uninstalling.

## v0.1.0-preview.1 (0.1.0+1) · 2026-10-15

- First test build of Mochila (demo mode).
- What it is: the app with the Peach design (light and dark), with sample data and no server. It is there to judge the
  design, the navigation and the sharing flow.
- Which file to install: the 64-bit one for current phones and tablets; the 32-bit one only for older devices.
- Known limits: it does not connect to any server and does no AI reading. When you share a message you always get the
  same sample suggestions. There is no sign-in: in demo mode you go straight in. It is signed with a development key;
  when we switch to the final key you will have to uninstall it before installing the new one.
