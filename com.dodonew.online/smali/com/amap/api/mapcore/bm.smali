.class public Lcom/amap/api/mapcore/bm;
.super Ljava/lang/Object;
.source "TileOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/ao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/bm$a;,
        Lcom/amap/api/mapcore/bm$b;
    }
.end annotation


# static fields
.field private static g:I


# instance fields
.field private a:Lcom/amap/api/mapcore/bn;

.field private b:Lcom/amap/api/maps/model/TileProvider;

.field private c:Ljava/lang/Float;

.field private d:Z

.field private e:Z

.field private f:Lcom/amap/api/mapcore/aa;

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/amap/api/mapcore/util/bb;

.field private l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/bm$a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lcom/amap/api/mapcore/bm$b;

.field private o:Ljava/lang/String;

.field private p:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/bm;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/bn;)V
    .locals 6

    .prologue
    const/16 v0, 0x100

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v3, p0, Lcom/amap/api/mapcore/bm;->e:Z

    .line 37
    iput v0, p0, Lcom/amap/api/mapcore/bm;->h:I

    .line 38
    iput v0, p0, Lcom/amap/api/mapcore/bm;->i:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/bm;->j:I

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bm;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    iput-boolean v3, p0, Lcom/amap/api/mapcore/bm;->m:Z

    .line 43
    iput-object v1, p0, Lcom/amap/api/mapcore/bm;->n:Lcom/amap/api/mapcore/bm$b;

    .line 50
    iput-object v1, p0, Lcom/amap/api/mapcore/bm;->o:Ljava/lang/String;

    .line 168
    iput-object v1, p0, Lcom/amap/api/mapcore/bm;->p:Ljava/nio/FloatBuffer;

    .line 54
    iput-object p2, p0, Lcom/amap/api/mapcore/bm;->a:Lcom/amap/api/mapcore/bn;

    .line 55
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bm;->b:Lcom/amap/api/maps/model/TileProvider;

    .line 56
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->b:Lcom/amap/api/maps/model/TileProvider;

    invoke-interface {v0}, Lcom/amap/api/maps/model/TileProvider;->getTileWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bm;->h:I

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->b:Lcom/amap/api/maps/model/TileProvider;

    invoke-interface {v0}, Lcom/amap/api/maps/model/TileProvider;->getTileHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bm;->i:I

    .line 58
    iget v0, p0, Lcom/amap/api/mapcore/bm;->h:I

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(I)I

    move-result v0

    .line 59
    iget v1, p0, Lcom/amap/api/mapcore/bm;->i:I

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bk;->a(I)I

    move-result v1

    .line 60
    iget v2, p0, Lcom/amap/api/mapcore/bm;->h:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 61
    iget v2, p0, Lcom/amap/api/mapcore/bm;->i:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 62
    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v4, v2, v3

    aput v1, v2, v5

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    aput v0, v2, v1

    const/4 v0, 0x5

    aput v4, v2, v0

    const/4 v0, 0x6

    aput v4, v2, v0

    const/4 v0, 0x7

    aput v4, v2, v0

    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bm;->p:Ljava/nio/FloatBuffer;

    .line 64
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getZIndex()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bm;->c:Ljava/lang/Float;

    .line 65
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bm;->d:Z

    .line 66
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bm;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bm;->o:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->a:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bn;->a()Lcom/amap/api/mapcore/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bm;->f:Lcom/amap/api/mapcore/aa;

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->o:Ljava/lang/String;

    const-string v1, "TileOverlay"

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bm;->j:I

    .line 71
    new-instance v0, Lcom/amap/api/mapcore/util/ba$a;

    iget-object v1, p0, Lcom/amap/api/mapcore/bm;->a:Lcom/amap/api/mapcore/bn;

    .line 72
    invoke-virtual {v1}, Lcom/amap/api/mapcore/bn;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/bm;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/ba$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemoryCacheEnabled()Z

    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ba$a;->a(Z)V

    .line 79
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ba$a;->b(Z)V

    .line 80
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemCacheSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ba$a;->a(I)V

    .line 81
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ba$a;->b(I)V

    .line 82
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheDir()Ljava/lang/String;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ba$a;->a(Ljava/lang/String;)V

    .line 88
    :cond_0
    new-instance v1, Lcom/amap/api/mapcore/util/bb;

    iget-object v2, p0, Lcom/amap/api/mapcore/bm;->a:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/bn;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/mapcore/bm;->h:I

    iget v4, p0, Lcom/amap/api/mapcore/bm;->i:I

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/bb;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    .line 90
    iget-object v1, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    iget-object v2, p0, Lcom/amap/api/mapcore/bm;->b:Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/bb;->a(Lcom/amap/api/maps/model/TileProvider;)V

    .line 91
    iget-object v1, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/bb;->a(Lcom/amap/api/mapcore/util/ba$a;)V

    .line 93
    invoke-virtual {p0, v5}, Lcom/amap/api/mapcore/bm;->b(Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/bn;Z)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/bm;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/bn;)V

    .line 98
    iput-boolean p3, p0, Lcom/amap/api/mapcore/bm;->e:Z

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/bm;)Lcom/amap/api/mapcore/aa;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->f:Lcom/amap/api/mapcore/aa;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    sget v0, Lcom/amap/api/mapcore/bm;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/bm;->g:I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/bm;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(III)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/bm$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/bm;->f:Lcom/amap/api/mapcore/aa;

    invoke-interface {v2}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v2

    .line 294
    const v3, 0x7fffffff

    .line 295
    const/4 v4, 0x0

    .line 296
    const v5, 0x7fffffff

    .line 297
    const/4 v6, 0x0

    .line 299
    new-instance v7, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 300
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 301
    new-instance v9, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v9}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 303
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11, v7}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 304
    iget v10, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v11, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v2, v10, v11, v8}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 305
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 306
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 307
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 308
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 310
    const/4 v10, 0x0

    move/from16 v0, p2

    invoke-virtual {v2, v0, v10, v7}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 311
    iget v10, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v11, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v2, v10, v11, v8}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 312
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 313
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 314
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 315
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 317
    const/4 v10, 0x0

    move/from16 v0, p3

    invoke-virtual {v2, v10, v0, v7}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 318
    iget v10, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v11, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v2, v10, v11, v8}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 319
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 320
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 321
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 322
    iget v10, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 324
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v7}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 325
    iget v10, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v7, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v2, v10, v7, v8}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 326
    iget v7, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 327
    iget v7, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 328
    iget v4, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 329
    iget v5, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 331
    const/4 v5, 0x1

    rsub-int/lit8 v6, p1, 0x14

    shl-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/amap/api/mapcore/bm;->h:I

    mul-int/2addr v5, v6

    sub-int v14, v3, v5

    .line 333
    const/4 v3, 0x1

    rsub-int/lit8 v5, p1, 0x14

    shl-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/bm;->i:I

    mul-int/2addr v3, v5

    sub-int v15, v4, v3

    .line 336
    invoke-virtual {v2, v9}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 337
    iget v2, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    rsub-int/lit8 v3, p1, 0x14

    shr-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/bm;->h:I

    div-int v4, v2, v3

    .line 338
    iget v2, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    rsub-int/lit8 v3, p1, 0x14

    shr-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/bm;->i:I

    div-int v5, v2, v3

    .line 339
    rsub-int/lit8 v2, p1, 0x14

    shl-int v2, v4, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/bm;->h:I

    mul-int v8, v2, v3

    .line 340
    rsub-int/lit8 v2, p1, 0x14

    shl-int v2, v5, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/bm;->i:I

    mul-int v9, v2, v3

    .line 341
    new-instance v2, Lcom/amap/api/mapcore/bm$a;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/amap/api/mapcore/bm;->j:I

    move-object/from16 v3, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore/bm$a;-><init>(Lcom/amap/api/mapcore/bm;IIII)V

    .line 343
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3, v8, v9}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iput-object v3, v2, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 346
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 347
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    const/4 v2, 0x1

    move v3, v2

    .line 357
    :goto_0
    const/4 v2, 0x0

    .line 358
    sub-int v8, v4, v3

    :goto_1
    add-int v6, v4, v3

    if-gt v8, v6, :cond_4

    .line 360
    add-int v9, v5, v3

    .line 362
    new-instance v17, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v6, p1, 0x14

    shl-int v6, v8, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/amap/api/mapcore/bm;->h:I

    mul-int/2addr v6, v7

    rsub-int/lit8 v7, p1, 0x14

    shl-int v7, v9, v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/amap/api/mapcore/bm;->i:I

    mul-int/2addr v7, v10

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    .line 366
    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v6, v12, :cond_1

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v6, v14, :cond_1

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v6, v13, :cond_1

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-le v6, v15, :cond_1

    .line 368
    if-nez v2, :cond_0

    .line 369
    const/4 v2, 0x1

    .line 371
    :cond_0
    new-instance v6, Lcom/amap/api/mapcore/bm$a;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/amap/api/mapcore/bm;->j:I

    move-object/from16 v7, p0

    move/from16 v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/amap/api/mapcore/bm$a;-><init>(Lcom/amap/api/mapcore/bm;IIII)V

    .line 373
    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 375
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_1
    sub-int v9, v5, v3

    .line 380
    new-instance v17, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v6, p1, 0x14

    shl-int v6, v8, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/amap/api/mapcore/bm;->h:I

    mul-int/2addr v6, v7

    rsub-int/lit8 v7, p1, 0x14

    shl-int v7, v9, v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/amap/api/mapcore/bm;->i:I

    mul-int/2addr v7, v10

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    .line 384
    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v6, v12, :cond_3

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v6, v14, :cond_3

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v6, v13, :cond_3

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-le v6, v15, :cond_3

    .line 386
    if-nez v2, :cond_2

    .line 387
    const/4 v2, 0x1

    .line 389
    :cond_2
    new-instance v6, Lcom/amap/api/mapcore/bm$a;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/amap/api/mapcore/bm;->j:I

    move-object/from16 v7, p0

    move/from16 v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/amap/api/mapcore/bm$a;-><init>(Lcom/amap/api/mapcore/bm;IIII)V

    .line 391
    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 393
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 397
    :cond_4
    add-int v6, v5, v3

    add-int/lit8 v9, v6, -0x1

    :goto_2
    sub-int v6, v5, v3

    if-le v9, v6, :cond_9

    .line 398
    add-int v8, v4, v3

    .line 401
    new-instance v17, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v6, p1, 0x14

    shl-int v6, v8, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/amap/api/mapcore/bm;->h:I

    mul-int/2addr v6, v7

    rsub-int/lit8 v7, p1, 0x14

    shl-int v7, v9, v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/amap/api/mapcore/bm;->i:I

    mul-int/2addr v7, v10

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    .line 405
    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v6, v12, :cond_6

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v6, v14, :cond_6

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v6, v13, :cond_6

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-le v6, v15, :cond_6

    .line 407
    if-nez v2, :cond_5

    .line 408
    const/4 v2, 0x1

    .line 410
    :cond_5
    new-instance v6, Lcom/amap/api/mapcore/bm$a;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/amap/api/mapcore/bm;->j:I

    move-object/from16 v7, p0

    move/from16 v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/amap/api/mapcore/bm$a;-><init>(Lcom/amap/api/mapcore/bm;IIII)V

    .line 412
    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 414
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_6
    sub-int v8, v4, v3

    .line 419
    new-instance v17, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v6, p1, 0x14

    shl-int v6, v8, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/amap/api/mapcore/bm;->h:I

    mul-int/2addr v6, v7

    rsub-int/lit8 v7, p1, 0x14

    shl-int v7, v9, v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/amap/api/mapcore/bm;->i:I

    mul-int/2addr v7, v10

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    .line 423
    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v6, v12, :cond_8

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v6, v14, :cond_8

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v6, v13, :cond_8

    move-object/from16 v0, v17

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-le v6, v15, :cond_8

    .line 425
    if-nez v2, :cond_7

    .line 426
    const/4 v2, 0x1

    .line 428
    :cond_7
    new-instance v6, Lcom/amap/api/mapcore/bm$a;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/amap/api/mapcore/bm;->j:I

    move-object/from16 v7, p0

    move/from16 v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/amap/api/mapcore/bm$a;-><init>(Lcom/amap/api/mapcore/bm;IIII)V

    .line 430
    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 432
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 436
    :cond_9
    if-nez v2, :cond_a

    .line 441
    return-object v16

    .line 356
    :cond_a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/bm;III)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/bm;->a(III)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 8

    .prologue
    const/16 v7, 0x1406

    const/16 v6, 0xbe2

    const/16 v5, 0xde1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 228
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 232
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x46040000    # 8448.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 234
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 235
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 237
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 238
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 239
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 240
    invoke-interface {p1, v5, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 242
    const/4 v0, 0x3

    invoke-interface {p1, v0, v7, v4, p3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 243
    const/4 v0, 0x2

    invoke-interface {p1, v0, v7, v4, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 244
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-interface {p1, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 246
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 247
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 248
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 249
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/bm$a;)Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 176
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->f:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    .line 177
    iget v1, p1, Lcom/amap/api/mapcore/bm$a;->c:I

    int-to-float v1, v1

    .line 178
    iget v2, p0, Lcom/amap/api/mapcore/bm;->h:I

    iget v3, p0, Lcom/amap/api/mapcore/bm;->i:I

    .line 180
    iget-object v4, p1, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v5, p1, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    float-to-int v6, v1

    rsub-int/lit8 v6, v6, 0x14

    shl-int v6, v11, v6

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 183
    const/16 v6, 0xc

    new-array v6, v6, [F

    .line 185
    new-instance v7, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 186
    invoke-virtual {v0, v4, v5, v7}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 189
    new-instance v8, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 190
    float-to-int v9, v1

    rsub-int/lit8 v9, v9, 0x14

    shl-int v9, v11, v9

    mul-int/2addr v9, v2

    add-int/2addr v9, v4

    invoke-virtual {v0, v9, v5, v8}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 193
    new-instance v9, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v9}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 194
    float-to-int v10, v1

    rsub-int/lit8 v10, v10, 0x14

    shl-int v10, v11, v10

    mul-int/2addr v2, v10

    add-int/2addr v2, v4

    float-to-int v10, v1

    rsub-int/lit8 v10, v10, 0x14

    shl-int v10, v11, v10

    mul-int/2addr v10, v3

    sub-int v10, v5, v10

    invoke-virtual {v0, v2, v10, v9}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 198
    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 199
    float-to-int v1, v1

    rsub-int/lit8 v1, v1, 0x14

    shl-int v1, v11, v1

    mul-int/2addr v1, v3

    sub-int v1, v5, v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 201
    const/4 v0, 0x0

    iget v1, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    .line 202
    iget v0, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v0, v6, v11

    .line 203
    const/4 v0, 0x2

    aput v12, v6, v0

    .line 205
    const/4 v0, 0x3

    iget v1, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    .line 206
    const/4 v0, 0x4

    iget v1, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v1, v6, v0

    .line 207
    const/4 v0, 0x5

    aput v12, v6, v0

    .line 209
    const/4 v0, 0x6

    iget v1, v9, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    .line 210
    const/4 v0, 0x7

    iget v1, v9, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v1, v6, v0

    .line 211
    const/16 v0, 0x8

    aput v12, v6, v0

    .line 213
    const/16 v0, 0x9

    iget v1, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    .line 214
    const/16 v0, 0xa

    iget v1, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v1, v6, v0

    .line 215
    const/16 v0, 0xb

    aput v12, v6, v0

    .line 216
    iget-object v0, p1, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 217
    invoke-static {v6}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    .line 223
    :goto_0
    return v11

    .line 219
    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    invoke-static {v6, v0}, Lcom/amap/api/mapcore/util/bk;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/bm;Ljava/util/List;IZ)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/bm;->a(Ljava/util/List;IZ)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/bm$a;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 446
    if-nez p1, :cond_0

    move v0, v2

    .line 495
    :goto_0
    return v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    move v0, v2

    .line 450
    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/bm$a;

    .line 454
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/bm$a;

    .line 455
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bm$a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/amap/api/mapcore/bm$a;->g:Z

    if-eqz v6, :cond_3

    .line 456
    iget-boolean v5, v0, Lcom/amap/api/mapcore/bm$a;->g:Z

    iput-boolean v5, v1, Lcom/amap/api/mapcore/bm$a;->g:Z

    .line 457
    iget v5, v0, Lcom/amap/api/mapcore/bm$a;->f:I

    iput v5, v1, Lcom/amap/api/mapcore/bm$a;->f:I

    move v1, v3

    .line 462
    :goto_2
    if-nez v1, :cond_2

    .line 463
    invoke-virtual {v0}, Lcom/amap/api/mapcore/bm$a;->b()V

    goto :goto_1

    .line 466
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 468
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->f:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->r()F

    move-result v0

    float-to-int v0, v0

    if-gt p2, v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->f:Lcom/amap/api/mapcore/aa;

    .line 469
    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->s()F

    move-result v0

    float-to-int v0, v0

    if-ge p2, v0, :cond_6

    :cond_5
    move v0, v2

    .line 470
    goto :goto_0

    .line 472
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 473
    if-gtz v1, :cond_7

    move v0, v2

    .line 474
    goto :goto_0

    .line 478
    :cond_7
    :goto_3
    if-ge v2, v1, :cond_b

    .line 479
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/bm$a;

    .line 480
    if-nez v0, :cond_9

    .line 478
    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 483
    :cond_9
    iget-boolean v4, p0, Lcom/amap/api/mapcore/bm;->e:Z

    if-eqz v4, :cond_a

    .line 484
    iget v4, v0, Lcom/amap/api/mapcore/bm$a;->c:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_8

    iget v4, v0, Lcom/amap/api/mapcore/bm$a;->a:I

    iget v5, v0, Lcom/amap/api/mapcore/bm$a;->b:I

    iget v6, v0, Lcom/amap/api/mapcore/bm$a;->c:I

    .line 485
    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore/util/bh;->a(III)Z

    move-result v4

    if-nez v4, :cond_8

    .line 490
    :cond_a
    iget-object v4, p0, Lcom/amap/api/mapcore/bm;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-boolean v4, v0, Lcom/amap/api/mapcore/bm$a;->g:Z

    if-nez v4, :cond_8

    .line 492
    iget-object v4, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v4, p3, v0}, Lcom/amap/api/mapcore/util/bb;->a(ZLcom/amap/api/mapcore/bm$a;)V

    goto :goto_4

    :cond_b
    move v0, v3

    .line 495
    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/amap/api/mapcore/bm;)Lcom/amap/api/mapcore/util/bb;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/bm;)Lcom/amap/api/mapcore/bn;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->a:Lcom/amap/api/mapcore/bn;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->n:Lcom/amap/api/mapcore/bm$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->n:Lcom/amap/api/mapcore/bm$b;

    .line 104
    invoke-virtual {v0}, Lcom/amap/api/mapcore/bm$b;->a()Lcom/amap/api/mapcore/util/av$d;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/av$d;->b:Lcom/amap/api/mapcore/util/av$d;

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->n:Lcom/amap/api/mapcore/bm$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bm$b;->a(Z)Z

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/bm$a;

    .line 108
    invoke-virtual {v0}, Lcom/amap/api/mapcore/bm$a;->b()V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 111
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bb;->h()V

    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->a:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/bn;->b(Lcom/amap/api/mapcore/ao;)Z

    .line 113
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->f:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 114
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 131
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bm;->c:Ljava/lang/Float;

    .line 132
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->a:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bn;->c()V

    .line 133
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .prologue
    .line 254
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/bm$a;

    .line 258
    iget-boolean v1, v0, Lcom/amap/api/mapcore/bm$a;->g:Z

    if-nez v1, :cond_4

    .line 260
    :try_start_0
    iget-object v1, v0, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 261
    iget-object v3, v0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;

    .line 262
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    .line 263
    iget-object v1, v0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/bk;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, v0, Lcom/amap/api/mapcore/bm$a;->f:I

    .line 265
    iget v1, v0, Lcom/amap/api/mapcore/bm$a;->f:I

    if-eqz v1, :cond_3

    .line 266
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/bm$a;->g:Z

    .line 269
    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_4
    :goto_1
    iget-boolean v1, v0, Lcom/amap/api/mapcore/bm$a;->g:Z

    if-eqz v1, :cond_2

    .line 279
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/bm;->a(Lcom/amap/api/mapcore/bm$a;)Z

    .line 280
    iget v1, v0, Lcom/amap/api/mapcore/bm$a;->f:I

    iget-object v0, v0, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/amap/api/mapcore/bm;->p:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amap/api/mapcore/bm;->a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    const-string v3, "TileOverlayDelegateImp"

    const-string v4, "drawTiles"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v3, "TileOverlayDelegateImp"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x70

    invoke-static {v3, v1, v4}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bm;->d:Z

    .line 143
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->f:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/bm;->b(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/ao;)Z
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-interface {p1}, Lcom/amap/api/mapcore/ao;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bm;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bb;->f()V

    .line 119
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 500
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bm;->m:Z

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->n:Lcom/amap/api/mapcore/bm$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->n:Lcom/amap/api/mapcore/bm$b;

    .line 504
    invoke-virtual {v0}, Lcom/amap/api/mapcore/bm$b;->a()Lcom/amap/api/mapcore/util/av$d;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/av$d;->b:Lcom/amap/api/mapcore/util/av$d;

    if-ne v0, v1, :cond_1

    .line 505
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->n:Lcom/amap/api/mapcore/bm$b;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/bm$b;->a(Z)Z

    .line 507
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/bm$b;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/bm$b;-><init>(Lcom/amap/api/mapcore/bm;Z)V

    iput-object v0, p0, Lcom/amap/api/mapcore/bm;->n:Lcom/amap/api/mapcore/bm$b;

    .line 508
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->n:Lcom/amap/api/mapcore/bm$b;

    new-array v1, v2, [Lcom/amap/api/mapcore/aa;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/mapcore/bm;->f:Lcom/amap/api/mapcore/aa;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bm$b;->c([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/av;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 124
    const-string v0, "TileOverlay"

    invoke-static {v0}, Lcom/amap/api/mapcore/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bm;->o:Ljava/lang/String;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bm;->m:Z

    if-eq v0, p1, :cond_0

    .line 526
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bm;->m:Z

    .line 527
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/bb;->b(Z)V

    .line 529
    :cond_0
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->c:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bm;->d:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bb;->b(Z)V

    .line 514
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bb;->a(Z)V

    .line 515
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bb;->g()V

    .line 516
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/amap/api/mapcore/bm;->k:Lcom/amap/api/mapcore/util/bb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bb;->a(Z)V

    .line 521
    return-void
.end method
