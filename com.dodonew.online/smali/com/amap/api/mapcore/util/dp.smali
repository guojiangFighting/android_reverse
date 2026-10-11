.class public abstract Lcom/amap/api/mapcore/util/dp;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field g:I

.field h:I

.field i:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x4e20

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/amap/api/mapcore/util/dp;->g:I

    .line 17
    iput v0, p0, Lcom/amap/api/mapcore/util/dp;->h:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dp;->i:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/amap/api/mapcore/util/dp;->g:I

    .line 111
    return-void
.end method

.method public final a(Ljava/net/Proxy;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dp;->i:Ljava/net/Proxy;

    .line 134
    return-void
.end method

.method public a_()[B
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/amap/api/mapcore/util/dp;->h:I

    .line 120
    return-void
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dp;->a_()[B

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dp;->a()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dp;->b()Ljava/util/Map;

    move-result-object v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dp;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/dm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method g()[B
    .locals 4

    .prologue
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dp;->a_()[B

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dp;->b()Ljava/util/Map;

    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/amap/api/mapcore/util/dm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 61
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :cond_1
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 66
    const-string v2, "Request"

    const-string v3, "getConnectionDatas"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
