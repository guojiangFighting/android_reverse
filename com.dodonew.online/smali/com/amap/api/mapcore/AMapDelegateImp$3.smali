.class Lcom/amap/api/mapcore/AMapDelegateImp$3;
.super Lcom/amap/api/mapcore/bg;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/ag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/aa;)V
    .locals 0

    .prologue
    .line 2785
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$3;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0, p2, p3}, Lcom/amap/api/mapcore/bg;-><init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/aa;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$3;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$3;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 2789
    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->c(Lcom/amap/api/mapcore/AMapDelegateImp;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2790
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$3;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$3;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2791
    return-void
.end method
