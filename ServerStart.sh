java -d64 -Xms10G -Xmx10G -XX:PermSize=1024m -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:MaxGCPauseMillis=50 -XX:ParallelGCThreads=4 -XX:+AgressiveOpts -jar forge-1.7.10-10.13.2.1291-universal.jar nogui