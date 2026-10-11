.class Lcom/amap/api/mapcore/i;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 830
    iput-object p1, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 832
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 834
    iget-object v0, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    :cond_0
    monitor-exit p0

    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
