.class Lcom/amap/api/mapcore/AMapDelegateImp$c$1;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/AMapDelegateImp$c;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/ag;

.field final synthetic b:Lcom/amap/api/mapcore/AMapDelegateImp$c;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp$c;Lcom/amap/api/mapcore/ag;)V
    .locals 0

    .prologue
    .line 2941
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c$1;->b:Lcom/amap/api/mapcore/AMapDelegateImp$c;

    iput-object p2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c$1;->a:Lcom/amap/api/mapcore/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2946
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c$1;->b:Lcom/amap/api/mapcore/AMapDelegateImp$c;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c$1;->a:Lcom/amap/api/mapcore/ag;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/ag;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2953
    :goto_0
    return-void

    .line 2947
    :catch_0
    move-exception v0

    .line 2948
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "onSingleTapUp showInfoWindow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
