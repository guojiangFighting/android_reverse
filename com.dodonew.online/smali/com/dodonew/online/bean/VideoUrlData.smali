.class public Lcom/dodonew/online/bean/VideoUrlData;
.super Ljava/lang/Object;
.source "VideoUrlData.java"


# instance fields
.field private liveUrl:Ljava/lang/String;

.field public urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/VideoUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLiveUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dodonew/online/bean/VideoUrlData;->liveUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setLiveUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "liveUrl"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/dodonew/online/bean/VideoUrlData;->liveUrl:Ljava/lang/String;

    .line 18
    return-void
.end method
