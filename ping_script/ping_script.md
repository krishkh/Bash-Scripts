Ping Monitor - Simple Uptime Logger
==================================

This script checks if your favorite sites are up, and logs the results. I used it with Termux boot scripts, but it works anywhere with bash and curl.

How to Use
----------

1. Add your URLs in the script:

   URLS=(
       "https://your-website.com/"
       "https://another-site.com"
   )

2. Make it executable and run:

   chmod +x ping_script.sh
   ./ping_script.sh

3. Check the log:

   cat ~/.termux/boot/log.txt

What it does
------------

- Pings each URL every minute.
- Logs success or failure with a timestamp.
- Keeps running until you stop it.

Change the sleep time or log location if you want. Add as many URLs as you like.
