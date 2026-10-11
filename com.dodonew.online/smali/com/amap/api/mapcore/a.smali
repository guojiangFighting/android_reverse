.class Lcom/amap/api/mapcore/a;
.super Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
.source "AMapCallback.java"


# instance fields
.field a:Lcom/autonavi/amap/mapcore/IPoint;

.field b:F

.field c:F

.field d:F

.field e:Lcom/autonavi/amap/mapcore/IPoint;

.field private f:Lcom/amap/api/mapcore/AMapDelegateImp;

.field private g:F

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;-><init>()V

    .line 69
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/amap/api/mapcore/a;->g:F

    .line 114
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    .line 118
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 41
    iput-object p1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 42
    return-void
.end method

.method private a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;II)F
    .locals 20

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v16

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 240
    invoke-virtual/range {v16 .. v16}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 241
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 242
    new-instance v14, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v14}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v8}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v9 .. v14}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 247
    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v14, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v2, v3

    int-to-double v4, v2

    .line 248
    iget v2, v14, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 249
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 250
    :cond_0
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 251
    :cond_1
    move/from16 v0, p3

    int-to-double v6, v0

    div-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 252
    move/from16 v0, p4

    int-to-double v6, v0

    div-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    .line 253
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 254
    sub-double v2, v6, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    const/4 v2, 0x1

    .line 255
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v3

    float-to-double v4, v3

    .line 256
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 255
    invoke-static {v3}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v3

    .line 257
    const-wide v18, 0x3fb999999999999aL    # 0.1

    .line 259
    :goto_1
    float-to-double v4, v3

    add-double v4, v4, v18

    double-to-float v3, v4

    .line 260
    invoke-static {v3}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v15

    .line 261
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 262
    invoke-virtual/range {v16 .. v16}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v8}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v9 .. v14}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 267
    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v14, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v3, v4

    int-to-double v4, v3

    .line 268
    iget v3, v14, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    .line 270
    if-eqz v2, :cond_5

    move/from16 v0, p3

    int-to-double v6, v0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_6

    .line 272
    :cond_2
    float-to-double v2, v15

    sub-double v2, v2, v18

    double-to-float v15, v2

    .line 281
    :cond_3
    return v15

    .line 254
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 270
    :cond_5
    move/from16 v0, p4

    int-to-double v4, v0

    cmpl-double v3, v6, v4

    if-gez v3, :cond_2

    .line 276
    :cond_6
    const/high16 v3, 0x41980000    # 19.0f

    cmpl-float v3, v15, v3

    if-gez v3, :cond_3

    move v3, v15

    goto :goto_1
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 2

    .prologue
    .line 551
    iget v0, p0, Lcom/amap/api/mapcore/a;->h:I

    iget v1, p0, Lcom/amap/api/mapcore/a;->i:I

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 3

    .prologue
    .line 555
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 556
    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 557
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 558
    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v2, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 559
    return-object v1
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;F)V
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Lcom/amap/api/mapcore/a;->h:I

    iget v1, p0, Lcom/amap/api/mapcore/a;->i:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;FII)V

    .line 498
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;FII)V
    .locals 1

    .prologue
    .line 501
    invoke-direct {p0, p1, p3, p4}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 502
    invoke-virtual {p1, p2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 503
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;II)V

    .line 505
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/o;)V
    .locals 1

    .prologue
    .line 491
    iget v0, p2, Lcom/amap/api/mapcore/o;->g:F

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 492
    iget-object v0, p2, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 493
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    .prologue
    .line 537
    iget v0, p0, Lcom/amap/api/mapcore/a;->h:I

    iget v1, p0, Lcom/amap/api/mapcore/a;->i:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;II)V

    .line 538
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;FFF)V
    .locals 0

    .prologue
    .line 509
    invoke-virtual {p1, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 510
    invoke-virtual {p1, p4}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 511
    invoke-virtual {p1, p5}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 513
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;II)V
    .locals 4

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 543
    invoke-direct {p0, p1, p3, p4}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 544
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 545
    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 546
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v2, v3

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/2addr v1, v3

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 548
    return-void
.end method

.method private b(Lcom/amap/api/mapcore/o;)V
    .locals 14

    .prologue
    .line 202
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v2

    .line 203
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v3

    .line 204
    iget-object v4, p1, Lcom/amap/api/mapcore/o;->i:Lcom/amap/api/maps/model/LatLngBounds;

    .line 205
    iget v0, p1, Lcom/amap/api/mapcore/o;->k:I

    .line 206
    iget v5, p1, Lcom/amap/api/mapcore/o;->l:I

    .line 207
    iget v6, p1, Lcom/amap/api/mapcore/o;->j:I

    .line 209
    new-instance v7, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 210
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 211
    iget-object v1, v4, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, v4, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v10, v11, v12, v13, v7}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 213
    iget-object v1, v4, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, v4, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v10, v11, v12, v13, v8}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 215
    iget v1, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v9, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v9, v1, v9

    .line 216
    iget v1, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v10, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v10, v1, v10

    .line 217
    mul-int/lit8 v1, v6, 0x2

    sub-int v1, v0, v1

    .line 218
    mul-int/lit8 v0, v6, 0x2

    sub-int v0, v5, v0

    .line 219
    if-gez v9, :cond_0

    if-gez v10, :cond_0

    .line 233
    :goto_0
    return-void

    .line 222
    :cond_0
    if-gtz v1, :cond_1

    const/4 v1, 0x1

    .line 223
    :cond_1
    if-gtz v0, :cond_2

    const/4 v0, 0x1

    .line 224
    :cond_2
    iget-object v5, v4, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-object v4, v4, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0, v5, v4, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;II)F

    move-result v0

    .line 226
    iget v1, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 227
    iget v4, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v5, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 228
    invoke-virtual {v3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 229
    invoke-virtual {v3, v1, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 230
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 231
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 232
    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0
.end method

.method private b(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/o;)V
    .locals 1

    .prologue
    .line 517
    iget v0, p2, Lcom/amap/api/mapcore/o;->d:F

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 518
    iget-object v0, p2, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 519
    return-void
.end method

.method private c(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/o;)V
    .locals 2

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 524
    iget v1, p2, Lcom/amap/api/mapcore/o;->f:F

    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 526
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 527
    return-void
.end method

.method private d(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/o;)V
    .locals 2

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 532
    iget v1, p2, Lcom/amap/api/mapcore/o;->g:F

    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 533
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 534
    return-void
.end method


# virtual methods
.method public OnMapDestory(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 564
    invoke-super {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapDestory(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 565
    return-void
.end method

.method public OnMapLoaderError(I)V
    .locals 3

    .prologue
    .line 608
    const-string v0, "MapCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnMapLoaderError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 610
    return-void
.end method

.method public OnMapProcessEvent(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 7

    .prologue
    const/16 v1, 0x7da

    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x0

    .line 74
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->O()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->P()V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    if-eqz v2, :cond_5

    .line 79
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->E()F

    move-result v6

    .line 80
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 82
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/au;->b()Lcom/amap/api/mapcore/at;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 83
    iget v2, v0, Lcom/amap/api/mapcore/at;->a:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/amap/api/mapcore/at;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const/4 v2, 0x4

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    move v2, v3

    move v4, v3

    move v5, v3

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 96
    iget v0, p0, Lcom/amap/api/mapcore/a;->b:F

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->s()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/a;->g:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    move v0, v6

    .line 111
    :cond_5
    iput v0, p0, Lcom/amap/api/mapcore/a;->g:F

    .line 112
    return-void
.end method

.method public OnMapReferencechanged(Lcom/autonavi/amap/mapcore/MapCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->z()Lcom/amap/api/mapcore/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ap;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->g()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->z()Lcom/amap/api/mapcore/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->h()V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->U()V

    .line 586
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    const-string v1, "AMapCallback"

    const-string v2, "OnMapReferencechanged"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public OnMapSufaceChanged(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;II)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public OnMapSurfaceCreate(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapSurfaceCreate(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 47
    return-void
.end method

.method public OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V

    .line 53
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 56
    invoke-virtual {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->Q()I

    move-result v2

    .line 55
    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/v;->a(Ljavax/microedition/khronos/opengles/GL10;ZI)V

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->m:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->m:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/CustomRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 61
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 613
    iput p1, p0, Lcom/amap/api/mapcore/a;->h:I

    .line 614
    iput p2, p0, Lcom/amap/api/mapcore/a;->i:I

    .line 615
    return-void
.end method

.method a(Lcom/amap/api/mapcore/o;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 292
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v6

    .line 293
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    .line 294
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget v2, p1, Lcom/amap/api/mapcore/o;->d:F

    .line 295
    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(F)F

    move-result v0

    iput v0, p1, Lcom/amap/api/mapcore/o;->d:F

    .line 297
    sget-object v0, Lcom/amap/api/mapcore/b;->a:[I

    iget-object v2, p1, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/o$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 484
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 487
    :goto_0
    return-void

    .line 299
    :pswitch_0
    iget-boolean v0, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 305
    :goto_1
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    goto :goto_1

    .line 309
    :pswitch_1
    iget-boolean v0, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v0, :cond_1

    .line 310
    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore/a;->d(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/o;)V

    .line 314
    :goto_2
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 312
    :cond_1
    iget v0, p1, Lcom/amap/api/mapcore/o;->g:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    goto :goto_2

    .line 318
    :pswitch_2
    iget-boolean v0, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v0, :cond_2

    .line 319
    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/o;)V

    .line 326
    :goto_3
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 322
    :cond_2
    iget v0, p1, Lcom/amap/api/mapcore/o;->g:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 323
    iget-object v0, p1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    goto :goto_3

    .line 330
    :pswitch_3
    iget v0, p1, Lcom/amap/api/mapcore/o;->f:F

    .line 331
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v2

    .line 330
    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/bk;->a(FF)F

    move-result v0

    iput v0, p1, Lcom/amap/api/mapcore/o;->f:F

    .line 332
    iget-boolean v0, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v0, :cond_3

    .line 333
    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore/a;->c(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/o;)V

    .line 337
    :goto_4
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 335
    :cond_3
    iget v0, p1, Lcom/amap/api/mapcore/o;->f:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    goto :goto_4

    .line 341
    :pswitch_4
    iget-boolean v0, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v0, :cond_4

    .line 342
    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore/a;->b(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/o;)V

    .line 348
    :goto_5
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 344
    :cond_4
    iget-object v0, p1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 346
    iget v0, p1, Lcom/amap/api/mapcore/o;->d:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_5

    .line 352
    :pswitch_5
    iget-object v0, p1, Lcom/amap/api/mapcore/o;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget-object v0, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 353
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 354
    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v8, v9, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 356
    iget-object v0, p1, Lcom/amap/api/mapcore/o;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 357
    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v3

    .line 358
    iget-object v0, p1, Lcom/amap/api/mapcore/o;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget v4, v0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    .line 359
    iget-object v0, p1, Lcom/amap/api/mapcore/o;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/bk;->a(FF)F

    move-result v5

    .line 361
    iget-boolean v0, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v0, :cond_5

    move-object v0, p0

    .line 362
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;FFF)V

    .line 370
    :goto_6
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 365
    :cond_5
    iget v0, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 366
    invoke-virtual {v1, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 367
    invoke-virtual {v1, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 368
    invoke-virtual {v1, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    goto :goto_6

    .line 374
    :pswitch_6
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    add-float/2addr v0, v3

    .line 375
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(F)F

    move-result v0

    .line 376
    iget-boolean v2, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v2, :cond_6

    .line 377
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;F)V

    .line 381
    :goto_7
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 379
    :cond_6
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_7

    .line 385
    :pswitch_7
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    sub-float/2addr v0, v3

    .line 386
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(F)F

    move-result v0

    .line 387
    iget-boolean v2, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v2, :cond_7

    .line 388
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;F)V

    .line 392
    :goto_8
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 393
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 390
    :cond_7
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_8

    .line 397
    :pswitch_8
    iget v0, p1, Lcom/amap/api/mapcore/o;->d:F

    .line 398
    iget-boolean v2, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v2, :cond_8

    .line 399
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;F)V

    .line 403
    :goto_9
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 401
    :cond_8
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_9

    .line 407
    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v2

    iget v3, p1, Lcom/amap/api/mapcore/o;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(F)F

    move-result v0

    .line 409
    iget-object v2, p1, Lcom/amap/api/mapcore/o;->m:Landroid/graphics/Point;

    .line 411
    if-eqz v2, :cond_9

    .line 412
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;FII)V

    .line 420
    :goto_a
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 414
    :cond_9
    iget-boolean v2, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v2, :cond_a

    .line 415
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;F)V

    goto :goto_a

    .line 417
    :cond_a
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_a

    .line 424
    :pswitch_a
    iget v0, p1, Lcom/amap/api/mapcore/o;->b:F

    .line 425
    iget v2, p1, Lcom/amap/api/mapcore/o;->c:F

    .line 426
    iget-object v3, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 427
    iget-object v3, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 428
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 429
    iget-object v4, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    float-to-int v0, v0

    float-to-int v2, v2

    invoke-virtual {v4, v0, v2, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 430
    iget v0, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 431
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 435
    :pswitch_b
    sget-object v0, Lcom/amap/api/mapcore/o$a;->n:Lcom/amap/api/mapcore/o$a;

    iput-object v0, p1, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 436
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v0

    iput v0, p1, Lcom/amap/api/mapcore/o;->k:I

    .line 437
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->n()I

    move-result v0

    iput v0, p1, Lcom/amap/api/mapcore/o;->l:I

    .line 438
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->b(Lcom/amap/api/mapcore/o;)V

    goto/16 :goto_0

    .line 442
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->b(Lcom/amap/api/mapcore/o;)V

    goto/16 :goto_0

    .line 446
    :pswitch_d
    iget v0, p1, Lcom/amap/api/mapcore/o;->f:F

    iget v2, p1, Lcom/amap/api/mapcore/o;->d:F

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/bk;->a(FF)F

    move-result v0

    iput v0, p1, Lcom/amap/api/mapcore/o;->f:F

    .line 449
    iget-boolean v0, p1, Lcom/amap/api/mapcore/o;->n:Z

    if-eqz v0, :cond_b

    .line 450
    iget-object v2, p1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, p1, Lcom/amap/api/mapcore/o;->d:F

    iget v4, p1, Lcom/amap/api/mapcore/o;->g:F

    iget v5, p1, Lcom/amap/api/mapcore/o;->f:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;FFF)V

    .line 462
    :goto_b
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 456
    :cond_b
    iget-object v0, p1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 458
    iget v0, p1, Lcom/amap/api/mapcore/o;->d:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 459
    iget v0, p1, Lcom/amap/api/mapcore/o;->g:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 460
    iget v0, p1, Lcom/amap/api/mapcore/o;->f:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    goto :goto_b

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method a(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v4

    .line 124
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v7

    .line 125
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v8

    .line 126
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v9

    .line 127
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v4, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    move v0, v1

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v2, v2, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/au;->d()Lcom/amap/api/mapcore/o;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/mapcore/o;)V

    .line 135
    iget-boolean v2, v2, Lcom/amap/api/mapcore/o;->p:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v2

    goto :goto_0

    .line 145
    :catch_0
    move-exception v2

    .line 146
    const-string v5, "AMapCallback"

    const-string v6, "runMessage"

    invoke-static {v2, v5, v6}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/a;->b:F

    .line 151
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/a;->c:F

    .line 152
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/a;->d:F

    .line 153
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v4, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 154
    iget v2, p0, Lcom/amap/api/mapcore/a;->b:F

    cmpl-float v2, v7, v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/amap/api/mapcore/a;->c:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_1

    iget v2, p0, Lcom/amap/api/mapcore/a;->d:F

    cmpl-float v2, v2, v9

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v4, p0, Lcom/amap/api/mapcore/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v4, p0, Lcom/amap/api/mapcore/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-eq v2, v4, :cond_2

    :cond_1
    move v1, v3

    .line 160
    :cond_2
    if-eqz v1, :cond_8

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 162
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 163
    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->B()Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_3

    .line 165
    new-instance v4, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v1, v2, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 167
    new-instance v10, Lcom/amap/api/maps/model/CameraPosition;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget v2, p0, Lcom/amap/api/mapcore/a;->b:F

    iget v3, p0, Lcom/amap/api/mapcore/a;->c:F

    iget v4, p0, Lcom/amap/api/mapcore/a;->d:F

    invoke-direct {v10, v1, v2, v3, v4}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    .line 169
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1, v10}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/maps/model/CameraPosition;)V

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->F()V

    .line 175
    :goto_1
    if-eqz v0, :cond_4

    .line 176
    if-eqz v0, :cond_9

    .line 177
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Z)V

    .line 180
    :goto_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 181
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 182
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    :cond_4
    iget v0, p0, Lcom/amap/api/mapcore/a;->c:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_5

    iget v0, p0, Lcom/amap/api/mapcore/a;->d:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 185
    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->z()Lcom/amap/api/mapcore/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ap;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->g()V

    .line 188
    :cond_6
    iget v0, p0, Lcom/amap/api/mapcore/a;->b:F

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 189
    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->z()Lcom/amap/api/mapcore/ap;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Lcom/amap/api/mapcore/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 191
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->h()V

    .line 198
    :cond_7
    :goto_3
    return-void

    .line 173
    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 193
    :catch_1
    move-exception v0

    .line 194
    const-string v1, "AMapCallback"

    const-string v2, "runMessage cameraChange"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 179
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->V()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getMapSvrAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "http://mps.amap.com"

    return-object v0
.end method

.method public isMapEngineValid()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v0

    .line 599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onIndoorBuildingActivity(Lcom/autonavi/amap/mapcore/MapCore;[B)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 625
    const/4 v0, 0x0

    .line 626
    if-eqz p2, :cond_3

    .line 627
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/f;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/f;-><init>()V

    .line 628
    const/4 v0, 0x0

    .line 630
    const/4 v3, 0x1

    aget-byte v0, p2, v0

    .line 631
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/f;->a:Ljava/lang/String;

    .line 632
    add-int/lit8 v0, v0, 0x1

    .line 633
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    .line 634
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/f;->b:Ljava/lang/String;

    .line 635
    add-int/2addr v0, v3

    .line 636
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    .line 637
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/f;->c:Ljava/lang/String;

    .line 639
    add-int/2addr v0, v3

    .line 640
    invoke-static {p2, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/mapcore/util/f;->d:I

    .line 641
    add-int/lit8 v0, v0, 0x4

    .line 642
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    .line 643
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/f;->e:Ljava/lang/String;

    .line 644
    add-int/2addr v0, v3

    .line 645
    invoke-static {p2, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/mapcore/util/f;->f:I

    .line 646
    add-int/lit8 v0, v0, 0x4

    .line 647
    iget v3, v1, Lcom/amap/api/mapcore/util/f;->f:I

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/amap/api/mapcore/util/f;->g:[I

    .line 648
    iget v3, v1, Lcom/amap/api/mapcore/util/f;->f:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/mapcore/util/f;->h:[Ljava/lang/String;

    .line 649
    iget v3, v1, Lcom/amap/api/mapcore/util/f;->f:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/mapcore/util/f;->i:[Ljava/lang/String;

    move v4, v2

    .line 650
    :goto_0
    iget v3, v1, Lcom/amap/api/mapcore/util/f;->f:I

    if-ge v4, v3, :cond_1

    .line 651
    iget-object v3, v1, Lcom/amap/api/mapcore/util/f;->g:[I

    invoke-static {p2, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v5

    aput v5, v3, v4

    .line 653
    add-int/lit8 v3, v0, 0x4

    .line 654
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    .line 655
    if-lez v3, :cond_4

    .line 656
    iget-object v5, v1, Lcom/amap/api/mapcore/util/f;->h:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, v0, v3}, Ljava/lang/String;-><init>([BII)V

    aput-object v6, v5, v4

    .line 658
    add-int/2addr v0, v3

    move v3, v0

    .line 661
    :goto_1
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    .line 662
    if-lez v3, :cond_0

    .line 663
    iget-object v5, v1, Lcom/amap/api/mapcore/util/f;->i:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, v0, v3}, Ljava/lang/String;-><init>([BII)V

    aput-object v6, v5, v4

    .line 665
    add-int/2addr v0, v3

    .line 650
    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 671
    :cond_1
    invoke-static {p2, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/mapcore/util/f;->j:I

    .line 672
    add-int/lit8 v0, v0, 0x4

    .line 673
    iget v3, v1, Lcom/amap/api/mapcore/util/f;->j:I

    if-lez v3, :cond_2

    .line 674
    iget v3, v1, Lcom/amap/api/mapcore/util/f;->j:I

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/amap/api/mapcore/util/f;->k:[I

    move v7, v2

    move v2, v0

    move v0, v7

    .line 675
    :goto_2
    iget v3, v1, Lcom/amap/api/mapcore/util/f;->j:I

    if-ge v0, v3, :cond_2

    .line 676
    iget-object v3, v1, Lcom/amap/api/mapcore/util/f;->k:[I

    invoke-static {p2, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v4

    aput v4, v3, v0

    .line 678
    add-int/lit8 v2, v2, 0x4

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 682
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/util/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_3
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 685
    const-string v1, "AMapCallback"

    const-string v2, "onIndoorBuildingActivity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v3, v0

    goto :goto_1
.end method

.method public onIndoorDataRequired(Lcom/autonavi/amap/mapcore/MapCore;I[Ljava/lang/String;[I[I)V
    .locals 6

    .prologue
    .line 695
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/a;->getReqGridList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 702
    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 704
    const/4 v0, 0x0

    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 705
    new-instance v2, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    aget-object v3, p3, v0

    aget v4, p4, v0

    aget v5, p5, v0

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/autonavi/amap/mapcore/MapSourceGridData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    :cond_2
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 710
    invoke-virtual {p0, p1, v1, p2}, Lcom/amap/api/mapcore/a;->proccessRequiredData(Lcom/autonavi/amap/mapcore/MapCore;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 620
    return-void
.end method
