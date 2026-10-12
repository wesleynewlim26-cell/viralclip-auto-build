.class public final Lokhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final address:Lokhttp3/Address;

.field public final call:Lokhttp3/Call;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Lokhttp3/internal/http/HttpCodec;

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/ConnectionPool;

.field public final eventListener:Lokhttp3/EventListener;

.field private refusedStreamCount:I

.field private released:Z

.field private reportedAcquired:Z

.field private route:Lokhttp3/Route;

.field private routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const-class v0, Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V
    .registers 8
    .param p1, "connectionPool"    # Lokhttp3/ConnectionPool;
    .param p2, "address"    # Lokhttp3/Address;
    .param p3, "call"    # Lokhttp3/Call;
    .param p4, "eventListener"    # Lokhttp3/EventListener;
    .param p5, "callStackTrace"    # Ljava/lang/Object;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    .line 98
    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    .line 99
    iput-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    .line 100
    iput-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    .line 101
    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 102
    iput-object p5, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
    .registers 9
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 386
    sget-boolean v1, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 388
    :cond_14
    if-eqz p3, :cond_18

    .line 389
    iput-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 391
    :cond_18
    if-eqz p2, :cond_1c

    .line 392
    iput-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    .line 394
    :cond_1c
    const/4 v0, 0x0

    .line 395
    .local v0, "socket":Ljava/net/Socket;
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v1, :cond_60

    .line 396
    if-eqz p1, :cond_27

    .line 397
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iput-boolean v2, v1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 399
    :cond_27
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v1, :cond_60

    iget-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v1, :cond_35

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-boolean v1, v1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v1, :cond_60

    .line 400
    :cond_35
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v1}, Lokhttp3/internal/connection/StreamAllocation;->release(Lokhttp3/internal/connection/RealConnection;)V

    .line 401
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 402
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 403
    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/Internal;->connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 404
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 407
    :cond_5e
    iput-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 410
    :cond_60
    return-object v0
.end method

.method private findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;
    .registers 28
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v10, 0x0

    .line 163
    .local v10, "foundPooledConnection":Z
    const/4 v2, 0x0

    .line 164
    .local v2, "result":Lokhttp3/internal/connection/RealConnection;
    const/16 v18, 0x0

    .line 167
    .local v18, "selectedRoute":Lokhttp3/Route;
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v4

    .line 168
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "released"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :catchall_17
    move-exception v3

    monitor-exit v4
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v3

    .line 169
    :cond_1a
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-eqz v3, :cond_28

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "codec != null"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v3, :cond_36

    new-instance v3, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_36
    move-object/from16 v0, p0

    iget-object v13, v0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 175
    .local v13, "releasedConnection":Lokhttp3/Connection;
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/connection/StreamAllocation;->releaseIfNoNewStreams()Ljava/net/Socket;

    move-result-object v21

    .line 176
    .local v21, "toClose":Ljava/net/Socket;
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_49

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 179
    const/4 v13, 0x0

    .line 181
    :cond_49
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-nez v3, :cond_50

    .line 183
    const/4 v13, 0x0

    .line 186
    :cond_50
    if-nez v2, :cond_6d

    .line 188
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v5, v6, v0, v7}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_9c

    .line 190
    const/4 v10, 0x1

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 196
    :cond_6d
    :goto_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_1a .. :try_end_6e} :catchall_17

    .line 197
    invoke-static/range {v21 .. v21}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 199
    if-eqz v13, :cond_7e

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v3, v4, v13}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 202
    :cond_7e
    if-eqz v10, :cond_8b

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v3, v4, v2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 205
    :cond_8b
    if-eqz v2, :cond_a3

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    move-object v14, v2

    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .local v14, "result":Lokhttp3/internal/connection/RealConnection;
    move-object v15, v2

    .line 279
    .end local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    .local v15, "result":Lokhttp3/internal/connection/RealConnection;
    :goto_9b
    return-object v15

    .line 193
    .end local v15    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    :cond_9c
    :try_start_9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    move-object/from16 v18, v0
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_17

    goto :goto_6d

    .line 212
    :cond_a3
    const/4 v12, 0x0

    .line 213
    .local v12, "newRouteSelection":Z
    if-nez v18, :cond_c3

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v3, :cond_b6

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c3

    .line 214
    :cond_b6
    const/4 v12, 0x1

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 218
    :cond_c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v4

    .line 219
    :try_start_c8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v3, :cond_d9

    new-instance v3, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :catchall_d6
    move-exception v3

    :goto_d7
    monitor-exit v4
    :try_end_d8
    .catchall {:try_start_c8 .. :try_end_d8} :catchall_d6

    throw v3

    .line 221
    :cond_d9
    if-eqz v12, :cond_1bf

    .line 224
    :try_start_db
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector$Selection;->getAll()Ljava/util/List;

    move-result-object v17

    .line 225
    .local v17, "routes":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Route;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    .local v19, "size":I
    :goto_e8
    move/from16 v0, v19

    if-ge v11, v0, :cond_1bf

    .line 226
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lokhttp3/Route;

    .line 227
    .local v16, "route":Lokhttp3/Route;
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v3, v5, v6, v0, v1}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_151

    .line 229
    const/4 v10, 0x1

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 231
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
    :try_end_116
    .catchall {:try_start_db .. :try_end_116} :catchall_d6

    move-object v14, v2

    .line 237
    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .end local v11    # "i":I
    .end local v16    # "route":Lokhttp3/Route;
    .end local v17    # "routes":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Route;>;"
    .end local v19    # "size":I
    .restart local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    :goto_117
    if-nez v10, :cond_1bd

    .line 238
    if-nez v18, :cond_123

    .line 239
    :try_start_11b
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;

    move-result-object v18

    .line 244
    :cond_123
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 245
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 246
    new-instance v2, Lokhttp3/internal/connection/RealConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Route;)V
    :try_end_139
    .catchall {:try_start_11b .. :try_end_139} :catchall_1b9

    .line 247
    .end local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    const/4 v3, 0x0

    :try_start_13a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;Z)V

    .line 249
    :goto_13f
    monitor-exit v4
    :try_end_140
    .catchall {:try_start_13a .. :try_end_140} :catchall_d6

    .line 252
    if-eqz v10, :cond_154

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v3, v4, v2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    move-object v14, v2

    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    move-object v15, v2

    .line 254
    .end local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v15    # "result":Lokhttp3/internal/connection/RealConnection;
    goto/16 :goto_9b

    .line 225
    .end local v15    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v11    # "i":I
    .restart local v16    # "route":Lokhttp3/Route;
    .restart local v17    # "routes":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Route;>;"
    .restart local v19    # "size":I
    :cond_151
    add-int/lit8 v11, v11, 0x1

    goto :goto_e8

    .line 258
    .end local v11    # "i":I
    .end local v16    # "route":Lokhttp3/Route;
    .end local v17    # "routes":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Route;>;"
    .end local v19    # "size":I
    :cond_154
    move-object/from16 v0, p0

    iget-object v8, v0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    move-object/from16 v0, p0

    iget-object v9, v0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lokhttp3/internal/connection/RealConnection;->connect(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V

    .line 260
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v3

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V

    .line 262
    const/16 v20, 0x0

    .line 263
    .local v20, "socket":Ljava/net/Socket;
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v4

    .line 264
    const/4 v3, 0x1

    :try_start_17c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    .line 267
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v3, v5, v2}, Lokhttp3/internal/Internal;->put(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V

    .line 271
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v3

    if-eqz v3, :cond_1a3

    .line 272
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    move-object/from16 v0, p0

    invoke-virtual {v3, v5, v6, v0}, Lokhttp3/internal/Internal;->deduplicate(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v20

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 275
    :cond_1a3
    monitor-exit v4
    :try_end_1a4
    .catchall {:try_start_17c .. :try_end_1a4} :catchall_1b6

    .line 276
    invoke-static/range {v20 .. v20}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v3, v4, v2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    move-object v14, v2

    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    move-object v15, v2

    .line 279
    .end local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v15    # "result":Lokhttp3/internal/connection/RealConnection;
    goto/16 :goto_9b

    .line 275
    .end local v15    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    :catchall_1b6
    move-exception v3

    :try_start_1b7
    monitor-exit v4
    :try_end_1b8
    .catchall {:try_start_1b7 .. :try_end_1b8} :catchall_1b6

    throw v3

    .line 249
    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .end local v20    # "socket":Ljava/net/Socket;
    .restart local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    :catchall_1b9
    move-exception v3

    move-object v2, v14

    .end local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    goto/16 :goto_d7

    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    :cond_1bd
    move-object v2, v14

    .end local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    goto :goto_13f

    :cond_1bf
    move-object v14, v2

    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v14    # "result":Lokhttp3/internal/connection/RealConnection;
    goto/16 :goto_117
.end method

.method private findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;
    .registers 10
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .param p6, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/StreamAllocation;->findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 139
    .local v0, "candidate":Lokhttp3/internal/connection/RealConnection;
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 140
    :try_start_7
    iget v1, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v1

    if-nez v1, :cond_13

    .line 141
    monitor-exit v2

    .line 152
    :cond_12
    return-object v0

    .line 143
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1e

    .line 147
    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_12

    .line 148
    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    goto :goto_0

    .line 143
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private release(Lokhttp3/internal/connection/RealConnection;)V
    .registers 6
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;

    .prologue
    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_7
    if-ge v0, v2, :cond_20

    .line 487
    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 488
    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    .line 489
    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 490
    return-void

    .line 486
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 493
    .end local v1    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    :cond_20
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private releaseIfNoNewStreams()Ljava/net/Socket;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 289
    sget-boolean v1, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 290
    :cond_13
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 291
    .local v0, "allocatedConnection":Lokhttp3/internal/connection/RealConnection;
    if-eqz v0, :cond_21

    iget-boolean v1, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v1, :cond_21

    .line 292
    const/4 v1, 0x1

    invoke-direct {p0, v2, v2, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 294
    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method private routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
    .registers 3

    .prologue
    .line 336
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lokhttp3/internal/connection/RealConnection;Z)V
    .registers 6
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;
    .param p2, "reportedAcquired"    # Z

    .prologue
    .line 476
    sget-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 477
    :cond_12
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 479
    :cond_1c
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 480
    iput-boolean p2, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    .line 481
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lokhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method public cancel()V
    .registers 5

    .prologue
    .line 416
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v3

    .line 417
    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    .line 418
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 419
    .local v0, "codecToCancel":Lokhttp3/internal/http/HttpCodec;
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 420
    .local v1, "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    .line 421
    if-eqz v0, :cond_14

    .line 422
    invoke-interface {v0}, Lokhttp3/internal/http/HttpCodec;->cancel()V

    .line 426
    :cond_10
    :goto_10
    return-void

    .line 420
    .end local v0    # "codecToCancel":Lokhttp3/internal/http/HttpCodec;
    .end local v1    # "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    :catchall_11
    move-exception v2

    :try_start_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v2

    .line 423
    .restart local v0    # "codecToCancel":Lokhttp3/internal/http/HttpCodec;
    .restart local v1    # "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    :cond_14
    if-eqz v1, :cond_10

    .line 424
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    goto :goto_10
.end method

.method public codec()Lokhttp3/internal/http/HttpCodec;
    .registers 3

    .prologue
    .line 330
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 331
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    monitor-exit v1

    return-object v0

    .line 332
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized connection()Lokhttp3/internal/connection/RealConnection;
    .registers 2

    .prologue
    .line 344
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreRoutes()Z
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-nez v0, :cond_18

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 521
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 522
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    .line 520
    :goto_19
    return v0

    .line 522
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public newStream(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/HttpCodec;
    .registers 14
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "chain"    # Lokhttp3/Interceptor$Chain;
    .param p3, "doExtensiveHealthChecks"    # Z

    .prologue
    .line 107
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v1

    .line 108
    .local v1, "connectTimeout":I
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    .line 109
    .local v2, "readTimeout":I
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    .line 110
    .local v3, "writeTimeout":I
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v4

    .line 111
    .local v4, "pingIntervalMillis":I
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v5

    .local v5, "connectionRetryEnabled":Z
    move-object v0, p0

    move v6, p3

    .line 114
    :try_start_16
    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v9

    .line 116
    .local v9, "resultConnection":Lokhttp3/internal/connection/RealConnection;
    invoke-virtual {v9, p1, p2, p0}, Lokhttp3/internal/connection/RealConnection;->newCodec(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/http/HttpCodec;

    move-result-object v8

    .line 118
    .local v8, "resultCodec":Lokhttp3/internal/http/HttpCodec;
    iget-object v6, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v6
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_28

    .line 119
    :try_start_21
    iput-object v8, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 120
    monitor-exit v6

    return-object v8

    .line 121
    :catchall_25
    move-exception v0

    monitor-exit v6
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_28} :catch_28

    .line 122
    .end local v8    # "resultCodec":Lokhttp3/internal/http/HttpCodec;
    .end local v9    # "resultConnection":Lokhttp3/internal/connection/RealConnection;
    :catch_28
    move-exception v7

    .line 123
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v0, v7}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public noNewStreams()V
    .registers 7

    .prologue
    .line 367
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v3

    .line 368
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 369
    .local v0, "releasedConnection":Lokhttp3/Connection;
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 370
    .local v1, "socket":Ljava/net/Socket;
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v2, :cond_11

    const/4 v0, 0x0

    .line 371
    :cond_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 372
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 373
    if-eqz v0, :cond_1e

    .line 374
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v2, v3, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 376
    :cond_1e
    return-void

    .line 371
    .end local v0    # "releasedConnection":Lokhttp3/Connection;
    .end local v1    # "socket":Ljava/net/Socket;
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public release()V
    .registers 7

    .prologue
    .line 350
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v3

    .line 351
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 352
    .local v0, "releasedConnection":Lokhttp3/Connection;
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 353
    .local v1, "socket":Ljava/net/Socket;
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v2, :cond_11

    const/4 v0, 0x0

    .line 354
    :cond_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2e

    .line 355
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 356
    if-eqz v0, :cond_2d

    .line 357
    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/Internal;->timeoutExit(Lokhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;

    .line 358
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v2, v3, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 359
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v2, v3}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 361
    :cond_2d
    return-void

    .line 354
    .end local v0    # "releasedConnection":Lokhttp3/Connection;
    .end local v1    # "socket":Ljava/net/Socket;
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public releaseAndAcquire(Lokhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .registers 7
    .param p1, "newConnection"    # Lokhttp3/internal/connection/RealConnection;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 505
    sget-boolean v2, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 506
    :cond_14
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v2, :cond_22

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v4, :cond_28

    :cond_22
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 509
    :cond_28
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 510
    .local v0, "onlyAllocation":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    invoke-direct {p0, v4, v3, v3}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 513
    .local v1, "socket":Ljava/net/Socket;
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 514
    iget-object v2, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    return-object v1
.end method

.method public route()Lokhttp3/Route;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    return-object v0
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .registers 9
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v6, 0x1

    .line 431
    const/4 v1, 0x0

    .line 433
    .local v1, "noNewStreams":Z
    iget-object v5, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v5

    .line 434
    :try_start_5
    instance-of v4, p1, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v4, :cond_4a

    .line 435
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    .end local p1    # "e":Ljava/io/IOException;
    iget-object v0, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 436
    .local v0, "errorCode":Lokhttp3/internal/http2/ErrorCode;
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v0, v4, :cond_3e

    .line 438
    iget v4, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 439
    iget v4, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le v4, v6, :cond_1f

    .line 440
    const/4 v1, 0x1

    .line 441
    const/4 v4, 0x0

    iput-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 460
    .end local v0    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 461
    .local v2, "releasedConnection":Lokhttp3/Connection;
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v1, v4, v6}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v3

    .line 462
    .local v3, "socket":Ljava/net/Socket;
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v4, :cond_2f

    iget-boolean v4, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-nez v4, :cond_30

    :cond_2f
    const/4 v2, 0x0

    .line 463
    :cond_30
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_47

    .line 465
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 466
    if-eqz v2, :cond_3d

    .line 467
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v5, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v4, v5, v2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 469
    :cond_3d
    return-void

    .line 443
    .end local v2    # "releasedConnection":Lokhttp3/Connection;
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v0    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    :cond_3e
    :try_start_3e
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    if-eq v0, v4, :cond_1f

    .line 445
    const/4 v1, 0x1

    .line 446
    const/4 v4, 0x0

    iput-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    goto :goto_1f

    .line 463
    .end local v0    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    :catchall_47
    move-exception v4

    monitor-exit v5
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_47

    throw v4

    .line 448
    .restart local p1    # "e":Ljava/io/IOException;
    :cond_4a
    :try_start_4a
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 449
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v4

    if-eqz v4, :cond_5a

    instance-of v4, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v4, :cond_1f

    .line 450
    :cond_5a
    const/4 v1, 0x1

    .line 453
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v4, v4, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v4, :cond_1f

    .line 454
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-eqz v4, :cond_6e

    if-eqz p1, :cond_6e

    .line 455
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    iget-object v6, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    invoke-virtual {v4, v6, p1}, Lokhttp3/internal/connection/RouteSelector;->connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 457
    :cond_6e
    const/4 v4, 0x0

    iput-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
    :try_end_71
    .catchall {:try_start_4a .. :try_end_71} :catchall_47

    goto :goto_1f
.end method

.method public streamFinished(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V
    .registers 13
    .param p1, "noNewStreams"    # Z
    .param p2, "codec"    # Lokhttp3/internal/http/HttpCodec;
    .param p3, "bytesRead"    # J
    .param p5, "e"    # Ljava/io/IOException;

    .prologue
    .line 298
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v3, v4, p3, p4}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 303
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v4

    .line 304
    if-eqz p2, :cond_10

    :try_start_c
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-eq p2, v3, :cond_38

    .line 305
    :cond_10
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 314
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_35

    throw v3

    .line 307
    :cond_38
    if-nez p1, :cond_42

    .line 308
    :try_start_3a
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v5, v3, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lokhttp3/internal/connection/RealConnection;->successCount:I

    .line 310
    :cond_42
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 311
    .local v1, "releasedConnection":Lokhttp3/Connection;
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, v3, v5}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 312
    .local v2, "socket":Ljava/net/Socket;
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_4f

    const/4 v1, 0x0

    .line 313
    :cond_4f
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    .line 314
    .local v0, "callEnd":Z
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_35

    .line 315
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 316
    if-eqz v1, :cond_5e

    .line 317
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v3, v4, v1}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 320
    :cond_5e
    if-eqz p5, :cond_70

    .line 321
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v3, v4, p5}, Lokhttp3/internal/Internal;->timeoutExit(Lokhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p5

    .line 322
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v3, v4, p5}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 327
    :cond_6f
    :goto_6f
    return-void

    .line 323
    :cond_70
    if-eqz v0, :cond_6f

    .line 324
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/Internal;->timeoutExit(Lokhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;

    .line 325
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v3, v4}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    goto :goto_6f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 526
    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 527
    .local v0, "connection":Lokhttp3/internal/connection/RealConnection;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v1}, Lokhttp3/Address;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method
