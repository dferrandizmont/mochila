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

## v0.4.4 (0.4.4+65) · 2026-11-14

- Changed: on a day with things to do but no summary sentence, Today's headline now names the first one (what needs doing first: pay, sign, bring, then timed events by time) and how many more there are, instead of leaving the headline empty.
- Fixed: when an account is blocked, the home widget clears itself at its next background refresh or sync notification, even if the app is not opened, and no longer shows the family's days; the next time the app opens it signs out with the usual calm note.
- Faster: opening the app and the Week is quicker: requests no longer wait for a new security check on every start, because the phone keeps the short-lived App Check token while it is still valid.
- Faster: opening the app and then the Week tab sends fewer requests at the same moment, so each one answers sooner: the Week tab asks for its school data once instead of twice, and the notification preferences come with the first account check instead of a second one.

## v0.4.3 (0.4.3+64) · 2026-11-13

- Changed: a date that is not in the current year now shows its year on the task rows in Today and the agenda, on a proposal card in the inbox (the day, the deadline, the changes it makes to a saved event and the day a relative date is counted from), on a payment in Expenses, on a news card in Today, on the event lines an adult with limited access sees, and on the dates of a summer camp (the year is written once, at the end, when both days are in the same year), the same way the task detail, the Week header and the month day title already do.
- Changed: on a saved event, a child who has been archived keeps their tag in the detail and in Expenses, now with a small neutral "Archived" label next to the name, also read by screen readers in Expenses. Today, the week, pick-ups, reminders and new assignments keep using only active children.
- Fixed: when the family owner changes which children an adult with limited access sees, that adult's phone follows the change while the app is open (on the next sync or when the app returns to the screen), including the pick-up week and reminders, and the copies saved for a child no longer assigned are deleted and no longer appear offline. An adult with limited access now opens the app with the server's answer instead of the saved copy (the saved copy still shows offline). The first launch after this update downloads that adult's data again once; full adults keep their saved copies.
- Fixed: signing in to an account that already has a family warns before replacing a guest family that only has schools, its own school days, activities or pack rules, not only one with children or items.
- Fixed: after being removed from a family, joining another or switching family, the phone registers again for notifications right away (or when the app returns to the screen) instead of waiting for the next day.
- Fixed: a change without a date whose message quotes a saved title no longer picks one of several matching saved events.
- Faster: importing a message with many changes is quicker for families with many saved events.
- New: the owner can block an account for misuse from the owner dashboard, with a reason, an optional deletion of its data and a way to undo it. A blocked account is signed out at its next request with a calm note on the welcome screen that says where to write for a copy or the deletion of its data, and a new guest session on the same phone is refused too. The app now sends a random install id, kept by the server only for blocked accounts (never a hardware or advertising identifier).
- Fixed: Today and the home widget no longer say "Nothing special today" while an agenda item, including a pending payment or authorization, is listed for the day. Calendar-only no-school notices keep their previous quiet-day wording; the widget respects item and sentence expiry times.
- Fixed: picking a day in the month grid and returning to the week now shows the week containing that day with that day selected, including when moving between months or years, clamping the day, or using Today.
- Fixed: confirming a proposal card on Add › Message now shows the same mapped error (rate limit / budget and generic failures) as the manual form when the save is refused, even for the last card, and restores the card instead of leaving it added.

## v0.4.2 (0.4.2+63) · 2026-11-12

- Fixed: postponing or correcting a saved event no longer silently enables school-trip or other school-day settings or converts it to no-school calendar days; update cards show the title they will save and only the school-day details they will apply. Bring corrections omit inferred direction labels when that direction will not be saved.
- Fixed: Today no longer shows an error screen when returning after a welcome or settings visit lasting more than a minute; its background refresh waits until the first frame finishes.
- Fixed: the Week headline says "today" or "tomorrow" when the next item is that close, in all five languages.
- Fixed: the remove-child confirmation button says "Remove", matching its title, in all five languages.
- Fixed: Today preserves English dish names' capitalisation, including names such as "Spanish omelette"; date headings start with a capital letter while month names keep their local spelling.
- Fixed: Basque music, physical education and swimming are recognised in school and activity rows, with the matching music and pool drawings; pick-up tables use distinct Basque weekday abbreviations.

## v0.4.1 (0.4.1+62) · 2026-11-12

- Fixed: with more than one child, Today says whose lunch menu it is ("Menú de Mar i Aina: ..."), also when they share it, instead of a menu line with no name.
- Improved: the Week tab's pick-up plan now loads in two requests instead of three (the weekly defaults and their A/B anchors arrive together), so the week shows a little sooner.
- Fixed: a message addressed only to another class ("Famílies de P5" when the child is in I3) adds nothing, and the result says which class it is for ("It looks like a message for another class (P5). Nothing was added.") instead of the generic "nothing found". A message that also names one of the children, or is for the whole school, is read as usual.
- Improved: the "another class" note reads well with one class or with several ("It looks like a message for other classes (P4, P5). Nothing was added.").
- Fixed: a message that only counts something else ("el 6è aniversari de l'escola", "el 2n trimestre", "la 2a excursió") is no longer taken for a message about another class, so it is read as usual instead of adding nothing.
- Fixed: school calendar import keeps the printed name of a holiday ("Dilluns de Pasqua Granada") instead of replacing it with the generic "Festiu". A day the document only marks with the colour of its legend, with no name next to it, gets the word of the legend.
- Fixed: school calendar import keeps the printed name of a day off whatever it was read as (a holiday or a day without school), so the same day is not saved twice, and it knows the generic words of Basque and Galician too ("Jaieguna", "Feriado").
- Fixed: school calendar import keeps the names of the days in the language the document prints them in, also when "Language of titles and notes" is another one: "Lliure disposició" and "Festiu" from a Catalan calendar no longer come out as "Libre disposición" and "Festivo".
- Fixed: School calendar review: a day you already have is no longer offered as a change because the new document words its name differently or in another language ("Dia de lliure disposició" and "Libre disposición"). The name you saved stays, and "You already had them from the school" lists the days as you named them. A day saved without a name, or only as "Festiu", still gets the name the document prints.
- Fixed: Menu import review: Back now asks "Leave without saving?" when there is something to lose (the imported days and the second reading), as the school calendar review already did.
- Fixed: School calendar review: the "Save N changes" button is back in view, fixed at the bottom of the screen with the count, instead of being at the end of a long list; icon buttons carry a spoken label too (Family "..." and settings, menu and calendar import and more).
- Fixed: Back on Week, Add or Family goes to Today first; Back on Today leaves the app as before.
- Fixed: the "nothing found" card after reading a message no longer announces "Analysing..." to screen readers; each result announces itself.
- Fixed: Today: before 14:00, looking at tomorrow, the lunch line reads "Today they have lunch: ..." (present) instead of saying they already ate.
- Fixed: Add: a place is shown after "Place:" instead of after "a"/"en" ("a Aula de I3", "a Pati"); Welcome: the demo's third card is "Trip fee" (no verb, as real cards) and the drawing's date is the coming Thursday, never a past one; the school sheet no longer says "Dessert: Dessert yogurt" when the dish already starts with the course name.
- Fixed: the Today tab no longer gets stuck on an error screen (only a restart brought it back) when the screen changes while the app is open or when coming back from the settings.
- Fixed: a photo of the school's monthly menu is read as the canteen menu again (its weekday headers are abbreviated, "dl dt dc dj dv" or "dll. dmt. dmc. dij. div."), so it is offered for the menu import instead of being sent as an ordinary message.
- Improved: the canteen menu is also read when the school writes it in English, and a sheet with the timetable full of hours and the canteen menu under it is read as the timetable, not as a menu.
- Improved: a photo of the class timetable is also read as the timetable when the school abbreviates the weekday headers ("dl dt dc dj dv", "lun mar mié jue vie", "l m x j v"), even without a title, so it is offered for the timetable import instead of being sent as an ordinary message.
- Improved: the weekly menu of the canteen is also read when the school titles it "Menú setmanal", "Menú semanal" or "Weekly menu".
- Fixed: "Update existing" no longer degrades a saved item when the new message is poorer: a missing time, place, amount, bring item or note is treated as "unchanged", a shorter/less specific title or place is not a change (and becomes "already saved" when nothing else differs), and two different events on the same day with distinct names (e.g. Museu de la Ciència vs CosmoCaixa) are no longer merged.
- Fixed: a message that postpones an event now moves the item instead of leaving it where it was, and it keeps the hour the event had even when the message gives a new one: the end follows (a one-day event keeps its length, also when only the hour changes on the same day, and an event ending at midnight counts as one day; a longer one moves the same number of days), so the event never ends before it starts, and the hour is read in the family's time zone, so a move across the clock change keeps 09:15 local time. An all-day item (a multi-day trip such as the colònies, or a payment) moves too: it stays all-day but keeps its span, and a deadline saved for that day moves with it while one saved for another day is kept where it is. An update no longer shows "all day" about an event that keeps its hour.
- Fixed: a message that postpones, cancels or corrects something already saved now finds it when the saved title is in another language than the one chosen for titles (a saved "Sortida al Zoo de Barcelona" with the titles in Spanish): the saved item moves to the new day keeping its hour, its place and its title, instead of a new all-day item being proposed. The same goes for an ordinary message that puts it one day earlier or later: it is offered as an update of the saved item instead of a second one. "Update existing" no longer rewrites a saved title only because the language of the titles translates its first word or spells a word slightly differently ("Reunión de familias" for "Reunió de famílies").
- Fixed: "Update existing" no longer writes a note that only says the date or the time changed ("Date changed"; recognised in Catalan, Spanish, English, Galician and Basque), whether the item had notes or not: the notes you had are kept as they were, and a note with something new (an hour, a place, something to bring, or that the date may still change) goes after them. A message that only adds a note to an item without notes is now offered as an update instead of "already saved".
- Fixed: a saved item can no longer end before it starts: when an edit moves the start past the saved end, the item is stored without an end instead of disappearing from the day, week and calendar views.
- Improved: Welcome: "See the demo" now shows the gesture, not only the result: the school message is copied ("Copied"), pasted into Mochila's "Message" box and read, and then the cards appear; with reduced motion the stages switch without fades. The welcome drawing's arrow now says "Copy and paste" instead of "Share".
- Improved: Basque and Galician now call the 20:00 summary the afternoon one ("Arratsaldeko laburpena", "Resumo da tarde"), as Spanish and Catalan do, and a few Basque strings read more naturally ("Markatu ordaindutzat", "{reset} berrezartzen da").
- Improved: a timetable, menu or calendar shared into the app asks who it is for ("Which child?" / "Which school?") in the same sheet as "How do you want to read it?", one step instead of two; the question only comes on its own when there is nothing to ask about the image.
- Improved: while a menu, timetable or school calendar is being read, the waiting card shows the shape of the screen that will appear (the week of day cells, the weekday columns, the dated list) instead of generic cards.
- Improved: in an imported chat, a message addressed to other classes ("famílies de P4 i P5" when the child is in I3) comes back with "For whom" marked for review and stays out of "Confirm all", instead of looking sure about the family's child.
- New: School calendar import: the saved days the new document does not mention can be removed with "Remove the ones not in it" (asked first, undoable before saving); they are kept by default as before.
- Improved: Menu import: when the two readings of a day did not agree, the word that differs is underlined in the day's cell, and the day editor shows what the other reading saw under each course ("The other reading: Iogurt") with "Use this one".
- Improved: a pasted message that fails for lack of connection is kept on the error card (in memory only, never saved) so "Try again" sends it once the network is back, without pasting it again.
- Fixed: a confirmed "no school" day for a child who has no school no longer shades the siblings' schools; the day is written only for the schools of the children it names.
- The Week tab is a week again: a strip of the seven days at the top (today marked, the chosen day outlined, days without school shaded, half days with a short bar, and a dot per entry coloured by kind: payment, trip or event, something to bring, signature), with the chosen day's list right under it and the day-by-day week below; swipe the strip or use the arrows to move week by week. The month grid is still one tap away behind the calendar icon, but it is no longer remembered as the way the tab opens. The legend sits behind a small question mark instead of taking three lines, and the week's pick-up plan is kept like the rest of the week, so coming back to the tab paints at once, also offline.
- Today: in the evening, when the screen is about tomorrow and today has nothing left to list, the "Today" block below is one quiet line ("Nothing left for today", or just the "They had for lunch" line) instead of a second "Today" heading; the same when tomorrow has nothing. The day's sentence names four things whole instead of cutting to "and 1 more", and keeps acronyms as typed ("EF"). "You drop off" and "School until 16:30" at the same time are one row ("You drop off · school until 16:30"), the lunch row reads "Lunch: pasta salad and meatballs", and the time column grows with the text size so "13:00" never breaks in two. The school day sheet shows its actions in sight (timetable, what to bring, who picks up, "isn't going today") instead of a hidden menu. "The school menu is missing" opens that school's menu straight away (and a missing timetable, that child's timetable). Ticking a bag item without connection says once that it will be saved when the connection is back.
- Today opens much faster on a cold start: it no longer waits for the school setup check (the "Missing timetable" line now comes from the last copy with the rest of the day, and grows into place if it decides later).
- The first time you open Mochila each day, Today shows the last copy of the day at once (bags, hours and pick-ups included) while the fresh answer arrives, instead of waiting for the network; the week view no longer shows its loading skeleton every time you come back to it.
- Fixed: the "We won't show this again this school year" note (after "Not for us" on a school-year milestone) and the calendar "Retry" note now go away by themselves instead of staying over every screen.
- New: a message that says there is no school on a day ("festa de lliure disposició", "pont", "no hi ha classe", "no hay cole", "school closed") is now read as a day without school, titled with the reason the message gives, instead of an ordinary event; one subject that is not taught ("no hi ha classe d'anglès") or an afternoon off is not.
- Fixed: payments and signatures are titled with what is paid or signed ("Sortida al Museu de la Ciència", "Autorització de la sortida") instead of repeating the verb ("Cal pagar 8,00 € (Pagar sortida...)").
- Fixed: imported lunch menus no longer show the printed course label inside the dish ("1r: Macarrons", "2n: Pit de gall dindi", "Postres: Iogurt" now read "Macarrons", "Pit de gall dindi", "Iogurt"), and a label alone is no longer listed as a dish.
- Improved: school calendars read from a document keep the name printed for a day ("Dilluns de Pasqua Granada", "Festa major") instead of the generic "festiu", and a shorter-schedule period printed without dates is no longer given guessed dates.
- Fixed: importing the same message again with another language for the titles no longer offers "Update existing" when only the translated title differs; it shows as already saved.
- Improved: Family: removing the other adult (or leaving the family) now sits behind a "..." menu on their card instead of a red button that is always on show; the owner no longer sees a permanent "you cannot leave" note, and that note (shown when leaving is refused) now points to Settings > Account, where "Delete account" lives.
- Improved: Family: the school row says "Setup complete" once every step is done; when one person does every drop-off and pick-up, the card shows it in one line ("Every day: you drop off and pick up") instead of ten identical cells.
- Improved: Child editor: a colour the app keeps for itself now says so in visible text, and the standard diet is called "Menú normal".
- Fixed: School: an intensive-schedule period of a single day shows one date instead of "dl. 21 de des. – dl. 21 de des.".
- Improved: Limited access: a quiet "Choose at least one child" line explains why "Create the invitation" is disabled.
- Improved: School calendar import: the days the school already had are titled "You already had them from the school" instead of a second "You already have them", the kept days read "Not in the new document (kept)", and leaving the review with unsaved changes now asks first.
- Improved: Menu import: "Save the menu" stays visible at the bottom of the screen instead of after the last day.
- Improved: Payments and signatures: the edit form shows "Due date" instead of "All day" and the time fields, and the item detail shows a large "Mark as paid" / "Mark as signed" (and "Mark as done" for things to bring), with "Back to pending" once done.
- Fixed: saving a new item without a title now scrolls to the title field, focuses it and says it is missing, instead of doing nothing visible.
- Improved: the place of an item is now a clear "Open in map" row in its detail instead of a bare icon.
- Improved: School-year milestones are grouped by child (no more "For Pau" under every row), and one whose usual dates have passed goes last with a calm note ("Its usual dates have passed; if you did not apply, next year").
- Improved: Settings: the exact-time permission card now sits below the evening group; "Language of titles and notes" says when it differs from the app language and folds the less used languages behind "More languages"; the calendar picker explains each option in one line; "Repeat the welcome" moved to Account and privacy.
- Improved: Account: the analysis counter says when it resets ("Resets on ..."), "Delete account" sits apart at the bottom, and the web and trial hints lose their internal wording.
- Improved: the Privacy screen says when the policy was last reviewed.
- Improved: signing in to an account that already has a family opens it directly on a clean install (nothing local to keep); when there is local data, the choice dialog uses full-width buttons.
- Fixed: the "Do you want us to remind you?" sheet after "Confirm all" no longer stays open behind the Android permission dialog with a dead button: only one ask opens at a time, and granting the permission closes it.
- Improved: the evening summary and the bag reminder no longer repeat each other: when the summary includes tomorrow's bag, the "evening before" bag reminder is not sent (the summary is the evening notice; the bag reminder rings in the morning), and the notification settings say so in one line each.
- Improved: Spanish copy says "tarde" for the 20:00 summary and the evening-before reminders ("Resumen de la tarde", "Cada tarde") instead of "noche".
- New: a message that says there is no school on a day now arrives as a "Day without school" card and, once confirmed, goes into the school calendar (the day is shaded, no bag, no reminders) instead of being saved as an event.
- Fixed: lunch menus saved before this version also show the dish alone ("Macarrons amb tomàquet" instead of "1r: Macarrons amb tomàquet") on Today, in the menu and in the evening summary, and a label typed in the day editor is dropped.
- Fixed: a Spanish circular that mentions the lunch service is no longer taken for a lunch menu: the on-device check now needs a grid of weekdays with dishes.
- Improved: the "Why?" sheet says "Sure" / "Fairly sure" / "Not sure" without percentages; payment cards read "Pay 8,00 € by Monday 16: Trip to the museum" instead of repeating "pay"; the details under a card are separate sentences; the header asks to "check" what arrived.
- Improved: "Message" in Add now shows the first lines of what you copied and asks before reading it, so a tap with something else in the clipboard does not spend an analysis unseen; the "You copied a message" card and the launcher shortcut go straight on as before.
- Improved: "Confirm all" sits after the cards instead of above them; the chat chip shows a help icon (it explains how to bring a chat export); "Process anyway" on a repeated message reads "Read it again".
- Fixed: leaving the timetable review ("Confirm the timetable") with back now asks before dropping the unsaved reading; a one-day intensive period in the onboarding school step prints one date.
- Improved: welcome copy now says to copy the school message and paste it into Mochila (photos and PDFs can still be shared in), instead of "share it once".

## v0.4.0 (0.4.0+61) · 2026-11-08

- Items dated in another year now show the year in their detail, in the week view header and in the day title of the month view.
- When you import a menu or a timetable, the review now shows it like the paper (weeks and weekdays on a tablet or a wide screen, one block per week on a phone) and marks the days or slots worth checking, with a short reason for each and a count at the top ("3 days to check", or "Everything matches" when two readings of the document agree). Changing a marked day or slot clears its mark; nothing is saved until you confirm.
- The "Reading the document" message no longer shows behind the sheets that ask how to read it or for your consent to use the AI; it appears once you have chosen.
- You can add up to two people with limited access (for example someone who helps with pickups): in Family, "Add a person with limited access", choose the children and share the code. They only see Today, the week and pickups of the children you choose, and only to look: they cannot change anything and never see expenses, imports, the invitation code, family settings or the other children. You can change the children they see or remove them at any time.
- If you join with a limited-access code, Mochila opens with just Today, the week and Settings, and explains once what you can see. In Settings you can still change the language, the look and the notifications on your phone, leave the family, sign out or delete your account.
- Privacy policy 1.2 (website, Spanish, Catalan and English): new section 2.8 on people with limited access inside the family (what they see, that it collects no new data and that the server enforces the limits), the family data row, the retention row for which children each of them sees, and what happens to the family when the last adult with full access deletes their account. The sentence on who the app is for now uses neutral wording.

## v0.3.7 (0.3.7+60) · 2026-11-08

- Importing a school menu or a timetable waits less: the server no longer holds the answer back for the bookkeeping that can happen while it answers, and a reading that comes back cut off (too long for the model) is no longer asked again in the same way, but once more asking for a shorter answer.
- The list of things to do opens faster when the family has many of them.
- While a menu, timetable or school calendar is read from a photo or a PDF (it can take up to a minute), the waiting message now moves on with the time instead of saying "Analysing…" the whole time: "Reading the document", then "Reading each day, this usually takes about half a minute", then "Checking the reading twice, one moment more" (no percentages). Screen readers are told of each change once.
- Reading a school document from a photo or a PDF is faster on the phone: the photo is prepared while the text is read, and scanned PDFs are read two pages at a time.
- Timetables read from a photo or a PDF are read better: a time column that prints the start and the end of a row side by side is now one row, a class printed for two weeks is one class instead of three, a cell that one reading takes whole and the other in parts is one lesson, the class codes ("1 ESO") no longer come with the subject, the short name the school prints ("EF") is shown as the full name ("Educació Física") and two lessons that overlap no longer do.
- Website: a 404 page of our own in five languages.
- The "You copied a message" card and sheet no longer come over another sheet or dialog (the school document import, the consent to use the AI, "how to read", sending a photo), nor over a form you are filling in (Create by hand, editing an item). If you copy a message while one of them is open, Mochila waits and offers it once you are back on a normal screen.
- The date of an item now reaches the end of the year ten years ahead (it stopped at three), and a date that is not this year says which year it is ("dl. 1 de gen. 2029"), so a trip or a camp planned for next year is not read as this year.

## v0.3.6 (0.3.6+59) · 2026-11-07

- When a school menu or timetable could not be read well, the review now says so kindly. If only some days (or classes) are doubtful, a soft note at the top asks you to check them against the paper, and they are marked in the list. If nothing could be read, the note offers a new photo or the PDF, adding the days (or classes) by hand, and "Send it to us": it opens your own e-mail app with the photo attached and a short message, after a sheet that explains where it goes and asks you to check it shows no personal data. You read and send the e-mail yourself; Mochila sends nothing on its own, and the temporary copy of the photo is deleted when you leave the screen.
- School menus and timetables read from a photo or a PDF page are now read twice at the same time, in two different ways, and the two readings are compared: what both agree on is shown as clear, and a day or a class where they differ is marked for you to check, with what the other reading saw. Fewer mistakes go unmarked, and the import takes about the same time.
- A strike that comes as the reason for a change now has its own card (the school day without classes), and updating an item no longer changes its title when only the case or the accents are different. Updates now also apply an explicit lunch or early-finish change from the message instead of losing it, and clearing the notes when editing an item leaves the stored notes as they were.
- School menus, timetables and calendars in a PDF of several pages can now be read with the image too, as one-page PDFs already could: the app picks the page with the table (you can choose another one) and sends only the image of that page, with the text of the whole PDF. The same choice, "read it better (sends the image)" or "text only", is asked as before. Circulars and activity sheets still go as text only.
- The "Import" tab is now called "Add", and it offers two clear choices: from a message, a photo or a PDF (as before), or "Create by hand", with any date. Today keeps its own + button.
- In Week's calendar, the selected day has an "+ Add" button next to its date, and an empty day says "Nothing this day · Add something". Both open the new-item form with that day already filled in. A long press on a day in the calendar does the same.
- Today no longer jumps when the "timetable missing" line appears: on the first load it now waits for that line too, so it is there with the rest of the day instead of pushing the list down a moment later.
- The example in the first-run setup ("Try it with an example") always uses dates ahead of today: the trip is on Thursday next week and the payment before Monday, instead of fixed dates in October.
- The home-screen widget says when it is the summer holidays, as Today does ("Summer holidays: no school today"), instead of "Nothing special".
- Today says when a child is away on a school camp ("Pau, away on the school trip", and on the return day when they are back), and no longer lists that child's usual school hours and menu while they are away. Tapping the line opens the school card with the camp details.
- Taking a child off a school trip: if the trip changed in the meantime, the calm "it changed meanwhile" message now also shows when the school card was already closed, and the day reloads.
- Lunch menus from a PDF land on the right days more often: when a menu came back with every week one day early (Sunday to Thursday), the dishes are now moved back to Monday to Friday, and the reading is told which day numbers fall on each weekday of the month.
- School calendars bring their holidays more often: a break written as "last day of classes" and "classes resume" now becomes the whole holiday, and in a photo of a calendar the colours of the legend mark the days off.

## v0.3.5 (0.3.5+58) · 2026-11-05

- Today and Week no longer jump when the app opens: the first time, they keep the loading placeholder until the whole day (the bags, the hours, the menu and who picks up) is ready, instead of showing it piece by piece and shifting everything down. If something is slow, they show what they have after three seconds.

## v0.3.4 (0.3.4+57) · 2026-11-05

- The home-screen widget and the reminders are brought up to date each time the app opens, also when nothing changed on the server; since 0.3.2 they could keep an older state (for example the previous day) until something changed.

## v0.3.3 (0.3.3+56) · 2026-11-05

- Simpler Settings. Notifications now have their own screen, grouped as Every evening, Reminders and Family: the summary time and what it includes sit in one sheet, payments and signatures use a single choice (two days before, the day itself, both or never), and the other adult's changes and pick-up changes are one switch. The permission card only appears when something is missing, and the lock-screen option and the summary test moved to More options (the generic test notification is gone). Account actions (sign out, export, delete account) moved into Account, and the two privacy switches (original quotes, crash reports) into Privacy and AI; the Account, Subscription and Privacy rows are one group, and the data sources link is a quiet link above the version.
- Who takes and picks up the children («Porta…», «Recull… a les 16:30») and the other adult's name are on Today from the start, like the rest of the day, instead of arriving a moment later; they also show without connection.

## v0.3.2 (0.3.2+55) · 2026-11-05

- Faster start: Today opens straight away with what you saw last time and refreshes in the background, so there is no wait for the server; when something changed, it updates in place. The launch screen now flows into the app without a jump, and the setup tips on Today arrive sooner.
- Owner dashboard (`/admin`): new look (dark, flat, one lavender accent; light when the device is light). A status bar at the top says whether everything is fine, and the page is grouped into Money, Growth, Usage and Health. New: budget panel with the daily and monthly caps and the cost per import, share of imports finished, what gets created by type, and families by region (with the region's name).
- Owner dashboard: new Retention panel (families that come back in weeks 1, 2 and 4 after sign-up) and Import quality panel (how imports end, failure reasons and average duration). The quality numbers start counting from this release; the server only keeps a count per day and outcome, never a family or a text.

## v0.3.1 (0.3.1+54) · 2026-11-03

- A clear message when the phone cannot verify the app (mostly rooted or modified phones) instead of “We couldn’t reach the server”. Without an account you can sign in with Google to continue.

## v0.3.0 (0.3.0+53) · 2026-11-02

- Caterer menu PDFs: the monthly PDF a caterer publishes (dozens of pages, several groups of schools and one page per diet) can be imported from Menu › Import or by sharing it. Mochila reads the PDF on the phone, finds your school's group and picks the standard menu plus your children's diets, then imports them with one tap; «Change» lets you pick other menus (up to eight per school). If your school is not listed, it says so and lets you choose the menu anyway. The choice is remembered, so next month sharing the new PDF is one tap («Same as last month»). Reading can be cancelled, and only the text of the chosen pages leaves the phone.
- Lunch menu: after importing, the screen opens on the imported month so you can review it first; «Month» now filters the list, with «Whole school year» to see everything.

## v0.2.2 (0.2.2+52) · 2026-11-01

- DNI/NIE and card numbers found in a shared message are never put back into the saved item: they stay hidden (shown as «•••»).

## v0.2.1 (0.2.1+51) · 2026-11-01

- Joining a family shows its children straight away; in 0.2.0 Family could stay on «You have not added a child yet» after joining.
- Basque: summer day camps are now «hiri-udalekuak» (it was «udalekuak», which can also mean camps with nights away).

## v0.2.0 (0.2.0+50) · 2026-11-01

- Start of the school year: from two weeks before it begins until a month after, Today and Family show one card, «The 2027-28 school year is starting: check on Pau and Lena». A short guided review, one step per child, proposes the next class (P5 to 1st changes stage; a 6th-grader can stay in 6th or be marked as having finished primary), keeps or changes the school and carries on the after-school activities that ended with last year. It saves at the last step, can be resumed if the connection drops, and then lists what to check: the timetable, the bag rules and who picks up. A school left without children can be deleted with its menu and calendar. It replaces the old «Is Pau moving to P4?» card. Mochila covers infant and primary school only: it never proposes secondary school.
- Child › «Change school»: moves the child to another school at once, and Today then shows «Pau goes to Escola Nova: review the timetable and bag» with links to both.
- School-year milestones: Today shows an «Up next» card with the nearest thing to prepare or apply for (pre-enrolment, secondary school application and enrolment in 6th, lunch and book grants, the book list, summer camps, the start-of-year meeting, the three term reports, labelling the clothes), with «Done», «Not for us» and undo; Family › «School-year milestones» lists them all with the children each one is about. The texts are guidance («usually in March»), never an official date, and nothing is notified. Answers are shared by both adults, kept for that school year, included in the data export and deleted with the account. The card waits while the start-of-year or change-of-school card is on Today: one thing at a time.
- Archived children: Child › «Archive» (after finishing primary school, or for another reason) takes a child out of Today, the week, the bag, pick-ups, reminders, the widget and future calendar events, while their history, school data and expenses are kept. Family › «Archived» lists them with «Restore» and «Delete», and archived children do not count towards the eight-children limit. Content addressed only to archived children leaves the daily views; content for the whole family stays. When every child is archived, Today shows a calm farewell with «Export my data», how to cancel a subscription, «Delete account» and «Add a child»; nothing is cancelled or deleted on its own.
- Summer and summer camps (casals): out of term, Today shows a calm «Summer holidays» card and no longer asks for a timetable, a school menu or the school bag, and the school pick-up and its reminders stay quiet. A casal is an activity with its own dates (it can be in July or early September), days, hours, place, children and what to bring; on a casal day the school card, the bag and the pick-up come from the casal, with their reminders and no school wording, and on a public holiday there is no casal. Casals have their own section next to the after-school activities and can be added from Family, Activities or Today, or from an imported message with a date range («Save as casal»), which opens the form filled in for you to confirm.
- Basque, Galician and English texts of the new screens reviewed.
- Website: the Android test on Google Play is open. «Try it on your phone» explains the two steps (join the mochila-testers group, then accept the test and install Mochila from Google Play), asks testers to stay for 14 days, and the home page note, the FAQ, the closing section and the footer link to it, in the five languages.
- Privacy policy (website, Spanish, Catalan and English): new section 2.6 on the Android test group: Mochila sees the email address and display name of the Google account that joins, uses them only to give access to the test, and deletes them when you leave the group or the test ends.

## v0.1.3 (0.1.3+49) · 2026-10-29

- The app identifier is now `es.lamochila.app` on Android and iOS (it was `app.mochila.mochila`), set before the first store upload. Earlier test builds install as a separate app: sign in again in the new one and uninstall the old one.
- The web app moves to web.lamochila.app (it was app.lamochila.app, which now takes you there).
- Web app on a computer: Today, the week and Import are now separate panels with room above, below and between them, and use more of a wide screen.
- Settings › Calendar: after choosing «Create a “Mochila” calendar» the row shows «Creating the calendar…» with a spinner straight away, also while coming back from Google, instead of looking as if nothing happened.
- With «Show details on the lock screen» off, the evening reminder for who takes and picks up now says whose turn is yours («Tomorrow you do the school drop-off», «… the pick-up» or both) instead of always «You have a pick-up reminder».

## v0.1.2 (0.1.2+48) · 2026-10-29

- Long screen titles in the top bar (for example «Configurar el colegio», «Editatu seme-alaba» or «Com importar un xat de WhatsApp») now wrap onto a second line instead of ending with «…», in every language.
- School search (first-time setup and «New school»): with the keyboard open the suggestions now have room: the field moves to the top and the «Continue» button steps aside while they are shown.
- Larger text sizes: the «Today | Tomorrow» switch, the «Skip» button in the first-time setup, the legend of the month calendar, the widget preview and the school-setup checklist no longer get cut or squeezed, long confirmation dialogs scroll, and long placeholders in text fields and the region buttons wrap instead of ending with «…».
- After deleting your account the app now shows the welcome screen with its «account deleted» note instead of silently starting a guest session.
- Confirming the account deletion with a different Google account now says so («you chose another account») instead of a generic connection message.
- Setting up the school during the first-time setup no longer lists or links children who do not go to school yet; the line is hidden when none of them goes.
- The colour preselected for the next child skips the colour the app uses for itself and the ones already taken, in the first-time setup and in «Add child».
- The Android Back button inside the first-time setup now goes to the previous step instead of closing the app.
- A child you just marked as «Not at school yet» no longer triggers the «starting school this year?» card until the next school year.
- While the school search is loading it shows a «Searching…» row; the «Can't find it» row only appears once the search has finished, below the results.
- The test notification now has its own text, also on the lock screen, instead of «You have things planned for tomorrow».
- Signing in after a failed start without an account no longer leaves you on «We couldn't reach the server».
- Fixed a rare crash when the family refresh was still running as you signed out or the app closed.

## v0.1.1 (0.1.1+47) · 2026-10-28

- Events are no longer duplicated in the phone calendar; existing duplicates are removed on the next sync.
- Signing in only shows the spinner on the button you tapped.
- iOS: the app icon no longer shows a transparent edge.

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
