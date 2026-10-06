.class Lid/wealthstock/viralclip/MediaDownloader$3;
.super Ljava/lang/Object;
.source "MediaDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MediaDownloader;->fetchRanges(Ljava/lang/String;Ljava/io/File;JLid/wealthstock/viralclip/MediaDownloader$Progress;I)Lid/wealthstock/viralclip/MediaDownloader$RangeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$attempt:I

.field final synthetic val$done:[Z

.field final synthetic val$finished:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$from:J

.field final synthetic val$index:I

.field final synthetic val$lastReport:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$progress:Lid/wealthstock/viralclip/MediaDownloader$Progress;

.field final synthetic val$received:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$result:Lid/wealthstock/viralclip/MediaDownloader$RangeResult;

.field final synthetic val$target:Ljava/io/File;

.field final synthetic val$to:J

.field final synthetic val$total:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;Ljava/io/File;[ZILjava/util/concurrent/atomic/AtomicLong;Lid/wealthstock/viralclip/MediaDownloader$RangeResult;Lid/wealthstock/viralclip/MediaDownloader$Progress;JILjava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 368
    iput-wide p1, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$to:J

    iput-wide p3, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$from:J

    iput-object p5, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$target:Ljava/io/File;

    iput-object p7, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$done:[Z

    iput p8, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$index:I

    iput-object p9, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$received:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p10, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$result:Lid/wealthstock/viralclip/MediaDownloader$RangeResult;

    iput-object p11, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$progress:Lid/wealthstock/viralclip/MediaDownloader$Progress;

    iput-wide p12, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$total:J

    iput p14, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$attempt:I

    iput-object p15, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$lastReport:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 p1, p16

    iput-object p1, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 371
    iget-wide v0, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$to:J

    iget-wide v2, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$from:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 372
    iget-object v2, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$target:Ljava/io/File;

    iget-wide v4, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$from:J

    iget-wide v6, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$to:J

    invoke-static/range {v2 .. v7}, Lid/wealthstock/viralclip/MediaDownloader;->access$200(Ljava/lang/String;Ljava/io/File;JJ)J

    move-result-wide v2

    .line 373
    cmp-long v0, v2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$done:[Z

    iget v4, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$index:I

    aput-boolean v1, v0, v4

    .line 375
    iget-object v0, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$target:Ljava/io/File;

    iget-object v4, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$done:[Z

    invoke-static {v0, v4}, Lid/wealthstock/viralclip/MediaDownloader;->access$300(Ljava/io/File;[Z)V

    .line 377
    :cond_0
    iget-object v0, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$received:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 378
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 379
    iget-object v0, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$result:Lid/wealthstock/viralclip/MediaDownloader$RangeResult;

    iput-boolean v1, v0, Lid/wealthstock/viralclip/MediaDownloader$RangeResult;->anyProgress:Z

    .line 381
    :cond_1
    iget-object v2, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$progress:Lid/wealthstock/viralclip/MediaDownloader$Progress;

    iget-object v0, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$received:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-wide v5, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$total:J

    iget v7, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$attempt:I

    iget-object v8, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$lastReport:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static/range {v2 .. v8}, Lid/wealthstock/viralclip/MediaDownloader;->access$400(Lid/wealthstock/viralclip/MediaDownloader$Progress;JJILjava/util/concurrent/atomic/AtomicLong;)V

    .line 382
    iget-object v0, p0, Lid/wealthstock/viralclip/MediaDownloader$3;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 383
    return-void
.end method
