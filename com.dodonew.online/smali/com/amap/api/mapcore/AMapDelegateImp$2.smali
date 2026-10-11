.class Lcom/amap/api/mapcore/AMapDelegateImp$2;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 2703
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$2;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2708
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$2;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$2;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->w(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/ag;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2715
    :goto_0
    return-void

    .line 2709
    :catch_0
    move-exception v0

    .line 2710
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "showInfoWindow postDelayed"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2713
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
