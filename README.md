# README

To run the test do the following:

* Clone the repo

* Run the migrations

* Tail the log

* Run the script while tailing the log

```
RAILS_ENV=development ruby script/jobs/add_new_users
```

What you'll see is that 100 jobs will be enqueued, but they all won't get performed.
This is becasue the queue is shutdown before the jobs are finished. When the script
finishes running SuckerPunch knows the script exited and at that point shuts down the
queue. While this is correct, I'd expect it to finish the jobs that are already in
the queue becasue the code seems to be doing a graceful shutdown.
