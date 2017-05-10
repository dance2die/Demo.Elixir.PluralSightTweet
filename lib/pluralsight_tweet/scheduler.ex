defmodule PluralSightTweet.Scheduler do
    def schedule_file(schedule, file) do
        Quantum.add_job(schedule, 
            fn -> PluralSightTweet.FileReader.get_strings_to_tweet(file) 
                  |> PluralSightTweet.TweetServer.tweet
            end)
    end
end