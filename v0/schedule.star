# shedule is a Starlark module that provides functions for scheduling tasks.
#
# Allowed in: deploy, task
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/package.star", "package")
#   load("github.com/ocuroot/sdk/v0/schedule.star", "schedule")
#   
#   def deploy():
#     schedule.after("1h", "my_task")
#
#   def my_task():
#     print("task executed")
#   
#   package(
#     name="my-package",
#     deploy=deploy,
#     tasks={
#       "my_task": my_task,
#     }
#   )

def make_schedule():
    def after(schedule, task):
        """
        Schedules a task to run after the given duration.

        Args:
            schedule: The duration after which the task should run. Example: "1h" for 1 hour, "2m" for 2 minutes.
            task: The name of the task to run. Must be a task defined in the current package.
        """
        pass

    return struct(
        after = after,
    )