configuration=
{
        daemon=false,
        pathSeparator="/",

        logAppenders=
        {
                {
                        name="console appender",
                        type="coloredConsole",
                        level=6
                },
                {
                        name="file appender",
                        type="file",
                        level=6,
                        fileName="/tmp/crtmpserver",
                        fileHistorySize=10,
                        fileLength=1024*256,
                        singleLine=true
                }
        },

        applications=
        {
                rootDirectory="/opt/crtmpserver/builders/cmake/applications",

                {
                        description="Distribution GOGO",
                        name="flvplayback",
                        protocol="dynamiclinklibrary",
                        aliases=
                        {
                                "simpleLive",
                                "vod",
                                "live",
                                "WeeklyQuest",
                                "SOSample",
                                "oflaDemo",
                        },
                        acceptors =
                        {
                                {
                                        ip="0.0.0.0",
                                        port=1935,
                                        protocol="inboundRtmp"
                                }
                        },
                        externalStreams = {
				{
					uri="rtmp://redist.ystv.co.uk/live/main",
					localStreamName="main",
					keepAlive=true
				}
                        }
                }
                --#INSERTION_MARKER# DO NOT REMOVE THIS. USED BY appscaffold SCRIPT.
        }
}

