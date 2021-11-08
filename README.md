### How to Use This Parser
1. Put the `apache-200.sh` and `apache-500.sh` to `/var/log/apache2`
2. If you want to get the path accessed for 200 response code in the last 10 minutes, simply run
   `./apache-200.sh *`
3. If you want to get the 500 response code, just run
   `./apache-500.sh *`  


**Note: Currently in the log sample there are only 200 response code sample. Not yet 500. So for the trial purpose you can run the `./apache-200.sh *` first**