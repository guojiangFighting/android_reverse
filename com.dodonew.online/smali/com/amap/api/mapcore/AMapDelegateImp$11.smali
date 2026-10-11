.class Lcom/amap/api/mapcore/AMapDelegateImp$11;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

.field final synthetic b:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V
    .locals 0

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$11;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    iput-object p2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$11;->a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1746
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$11;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$11;->a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 1747
    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/o;->a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/mapcore/o;

    move-result-object v1

    .line 1746
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/o;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    :goto_0
    return-void

    .line 1748
    :catch_0
    move-exception v0

    goto :goto_0
.end method
