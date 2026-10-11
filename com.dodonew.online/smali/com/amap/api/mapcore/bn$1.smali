.class Lcom/amap/api/mapcore/bn$1;
.super Lcom/amap/api/maps/model/UrlTileProvider;
.source "TileOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/bn;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/bn;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/bn;II)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amap/api/mapcore/bn$1;->a:Lcom/amap/api/mapcore/bn;

    invoke-direct {p0, p2, p3}, Lcom/amap/api/maps/model/UrlTileProvider;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getTileUrl(III)Ljava/net/URL;
    .locals 5

    .prologue
    .line 67
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://grid.amap.com/grid/%d/%d/%d?dpiType=webrd&lang=zh_cn&pack=%s&version=3.2.0"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/amap/api/mapcore/r;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method
