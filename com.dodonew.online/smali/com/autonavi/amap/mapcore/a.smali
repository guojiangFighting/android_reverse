.class Lcom/autonavi/amap/mapcore/a;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Lcom/autonavi/amap/mapcore/BaseMapLoader;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/BaseMapLoader;)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/a;->a:Lcom/autonavi/amap/mapcore/BaseMapLoader;

    .line 151
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/a;->a:Lcom/autonavi/amap/mapcore/BaseMapLoader;

    .line 152
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/a;->a:Lcom/autonavi/amap/mapcore/BaseMapLoader;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doRequest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method
