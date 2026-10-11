.class Lcom/amap/api/mapcore/ax;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/av;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/av;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amap/api/mapcore/ax;->a:Lcom/amap/api/mapcore/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ax;->a:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->p()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "MapOverlayImageView"

    const-string v2, "redrawInfoWindow post"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
