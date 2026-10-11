.class Lcom/amap/api/mapcore/AMapDelegateImp$h;
.super Ljava/util/TimerTask;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/AMapDelegateImp;

.field final synthetic b:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 4083
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$h;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4084
    iput-object p2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$h;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 4085
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4089
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$h;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->ab(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$h;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$h;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    .line 4090
    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4091
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$h;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ad;->requestRender()V

    .line 4097
    :cond_1
    :goto_0
    return-void

    .line 4093
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$h;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4094
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$h;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->j:Lcom/amap/api/mapcore/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ad;->requestRender()V

    goto :goto_0
.end method
