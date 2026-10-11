.class Lcom/amap/api/mapcore/util/do$a;
.super Landroid/os/Handler;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 443
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 438
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/amap/api/mapcore/util/do$1;)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/do$a;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 447
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 448
    packed-switch v0, :pswitch_data_0

    .line 467
    :goto_0
    return-void

    .line 450
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/mapcore/util/dt;

    .line 451
    iget-object v0, v0, Lcom/amap/api/mapcore/util/dt;->b:Lcom/amap/api/mapcore/util/dq;

    .line 452
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/dq;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 455
    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/mapcore/util/dt;

    .line 456
    iget-object v1, v0, Lcom/amap/api/mapcore/util/dt;->b:Lcom/amap/api/mapcore/util/dq;

    .line 457
    iget-object v0, v0, Lcom/amap/api/mapcore/util/dt;->a:Lcom/amap/api/mapcore/util/bl;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/dq;->a(Lcom/amap/api/mapcore/util/bl;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
