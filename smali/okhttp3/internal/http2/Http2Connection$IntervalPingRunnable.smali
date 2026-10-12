.class final Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IntervalPingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;)V
    .registers 6
    .param p1, "this$0"    # Lokhttp3/internal/http2/Http2Connection;

    .prologue
    .line 392
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 393
    const-string v0, "OkHttp %s ping"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v2

    .line 399
    :try_start_4
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$100(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v4

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$200(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_1e

    .line 400
    const/4 v0, 0x1

    .line 405
    .local v0, "failDueToMissingPong":Z
    :goto_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_25

    .line 406
    if-eqz v0, :cond_28

    .line 407
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # invokes: Lokhttp3/internal/http2/Http2Connection;->failConnection()V
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$000(Lokhttp3/internal/http2/Http2Connection;)V

    .line 411
    :goto_1d
    return-void

    .line 402
    .end local v0    # "failDueToMissingPong":Z
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # operator++ for: Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$208(Lokhttp3/internal/http2/Http2Connection;)J

    .line 403
    const/4 v0, 0x0

    .restart local v0    # "failDueToMissingPong":Z
    goto :goto_15

    .line 405
    .end local v0    # "failDueToMissingPong":Z
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw v1

    .line 409
    .restart local v0    # "failDueToMissingPong":Z
    :cond_28
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    goto :goto_1d
.end method
