.class Lcom/amap/api/mapcore/AMapDelegateImp$10;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/o;JLcom/amap/api/maps/AMap$CancelableCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/model/LatLngBounds;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Lcom/amap/api/maps/AMap$CancelableCallback;

.field final synthetic g:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/LatLngBounds;IIIJLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 0

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->g:Lcom/amap/api/mapcore/AMapDelegateImp;

    iput-object p2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->a:Lcom/amap/api/maps/model/LatLngBounds;

    iput p3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->b:I

    iput p4, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->c:I

    iput p5, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->d:I

    iput-wide p6, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->e:J

    iput-object p8, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->f:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->f:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->f:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onCancel()V

    .line 1514
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 5

    .prologue
    .line 1501
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->g:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->a:Lcom/amap/api/maps/model/LatLngBounds;

    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->b:I

    iget v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->c:I

    iget v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->d:I

    .line 1502
    invoke-static {v1, v2, v3, v4}, Lcom/amap/api/mapcore/o;->a(Lcom/amap/api/maps/model/LatLngBounds;III)Lcom/amap/api/mapcore/o;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->e:J

    iget-object v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp$10;->f:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 1501
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/o;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    :goto_0
    return-void

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
