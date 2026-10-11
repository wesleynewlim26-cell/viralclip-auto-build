.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Lokhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .registers 7
    .param p1, "this$0"    # Lokhttp3/internal/http2/Http2Connection;
    .param p2, "reader"    # Lokhttp3/internal/http2/Http2Reader;

    .prologue
    .line 668
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 669
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    .line 671
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .registers 1

    .prologue
    .line 822
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .prologue
    .line 895
    return-void
.end method

.method applyAndAckSettings(ZLokhttp3/internal/http2/Settings;)V
    .registers 16
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lokhttp3/internal/http2/Settings;

    .prologue
    const/4 v8, 0x0

    .line 785
    const-wide/16 v0, 0x0

    .line 786
    .local v0, "delta":J
    const/4 v6, 0x0

    .line 787
    .local v6, "streamsToNotify":[Lokhttp3/internal/http2/Http2Stream;
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v9, v7, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v9

    .line 788
    :try_start_9
    iget-object v10, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v10
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_79

    .line 789
    :try_start_c
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v7}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v4

    .line 790
    .local v4, "priorWriteWindowSize":I
    if-eqz p1, :cond_1d

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v7}, Lokhttp3/internal/http2/Settings;->clear()V

    .line 791
    :cond_1d
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v7, p2}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 792
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v7}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v3

    .line 793
    .local v3, "peerInitialWindowSize":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_57

    if-eq v3, v4, :cond_57

    .line 794
    sub-int v7, v3, v4

    int-to-long v0, v7

    .line 795
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_74

    .line 796
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v11, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v11, v11, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v7, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lokhttp3/internal/http2/Http2Stream;

    move-object v6, v7

    .line 799
    :cond_57
    :goto_57
    monitor-exit v10
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_76

    .line 801
    :try_start_58
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object v10, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v7, v10}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_63} :catch_7c
    .catchall {:try_start_58 .. :try_end_63} :catchall_79

    .line 805
    :goto_63
    :try_start_63
    monitor-exit v9
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_79

    .line 806
    if-eqz v6, :cond_86

    .line 807
    array-length v9, v6

    move v7, v8

    :goto_68
    if-ge v7, v9, :cond_86

    aget-object v5, v6, v7

    .line 808
    .local v5, "stream":Lokhttp3/internal/http2/Http2Stream;
    monitor-enter v5

    .line 809
    :try_start_6d
    invoke-virtual {v5, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 810
    monitor-exit v5
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_83

    .line 807
    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    .line 797
    .end local v5    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_74
    const/4 v6, 0x0

    goto :goto_57

    .line 799
    .end local v3    # "peerInitialWindowSize":I
    .end local v4    # "priorWriteWindowSize":I
    :catchall_76
    move-exception v7

    :try_start_77
    monitor-exit v10
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    :try_start_78
    throw v7

    .line 805
    :catchall_79
    move-exception v7

    monitor-exit v9
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_79

    throw v7

    .line 802
    .restart local v3    # "peerInitialWindowSize":I
    .restart local v4    # "priorWriteWindowSize":I
    :catch_7c
    move-exception v2

    .line 803
    .local v2, "e":Ljava/io/IOException;
    :try_start_7d
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # invokes: Lokhttp3/internal/http2/Http2Connection;->failConnection()V
    invoke-static {v7}, Lokhttp3/internal/http2/Http2Connection;->access$000(Lokhttp3/internal/http2/Http2Connection;)V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_79

    goto :goto_63

    .line 810
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_83
    move-exception v7

    :try_start_84
    monitor-exit v5
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v7

    .line 813
    .end local v5    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_86
    # getter for: Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lokhttp3/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const-string v10, "OkHttp %s settings"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v12, v12, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-direct {v9, p0, v10, v11}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 818
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .registers 9
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 697
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2, p3, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->pushDataLater(ILokio/BufferedSource;IZ)V

    .line 711
    :cond_d
    :goto_d
    return-void

    .line 700
    :cond_e
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 701
    .local v0, "dataStream":Lokhttp3/internal/http2/Http2Stream;
    if-nez v0, :cond_28

    .line 702
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 703
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    .line 704
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_d

    .line 707
    :cond_28
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/Http2Stream;->receiveData(Lokio/BufferedSource;I)V

    .line 708
    if-eqz p1, :cond_d

    .line 709
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->receiveFin()V

    goto :goto_d
.end method

.method protected execute()V
    .registers 6

    .prologue
    .line 674
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 675
    .local v0, "connectionErrorCode":Lokhttp3/internal/http2/ErrorCode;
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 677
    .local v2, "streamErrorCode":Lokhttp3/internal/http2/ErrorCode;
    :try_start_4
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-virtual {v3, p0}, Lokhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V

    .line 678
    :cond_9
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p0}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 680
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 681
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_21
    .catchall {:try_start_4 .. :try_end_16} :catchall_31

    .line 687
    :try_start_16
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v0, v2}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_41

    .line 690
    :goto_1b
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 692
    :goto_20
    return-void

    .line 682
    :catch_21
    move-exception v1

    .line 683
    .local v1, "e":Ljava/io/IOException;
    :try_start_22
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 684
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_31

    .line 687
    :try_start_26
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v0, v2}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_3f

    .line 690
    :goto_2b
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_20

    .line 686
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_31
    move-exception v3

    .line 687
    :try_start_32
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4, v0, v2}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_3d

    .line 690
    :goto_37
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 688
    :catch_3d
    move-exception v4

    goto :goto_37

    .restart local v1    # "e":Ljava/io/IOException;
    :catch_3f
    move-exception v3

    goto :goto_2b

    .end local v1    # "e":Ljava/io/IOException;
    :catch_41
    move-exception v3

    goto :goto_1b
.end method

.method public goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    .prologue
    .line 847
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 852
    :cond_6
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v3

    .line 853
    :try_start_9
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/internal/http2/Http2Stream;

    .line 854
    .local v1, "streamsCopy":[Lokhttp3/internal/http2/Http2Stream;
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v4, 0x1

    # setter for: Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    invoke-static {v2, v4}, Lokhttp3/internal/http2/Http2Connection;->access$302(Lokhttp3/internal/http2/Http2Connection;Z)Z

    .line 855
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_4b

    .line 858
    array-length v3, v1

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v3, :cond_4e

    aget-object v0, v1, v2

    .line 859
    .local v0, "http2Stream":Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v4

    if-le v4, p1, :cond_48

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 860
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v4}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 861
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 858
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 855
    .end local v0    # "http2Stream":Lokhttp3/internal/http2/Http2Stream;
    .end local v1    # "streamsCopy":[Lokhttp3/internal/http2/Http2Stream;
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2

    .line 864
    .restart local v1    # "streamsCopy":[Lokhttp3/internal/http2/Http2Stream;
    :cond_4e
    return-void
.end method

.method public headers(ZIILjava/util/List;)V
    .registers 15
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p4, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 716
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    .line 759
    :cond_d
    :goto_d
    return-void

    .line 720
    :cond_e
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v7

    .line 721
    :try_start_11
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v6

    .line 723
    .local v6, "stream":Lokhttp3/internal/http2/Http2Stream;
    if-nez v6, :cond_78

    .line 725
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$300(Lokhttp3/internal/http2/Http2Connection;)Z

    move-result v1

    if-eqz v1, :cond_26

    monitor-exit v7

    goto :goto_d

    .line 754
    .end local v6    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_23
    move-exception v1

    monitor-exit v7
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_23

    throw v1

    .line 728
    .restart local v6    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_26
    :try_start_26
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v1, v1, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p2, v1, :cond_2e

    monitor-exit v7

    goto :goto_d

    .line 731
    :cond_2e
    rem-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v2, v2, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_3a

    monitor-exit v7

    goto :goto_d

    .line 734
    :cond_3a
    invoke-static {p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v5

    .line 735
    .local v5, "headers":Lokhttp3/Headers;
    new-instance v0, Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v3, 0x0

    move v1, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    .line 737
    .local v0, "newStream":Lokhttp3/internal/http2/Http2Stream;
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p2, v1, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 738
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    # getter for: Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lokhttp3/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v9, v4, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-direct {v2, p0, v3, v4, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Http2Stream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 752
    monitor-exit v7

    goto :goto_d

    .line 754
    .end local v0    # "newStream":Lokhttp3/internal/http2/Http2Stream;
    .end local v5    # "headers":Lokhttp3/Headers;
    :cond_78
    monitor-exit v7
    :try_end_79
    .catchall {:try_start_26 .. :try_end_79} :catchall_23

    .line 757
    invoke-virtual {v6, p4}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V

    .line 758
    if-eqz p1, :cond_d

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->receiveFin()V

    goto :goto_d
.end method

.method public ping(ZII)V
    .registers 8
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    const/4 v0, 0x1

    .line 825
    if-eqz p1, :cond_29

    .line 826
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    .line 827
    if-ne p2, v0, :cond_f

    .line 828
    :try_start_8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # operator++ for: Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$108(Lokhttp3/internal/http2/Http2Connection;)J

    .line 835
    :cond_d
    :goto_d
    monitor-exit v1

    .line 844
    :goto_e
    return-void

    .line 829
    :cond_f
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1b

    .line 830
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # operator++ for: Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$608(Lokhttp3/internal/http2/Http2Connection;)J

    goto :goto_d

    .line 835
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v0

    .line 831
    :cond_1b
    const/4 v0, 0x3

    if-ne p2, v0, :cond_d

    .line 832
    :try_start_1e
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # operator++ for: Lokhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$708(Lokhttp3/internal/http2/Http2Connection;)J

    .line 833
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_18

    goto :goto_d

    .line 839
    :cond_29
    :try_start_29
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$500(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$PingRunnable;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2, p3}, Lokhttp3/internal/http2/Http2Connection$PingRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;ZII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_29 .. :try_end_3a} :catch_3b

    goto :goto_e

    .line 840
    :catch_3b
    move-exception v0

    goto :goto_e
.end method

.method public priority(IIIZ)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 885
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    .line 890
    return-void
.end method

.method public rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .prologue
    .line 762
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 763
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 770
    :cond_d
    :goto_d
    return-void

    .line 766
    :cond_e
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 767
    .local v0, "rstStream":Lokhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_d

    .line 768
    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_d
.end method

.method public settings(ZLokhttp3/internal/http2/Settings;)V
    .registers 10
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lokhttp3/internal/http2/Settings;

    .prologue
    .line 774
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$500(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;ZLokhttp3/internal/http2/Settings;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 782
    :goto_1d
    return-void

    .line 779
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public windowUpdate(IJ)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 867
    if-nez p1, :cond_16

    .line 868
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v2

    .line 869
    :try_start_5
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v4, v1, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v4, p2

    iput-wide v4, v1, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 870
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 871
    monitor-exit v2

    .line 880
    :cond_12
    :goto_12
    return-void

    .line 871
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1

    .line 873
    :cond_16
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 874
    .local v0, "stream":Lokhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_12

    .line 875
    monitor-enter v0

    .line 876
    :try_start_1f
    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 877
    monitor-exit v0

    goto :goto_12

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v1
.end method
