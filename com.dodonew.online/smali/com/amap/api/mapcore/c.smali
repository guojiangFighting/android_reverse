.class Lcom/amap/api/mapcore/c;
.super Ljava/lang/Thread;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 3229
    iput-object p1, p0, Lcom/amap/api/mapcore/c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3233
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3234
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3273
    :catch_0
    move-exception v0

    .line 3274
    invoke-virtual {p0}, Lcom/amap/api/mapcore/c;->interrupt()V

    .line 3275
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "mVerfy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3279
    :goto_1
    return-void

    .line 3238
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/bv$a;

    sget-object v1, Lcom/amap/api/mapcore/r;->b:Ljava/lang/String;

    const-string v2, "3.2.0"

    sget-object v3, Lcom/amap/api/mapcore/r;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/bv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.amap.api.maps"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.amap.api.mapcore"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.autonavi.amap.mapcore"

    aput-object v3, v1, v2

    .line 3240
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bv$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/bv$a;

    move-result-object v0

    .line 3243
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bv$a;->a()Lcom/amap/api/mapcore/util/bv;

    move-result-object v0

    .line 3245
    iget-object v1, p0, Lcom/amap/api/mapcore/c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->M(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bn;->b(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;)Z

    .line 3246
    sget v1, Lcom/amap/api/mapcore/util/bn;->a:I

    if-nez v1, :cond_1

    .line 3247
    iget-object v1, p0, Lcom/amap/api/mapcore/c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3250
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3251
    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->M(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "common;exception;sdkcoordinate"

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/bp;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;Ljava/lang/String;)Lcom/amap/api/mapcore/util/bp$a;

    move-result-object v1

    .line 3253
    if-eqz v1, :cond_3

    .line 3254
    iget-object v2, v1, Lcom/amap/api/mapcore/util/bp$a;->d:Lcom/amap/api/mapcore/util/bp$a$a;

    if-eqz v2, :cond_2

    .line 3255
    iget-object v2, v1, Lcom/amap/api/mapcore/util/bp$a;->d:Lcom/amap/api/mapcore/util/bp$a$a;

    iget-boolean v2, v2, Lcom/amap/api/mapcore/util/bp$a$a;->a:Z

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/bv;->a(Z)V

    .line 3258
    :cond_2
    iget-object v2, v1, Lcom/amap/api/mapcore/util/bp$a;->f:Lcom/amap/api/mapcore/util/bp$a$b;

    if-eqz v2, :cond_3

    .line 3259
    new-instance v2, Lcom/amap/api/mapcore/util/bu;

    iget-object v3, p0, Lcom/amap/api/mapcore/c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3260
    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->M(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/amap/api/mapcore/r;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/amap/api/mapcore/util/bp$a;->f:Lcom/amap/api/mapcore/util/bp$a$b;

    iget-object v5, v5, Lcom/amap/api/mapcore/util/bp$a$b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/bp$a;->f:Lcom/amap/api/mapcore/util/bp$a$b;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/bp$a$b;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/amap/api/mapcore/util/bu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bu;->a()V

    .line 3267
    :cond_3
    sput-object v0, Lcom/amap/api/mapcore/r;->f:Lcom/amap/api/mapcore/util/bv;

    .line 3268
    iget-object v1, p0, Lcom/amap/api/mapcore/c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->M(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/ca;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;)Lcom/amap/api/mapcore/util/ca;

    .line 3269
    invoke-virtual {p0}, Lcom/amap/api/mapcore/c;->interrupt()V

    .line 3270
    iget-object v0, p0, Lcom/amap/api/mapcore/c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
