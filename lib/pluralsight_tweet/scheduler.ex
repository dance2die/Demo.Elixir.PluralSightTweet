defmodule PluralSightTweet.Scheduler do
    def schedule_file(schedule, file) do
        Quantum.add_job(schedule, fn -> IO.puts PluralSightTweet.FileReader.get_strings_to_tweet(file) end)
    end
end