.class Lcom/amap/api/mapcore/m;
.super Ljava/lang/Object;
.source "ArcDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/ab;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field private e:Lcom/amap/api/maps/model/LatLng;

.field private f:Lcom/amap/api/maps/model/LatLng;

.field private g:Lcom/amap/api/maps/model/LatLng;

.field private h:F

.field private i:I

.field private j:F

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcom/amap/api/mapcore/aa;

.field private n:[F

.field private o:I

.field private p:Z

.field private q:D

.field private r:D

.field private s:D


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/aa;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/m;->h:F

    .line 20
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/mapcore/m;->i:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/m;->j:F

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/m;->k:Z

    .line 26
    iput v1, p0, Lcom/amap/api/mapcore/m;->o:I

    .line 27
    iput-boolean v1, p0, Lcom/amap/api/mapcore/m;->p:Z

    .line 28
    iput-wide v2, p0, Lcom/amap/api/mapcore/m;->q:D

    .line 29
    iput-wide v2, p0, Lcom/amap/api/mapcore/m;->r:D

    .line 30
    iput-wide v2, p0, Lcom/amap/api/mapcore/m;->s:D

    .line 37
    iput-object p1, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/m;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/m;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "ArcDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(DDDD)D
    .locals 7

    .prologue
    .line 251
    sub-double v0, p3, p7

    iget-wide v2, p0, Lcom/amap/api/mapcore/m;->q:D

    div-double/2addr v0, v2

    .line 252
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    .line 253
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    .line 254
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    .line 255
    cmpg-double v2, p5, p1

    if-gez v2, :cond_1

    .line 256
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    .line 266
    :cond_1
    :goto_0
    return-wide v0

    .line 259
    :cond_2
    cmpg-double v2, p5, p1

    if-gez v2, :cond_3

    .line 260
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    sub-double v0, v2, v0

    goto :goto_0

    .line 262
    :cond_3
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;DDD)Lcom/autonavi/amap/mapcore/FPoint;
    .locals 6

    .prologue
    .line 176
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/m;->q:D

    mul-double/2addr v0, v2

    .line 177
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lcom/amap/api/mapcore/m;->q:D

    mul-double/2addr v2, v4

    .line 179
    add-double/2addr v0, p4

    double-to-int v0, v0

    .line 180
    add-double/2addr v2, p6

    double-to-int v1, v2

    .line 181
    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 182
    invoke-virtual {p1, v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 184
    return-object v2
.end method

.method private l()Z
    .locals 8

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/m;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v6, p0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 198
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private m()Lcom/autonavi/amap/mapcore/DPoint;
    .locals 24

    .prologue
    .line 205
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/m;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/m;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v3 .. v8}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 207
    new-instance v14, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v14}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 208
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v9 .. v14}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 210
    new-instance v20, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct/range {v20 .. v20}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 211
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    invoke-interface/range {v15 .. v20}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 212
    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v12, v2

    .line 213
    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v2

    .line 214
    iget v2, v14, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    .line 215
    iget v2, v14, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v14, v2

    .line 216
    move-object/from16 v0, v20

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v0, v2

    move-wide/from16 v18, v0

    .line 217
    move-object/from16 v0, v20

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v0, v2

    move-wide/from16 v20, v0

    .line 220
    sub-double v2, v20, v10

    mul-double v4, v14, v14

    mul-double v6, v10, v10

    sub-double/2addr v4, v6

    mul-double v6, v16, v16

    add-double/2addr v4, v6

    mul-double v6, v12, v12

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double v4, v14, v10

    mul-double v6, v10, v10

    mul-double v8, v20, v20

    sub-double/2addr v6, v8

    mul-double v8, v12, v12

    add-double/2addr v6, v8

    mul-double v8, v18, v18

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v6, v16, v12

    mul-double/2addr v4, v6

    sub-double v6, v20, v10

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v8, v18, v12

    mul-double/2addr v6, v8

    sub-double v8, v14, v10

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    div-double v4, v2, v4

    .line 223
    sub-double v2, v18, v12

    mul-double v6, v16, v16

    mul-double v8, v12, v12

    sub-double/2addr v6, v8

    mul-double v8, v14, v14

    add-double/2addr v6, v8

    mul-double v8, v10, v10

    sub-double/2addr v6, v8

    mul-double/2addr v2, v6

    sub-double v6, v16, v12

    mul-double v8, v12, v12

    mul-double v22, v18, v18

    sub-double v8, v8, v22

    mul-double v22, v10, v10

    add-double v8, v8, v22

    mul-double v22, v20, v20

    sub-double v8, v8, v22

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v8, v14, v10

    mul-double/2addr v6, v8

    sub-double v8, v18, v12

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v22, v20, v10

    mul-double v8, v8, v22

    sub-double v22, v16, v12

    mul-double v8, v8, v22

    sub-double/2addr v6, v8

    div-double v6, v2, v6

    .line 228
    sub-double v2, v12, v4

    sub-double v8, v12, v4

    mul-double/2addr v2, v8

    sub-double v8, v10, v6

    sub-double v22, v10, v6

    mul-double v8, v8, v22

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/m;->q:D

    move-object/from16 v3, p0

    move-wide v8, v12

    .line 232
    invoke-direct/range {v3 .. v11}, Lcom/amap/api/mapcore/m;->a(DDDD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/m;->r:D

    move-object/from16 v3, p0

    move-wide/from16 v8, v16

    move-wide v10, v14

    .line 233
    invoke-direct/range {v3 .. v11}, Lcom/amap/api/mapcore/m;->a(DDDD)D

    move-result-wide v12

    move-object/from16 v3, p0

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    .line 234
    invoke-direct/range {v3 .. v11}, Lcom/amap/api/mapcore/m;->a(DDDD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/m;->s:D

    .line 235
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/m;->r:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/amap/api/mapcore/m;->s:D

    cmpg-double v2, v2, v8

    if-gez v2, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/m;->r:D

    cmpl-double v2, v12, v2

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/m;->s:D

    cmpg-double v2, v12, v2

    if-ltz v2, :cond_1

    .line 237
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/m;->s:D

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/m;->s:D

    .line 244
    :cond_1
    :goto_0
    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    return-object v2

    .line 240
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/m;->s:D

    cmpl-double v2, v12, v2

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/m;->r:D

    cmpg-double v2, v12, v2

    if-ltz v2, :cond_1

    .line 241
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/m;->s:D

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/m;->s:D

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iput p1, p0, Lcom/amap/api/mapcore/m;->j:F

    .line 68
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->M()V

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 70
    return-void
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 302
    iput p1, p0, Lcom/amap/api/mapcore/m;->i:I

    .line 303
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/m;->a:F

    .line 304
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/m;->b:F

    .line 305
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/m;->c:F

    .line 306
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/m;->d:F

    .line 307
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 308
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/amap/api/mapcore/m;->e:Lcom/amap/api/maps/model/LatLng;

    .line 337
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 271
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/m;->k:Z

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->n:[F

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/m;->o:I

    if-nez v0, :cond_3

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/m;->g()V

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->n:[F

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/m;->o:I

    if-lez v0, :cond_4

    .line 279
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/m;->h:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v2

    .line 281
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    .line 282
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->n:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/m;->n:[F

    array-length v1, v1

    iget-object v3, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    .line 283
    invoke-interface {v3}, Lcom/amap/api/mapcore/aa;->b()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/m;->b:F

    iget v5, p0, Lcom/amap/api/mapcore/m;->c:F

    iget v6, p0, Lcom/amap/api/mapcore/m;->d:F

    iget v7, p0, Lcom/amap/api/mapcore/m;->a:F

    const/4 v8, 0x0

    move v11, v9

    .line 282
    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V

    .line 286
    :cond_4
    iput-boolean v10, p0, Lcom/amap/api/mapcore/m;->p:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/amap/api/mapcore/m;->k:Z

    .line 80
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 81
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/amap/api/mapcore/ai;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/amap/api/mapcore/ai;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Ljava/lang/String;)Z

    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 55
    return-void
.end method

.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    iput p1, p0, Lcom/amap/api/mapcore/m;->h:F

    .line 292
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 293
    return-void
.end method

.method public b(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    .line 342
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "Arc"

    invoke-static {v0}, Lcom/amap/api/mapcore/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/m;->l:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->l:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    .line 347
    return-void
.end method

.method public d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    iget v0, p0, Lcom/amap/api/mapcore/m;->j:F

    return v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/amap/api/mapcore/m;->k:Z

    return v0
.end method

.method public f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/amap/api/mapcore/m;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/m;->k:Z

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/m;->p:Z

    .line 118
    iget-object v1, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    invoke-interface {v1}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v9

    .line 120
    invoke-direct {p0}, Lcom/amap/api/mapcore/m;->l()Z

    move-result v1

    if-nez v1, :cond_3

    .line 121
    const/4 v7, 0x3

    .line 122
    new-array v8, v7, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 123
    array-length v1, v8

    mul-int/2addr v1, v7

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/amap/api/mapcore/m;->n:[F

    .line 124
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    iget-object v2, p0, Lcom/amap/api/mapcore/m;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/m;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 127
    const/4 v1, 0x0

    aput-object v6, v8, v1

    .line 128
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    iget-object v2, p0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 131
    const/4 v1, 0x1

    aput-object v6, v8, v1

    .line 132
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    iget-object v2, p0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 135
    const/4 v1, 0x2

    aput-object v6, v8, v1

    .line 137
    :goto_1
    if-ge v0, v7, :cond_2

    .line 138
    iget-object v1, p0, Lcom/amap/api/mapcore/m;->n:[F

    mul-int/lit8 v2, v0, 0x3

    aget-object v3, v8, v0

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v3, v1, v2

    .line 139
    iget-object v1, p0, Lcom/amap/api/mapcore/m;->n:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    aget-object v3, v8, v0

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v3, v1, v2

    .line 140
    iget-object v1, p0, Lcom/amap/api/mapcore/m;->n:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_2
    array-length v0, v8

    iput v0, p0, Lcom/amap/api/mapcore/m;->o:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "ArcDelegateImp"

    const-string v2, "calMapFPoint"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 146
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/m;->m()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v10

    .line 147
    iget-wide v2, p0, Lcom/amap/api/mapcore/m;->s:D

    iget-wide v4, p0, Lcom/amap/api/mapcore/m;->r:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v11, v2

    .line 148
    iget-wide v2, p0, Lcom/amap/api/mapcore/m;->s:D

    iget-wide v4, p0, Lcom/amap/api/mapcore/m;->r:D

    sub-double/2addr v2, v4

    int-to-double v4, v11

    div-double v12, v2, v4

    .line 149
    add-int/lit8 v1, v11, 0x1

    new-array v14, v1, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 150
    array-length v1, v14

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/amap/api/mapcore/m;->n:[F

    move v8, v0

    .line 151
    :goto_2
    if-gt v8, v11, :cond_5

    .line 152
    if-ne v8, v11, :cond_4

    .line 153
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/amap/api/mapcore/m;->m:Lcom/amap/api/mapcore/aa;

    iget-object v0, p0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 156
    aput-object v6, v14, v8

    .line 161
    :goto_3
    iget-wide v0, p0, Lcom/amap/api/mapcore/m;->r:D

    int-to-double v2, v8

    mul-double/2addr v2, v12

    add-double/2addr v2, v0

    iget-wide v4, v10, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v6, v10, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-object v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/mapcore/m;->a(Lcom/autonavi/amap/mapcore/MapProjection;DDD)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    aput-object v0, v14, v8

    .line 163
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->n:[F

    mul-int/lit8 v1, v8, 0x3

    aget-object v2, v14, v8

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v2, v0, v1

    .line 164
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->n:[F

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v14, v8

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v2, v0, v1

    .line 165
    iget-object v0, p0, Lcom/amap/api/mapcore/m;->n:[F

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 151
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 158
    :cond_4
    iget-wide v0, p0, Lcom/amap/api/mapcore/m;->r:D

    int-to-double v2, v8

    mul-double/2addr v2, v12

    add-double/2addr v2, v0

    iget-wide v4, v10, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v6, v10, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-object v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/mapcore/m;->a(Lcom/autonavi/amap/mapcore/MapProjection;DDD)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    aput-object v0, v14, v8

    goto :goto_3

    .line 167
    :cond_5
    array-length v0, v14

    iput v0, p0, Lcom/amap/api/mapcore/m;->o:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public h()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    iget v0, p0, Lcom/amap/api/mapcore/m;->h:F

    return v0
.end method

.method public i()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    iget v0, p0, Lcom/amap/api/mapcore/m;->i:I

    return v0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 318
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/m;->e:Lcom/amap/api/maps/model/LatLng;

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/m;->f:Lcom/amap/api/maps/model/LatLng;

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/m;->g:Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v1, "ArcDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    const-string v0, "destroy erro"

    const-string v1, "ArcDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/amap/api/mapcore/m;->p:Z

    return v0
.end method
