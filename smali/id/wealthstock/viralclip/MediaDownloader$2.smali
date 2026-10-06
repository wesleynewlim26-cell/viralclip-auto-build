.class Lid/wealthstock/viralclip/MediaDownloader$2;
.super Ljava/lang/Object;
.source "MediaDownloader.java"

# interfaces
.implements Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MediaDownloader;->fetch(Ljava/lang/String;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lid/wealthstock/viralclip/MediaDownloader$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lid/wealthstock/viralclip/MediaDownloader$2;->val$url:Ljava/lang/String;

    return-object v0
.end method
