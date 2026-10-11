.class public Lcom/amap/api/mapcore/util/bb;
.super Lcom/amap/api/mapcore/util/bc;
.source "ImageFetcher.java"


# instance fields
.field private e:Lcom/amap/api/maps/model/TileProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/bc;-><init>(Landroid/content/Context;II)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bb;->e:Lcom/amap/api/maps/model/TileProvider;

    .line 64
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/bb;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/bb;->b(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 176
    const-string v0, "connectivity"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    const-string v0, "ImageFetcher"

    const-string v1, "checkConnection - no connection found"

    const/16 v2, 0x70

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    :cond_1
    return-void
.end method

.method private c(Lcom/amap/api/mapcore/bm$a;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 196
    const-string v0, "ImageFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processBitmap - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    const/4 v0, 0x0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/bb;->e:Lcom/amap/api/maps/model/TileProvider;

    iget v2, p1, Lcom/amap/api/mapcore/bm$a;->a:I

    iget v3, p1, Lcom/amap/api/mapcore/bm$a;->b:I

    iget v4, p1, Lcom/amap/api/mapcore/bm$a;->c:I

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/api/maps/model/TileProvider;->getTile(III)Lcom/amap/api/maps/model/Tile;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_0

    sget-object v2, Lcom/amap/api/maps/model/TileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    if-eq v1, v2, :cond_0

    .line 309
    iget-object v2, v1, Lcom/amap/api/maps/model/Tile;->data:[B

    const/4 v3, 0x0

    iget-object v1, v1, Lcom/amap/api/maps/model/Tile;->data:[B

    array-length v1, v1

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 315
    :cond_0
    :goto_0
    return-object v0

    .line 312
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 320
    check-cast p1, Lcom/amap/api/mapcore/bm$a;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/bb;->c(Lcom/amap/api/mapcore/bm$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/TileProvider;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/amap/api/mapcore/util/bb;->e:Lcom/amap/api/maps/model/TileProvider;

    .line 86
    return-void
.end method
