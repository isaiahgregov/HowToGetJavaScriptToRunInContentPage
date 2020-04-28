# HowToGetJavaScriptToRunInContentPage
How do I get a / this JavaScript script to run in a content page?

I need to learn GitHub better, so I don't immediately know how to upload a VS project to here correct. It wouldn't let me upload a .zip file because it was too large. The "repository" files are supposed to be in a folder called "Pages". To get this program to run, you would have to create an ASP.NET web forms application in Visual Studio and then drag these files into the main folder, replacing the default files and make sure to put the "repository" files in a new file called "Pages".

I'm not sure if you need to here, but I use word wrap in VS, so you may want to make sure that's enabled if you run in VS.

The point of the script is to remember the position of the scroll bar in the grid view so that when the page refreshes, it loads the scroll position where the user last left off.

In the default .aspx file is the script. This is the first page to run if no other page is specified. There is a button. When you scroll down in the gridview and then click the button, the page refreshes, and the gridview maintains its scroll position. This doesn't happen in the content page however, which contains the same script and is the "repository.aspx" page. "repository.aspx" inherits from main.master, as you can see in the @page header. It does this so that everything in this content page can be loaded in the <asp:Content ...> brackets. Again, there is the same script there in the content page, but it won't run in the "repository" content page. When you load from the repository page, after you scroll down in the gridview and press the button, the page refreshes, and the scroll position resets to the top.
