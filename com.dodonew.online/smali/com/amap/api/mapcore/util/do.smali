.class public Lcom/amap/api/mapcore/util/do;
.super Lcom/amap/api/mapcore/util/dk;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/do$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore/util/do;


# instance fields
.field private b:Lcom/amap/api/mapcore/util/du;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(ZI)V
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dk;-><init>()V

    .line 106
    if-eqz p1, :cond_0

    .line 108
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/du;->a(I)Lcom/amap/api/mapcore/util/du;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/do;->b:Lcom/amap/api/mapcore/util/du;

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/amap/api/mapcore/util/do$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/do$a;-><init>(Landroid/os/Looper;Lcom/amap/api/mapcore/util/do$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/do;->c:Landroid/os/Handler;

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/util/do$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/do$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/do;->c:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "NetManger"

    const-string v2, "NetManger1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Z)Lcom/amap/api/mapcore/util/do;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/do;->a(ZI)Lcom/amap/api/mapcore/util/do;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(ZI)Lcom/amap/api/mapcore/util/do;
    .locals 3

    .prologue
    .line 77
    const-class v1, Lcom/amap/api/mapcore/util/do;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/do;->a:Lcom/amap/api/mapcore/util/do;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/amap/api/mapcore/util/do;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/do;-><init>(ZI)V

    sput-object v0, Lcom/amap/api/mapcore/util/do;->a:Lcom/amap/api/mapcore/util/do;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/do;->a:Lcom/amap/api/mapcore/util/do;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :cond_1
    if-eqz p0, :cond_0

    :try_start_2
    sget-object v0, Lcom/amap/api/mapcore/util/do;->a:Lcom/amap/api/mapcore/util/do;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/do;->b:Lcom/amap/api/mapcore/util/du;

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/amap/api/mapcore/util/do;->a:Lcom/amap/api/mapcore/util/do;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/du;->a(I)Lcom/amap/api/mapcore/util/du;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/do;->b:Lcom/amap/api/mapcore/util/du;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/amap/api/mapcore/util/bl;Lcom/amap/api/mapcore/util/dq;)V
    .locals 2

    .prologue
    .line 413
    new-instance v0, Lcom/amap/api/mapcore/util/dt;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dt;-><init>()V

    .line 414
    iput-object p1, v0, Lcom/amap/api/mapcore/util/dt;->a:Lcom/amap/api/mapcore/util/bl;

    .line 415
    iput-object p2, v0, Lcom/amap/api/mapcore/util/dt;->b:Lcom/amap/api/mapcore/util/dq;

    .line 416
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 417
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 418
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    .line 419
    iget-object v0, p0, Lcom/amap/api/mapcore/util/do;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/do;Lcom/amap/api/mapcore/util/bl;Lcom/amap/api/mapcore/util/dq;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/bl;Lcom/amap/api/mapcore/util/dq;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/do;Lcom/amap/api/mapcore/util/dr;Lcom/amap/api/mapcore/util/dq;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/dr;Lcom/amap/api/mapcore/util/dq;)V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore/util/dr;Lcom/amap/api/mapcore/util/dq;)V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p1, Lcom/amap/api/mapcore/util/dr;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/amap/api/mapcore/util/dr;->a:[B

    invoke-interface {p2, v0, v1}, Lcom/amap/api/mapcore/util/dq;->a(Ljava/util/Map;[B)V

    .line 425
    new-instance v0, Lcom/amap/api/mapcore/util/dt;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dt;-><init>()V

    .line 426
    iput-object p2, v0, Lcom/amap/api/mapcore/util/dt;->b:Lcom/amap/api/mapcore/util/dq;

    .line 427
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 428
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 430
    iget-object v0, p0, Lcom/amap/api/mapcore/util/do;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    return-void
.end method


# virtual methods
.method public b(Lcom/amap/api/mapcore/util/dp;Z)Lcom/amap/api/mapcore/util/dr;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/bl;
        }
    .end annotation

    .prologue
    .line 345
    .line 348
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/do;->c(Lcom/amap/api/mapcore/util/dp;)V

    .line 350
    iget-object v0, p1, Lcom/amap/api/mapcore/util/dp;->i:Ljava/net/Proxy;

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 355
    :goto_0
    new-instance v1, Lcom/amap/api/mapcore/util/dm;

    iget v2, p1, Lcom/amap/api/mapcore/util/dp;->g:I

    iget v3, p1, Lcom/amap/api/mapcore/util/dp;->h:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/mapcore/util/dm;-><init>(IILjava/net/Proxy;Z)V

    .line 358
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/dp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/dp;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/dp;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore/util/dm;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/mapcore/util/dr;

    move-result-object v0

    .line 367
    return-object v0

    .line 353
    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore/util/dp;->i:Ljava/net/Proxy;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    throw v0

    .line 362
    :catch_1
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 364
    new-instance v0, Lcom/amap/api/mapcore/util/bl;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/bl;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/amap/api/mapcore/util/dp;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/bl;
        }
    .end annotation

    .prologue
    .line 273
    .line 275
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/dp;Z)Lcom/amap/api/mapcore/util/dr;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    iget-object v0, v0, Lcom/amap/api/mapcore/util/dr;->a:[B

    .line 286
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    throw v0

    .line 278
    :catch_1
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    invoke-static {}, Lcom/amap/api/mapcore/util/ca;->b()Lcom/amap/api/mapcore/util/ca;

    move-result-object v1

    const-string v2, "NetManager"

    const-string v3, "makeSyncPostRequest"

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Lcom/amap/api/mapcore/util/bl;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/bl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/amap/api/mapcore/util/dp;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/bl;
        }
    .end annotation

    .prologue
    .line 298
    .line 300
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/do;->b(Lcom/amap/api/mapcore/util/dp;Z)Lcom/amap/api/mapcore/util/dr;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    iget-object v0, v0, Lcom/amap/api/mapcore/util/dr;->a:[B

    .line 309
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    throw v0

    .line 303
    :catch_1
    move-exception v0

    .line 304
    new-instance v0, Lcom/amap/api/mapcore/util/bl;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/bl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
