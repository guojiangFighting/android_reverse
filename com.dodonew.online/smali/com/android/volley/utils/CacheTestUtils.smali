.class public Lcom/android/volley/utils/CacheTestUtils;
.super Ljava/lang/Object;
.source "CacheTestUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRandomCacheEntry([B)Lcom/android/volley/Cache$Entry;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0, v0}, Lcom/android/volley/utils/CacheTestUtils;->makeRandomCacheEntry([BZZ)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static makeRandomCacheEntry([BZZ)Lcom/android/volley/Cache$Entry;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "isExpired"    # Z
    .param p2, "needsRefresh"    # Z

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    .line 19
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 20
    .local v1, "random":Ljava/util/Random;
    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 21
    .local v0, "entry":Lcom/android/volley/Cache$Entry;
    if-eqz p0, :cond_0

    .line 22
    iput-object p0, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 26
    :goto_0
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 27
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 28
    if-eqz p1, :cond_1

    move-wide v2, v4

    :goto_1
    iput-wide v2, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 29
    if-eqz p2, :cond_2

    :goto_2
    iput-wide v4, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 30
    return-object v0

    .line 24
    :cond_0
    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/android/volley/Cache$Entry;->data:[B

    goto :goto_0

    :cond_1
    move-wide v2, v6

    .line 28
    goto :goto_1

    :cond_2
    move-wide v4, v6

    .line 29
    goto :goto_2
.end method
