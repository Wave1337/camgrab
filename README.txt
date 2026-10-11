CAM GRAB
========

WHAT THIS IS
------------
Cam Grab is a tiny tool that downloads the latest picture from a short list
of Surfline beach cameras and shows them all on one simple page in your web
browser, so you can quickly scroll through current conditions.

Each time you run it, it grabs fresh pictures and replaces the old ones.
If a camera's picture can't be downloaded, its name shows up in red with
the word FAILED.

There is nothing to install. It uses tools already built into your computer.


WHICH FILE DO I USE?
--------------------
  Windows computer  ->  camgrab.bat
  Mac computer      ->  camgrab.sh

You only need the one for your computer. You can ignore the other.


HOW TO RUN IT ON WINDOWS
------------------------
1. Save camgrab.bat somewhere easy to find, such as your Desktop or a new
   folder in Documents.

2. Double-click camgrab.bat.

3. If a blue box appears that says "Windows protected your PC":
     a. Click "More info".
     b. Click "Run anyway".
   (This happens because the file was downloaded from the internet. You
   should only need to do this the first time.)

4. A black window will appear for a few seconds while the pictures
   download. It closes by itself.

5. Your web browser will open and show the camera pictures. Scroll down
   to see them all.

To get fresh pictures later, just double-click camgrab.bat again.


HOW TO RUN IT ON A MAC
----------------------
1. Save camgrab.sh somewhere easy to find, such as your Desktop or your
   Downloads folder.

2. Open the Terminal app:
     a. Press Command + Space on your keyboard. A search bar appears.
     b. Type:  Terminal
     c. Press Return.
   A window with text in it will open. This is Terminal.

3. In the Terminal window, type the word  bash  followed by a space.
   (Don't press Return yet.)

4. Open Finder, find camgrab.sh, and drag it into the Terminal window.
   Its location will be filled in for you. The line should look something
   like this:
     bash /Users/yourname/Desktop/camgrab.sh

5. Press Return.

6. You'll see a few "Grabbing..." lines while the pictures download.

7. Your web browser will open and show the camera pictures. Scroll down
   to see them all.

To get fresh pictures later, repeat steps 2 through 5. Tip: in Terminal,
you can press the Up Arrow key to bring back the last line you typed,
then press Return.


WHERE ARE THE PICTURES SAVED?
-----------------------------
A folder named "camgrab" is created next to the file you ran. It holds
the downloaded pictures and the page (index.html). You can open
index.html again any time to see the last batch without downloading new
pictures.


TROUBLESHOOTING
---------------
- Every camera says FAILED: check that you're connected to the internet,
  then try again.

- One camera says FAILED: that camera may be offline. Try again later.

- Nothing happens on Windows: make sure you double-clicked camgrab.bat
  itself, not a shortcut to it.

- Mac says "No such file or directory": the location after the word
  "bash" is wrong. Repeat steps 3 and 4, dragging the file into the
  window instead of typing its location.


CHANGING THE CAMERA LIST (OPTIONAL)
-----------------------------------
Open the file in a plain text editor (Notepad on Windows, TextEdit on a
Mac). Near the top is a line that starts with  CAMS=  followed by camera
names separated by spaces. Add or remove names there, then save the file.
