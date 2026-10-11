.class Lcom/amap/api/mapcore/h;
.super Lcom/amap/api/mapcore/AMapDelegateImp$a;
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
    .locals 1

    .prologue
    .line 4412
    iput-object p1, p0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/AMapDelegateImp$a;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4415
    invoke-super {p0}, Lcom/amap/api/mapcore/AMapDelegateImp$a;->run()V

    .line 4416
    iget-object v0, p0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, p0, Lcom/amap/api/mapcore/h;->d:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    iget-object v2, p0, Lcom/amap/api/mapcore/h;->e:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    iget-object v3, p0, Lcom/amap/api/mapcore/h;->f:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;)V

    .line 4417
    return-void
.end method
