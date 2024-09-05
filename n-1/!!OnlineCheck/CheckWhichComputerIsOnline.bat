for /f %%a in (C:\PSTools\a.txt) do (
ping %%a >> C:\PSTools\!!OnlineCheck\Online.txt
)
