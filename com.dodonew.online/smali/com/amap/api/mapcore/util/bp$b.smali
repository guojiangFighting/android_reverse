.class Lcom/amap/api/mapcore/util/bp$b;
.super Lcom/amap/api/mapcore/util/dp;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore/util/bv;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bp$b;->c:Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lcom/amap/api/mapcore/util/bp$b;->a:Landroid/content/Context;

    .line 232
    iput-object p2, p0, Lcom/amap/api/mapcore/util/bp$b;->b:Lcom/amap/api/mapcore/util/bv;

    .line 233
    iput-object p3, p0, Lcom/amap/api/mapcore/util/bp$b;->c:Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const-string v0, "https://restapi.amap.com/v3/config/resource?"

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 5
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

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bp$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bq;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/amap/api/mapcore/util/bs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 258
    const-string v2, "key"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/bp$b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/bm;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v2, "opertype"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/bp$b;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v2, "plattype"

    const-string v3, "android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v2, "product"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/bp$b;->b:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/bv;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v2, "version"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/bp$b;->b:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/bv;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v2, "output"

    const-string v3, "json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v2, "androidversion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v2, "deviceId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "abitype"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "ext"

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bp$b;->b:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bv;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {}, Lcom/amap/api/mapcore/util/bo;->a()Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v2, p0, Lcom/amap/api/mapcore/util/bp$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bw;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/amap/api/mapcore/util/bo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    const-string v3, "ts"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v0, "scode"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-object v1
.end method

.method public c()Ljava/util/Map;
    .locals 6
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

    .prologue
    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bp$b;->b:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "platinfo"

    const-string v2, "platform=Android&sdkversion=%s&product=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amap/api/mapcore/util/bp$b;->b:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/bv;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/amap/api/mapcore/util/bp$b;->b:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/bv;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "logversion"

    const-string v2, "2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-object v0
.end method
