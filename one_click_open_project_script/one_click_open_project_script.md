One-Click Project Opener
========================

This batch script opens your project in Cursor (or any editor you want) and launches your browser. Great for web devs who want to get coding fast.

How to Use
----------

1. Edit `project_name.bat`:

   start "" cursor "Drive:\pathA\pathB\project_name"
   start "" "http://localhost:3000"

2. In your project folder, add a `.vscode/tasks.json` file. This is what actually automates your dev tasks. Example:
  
   {
     "version": "2.0.0",
     "tasks": [
       {
         "label": "Start Dev Server",
         "type": "shell",
         "command": "npm run dev",
         "runOptions": { "runOn": "folderOpen" }
       }
     ]
   }
   
   There is also an example .vscode file in this repo for refference
   
3. Double-click the batch file or run it from the command line:

   project_name.bat

What it does
------------

- Opens your project in Cursor (or whatever editor you set)
- Runs your dev server automatically (thanks to tasks.json)
- Waits a few seconds
- Opens your browser to localhost

Tweak the editor, port, or tasks as you like. Make a batch file for each project if you want. The real magic is in the tasks.json file—set it up once and you’re good.
