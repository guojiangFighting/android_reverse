.class Lcom/amap/api/mapcore/AMapDelegateImp$1;
.super Lcom/amap/api/mapcore/ay;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;-><init>(Lcom/amap/api/mapcore/ad;Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Landroid/content/Context;Lcom/amap/api/mapcore/aa;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0, p2, p3}, Lcom/amap/api/mapcore/ay;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/aa;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 330
    invoke-super {p0}, Lcom/amap/api/mapcore/ay;->a()V

    .line 331
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->c(Lcom/amap/api/mapcore/AMapDelegateImp;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method
