.class public Lcom/amap/api/mapcore/z;
.super Ljava/lang/Object;
.source "GroundOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/ae;


# instance fields
.field private a:Lcom/amap/api/mapcore/aa;

.field private b:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private c:Lcom/amap/api/maps/model/LatLng;

.field private d:F

.field private e:F

.field private f:Lcom/amap/api/maps/model/LatLngBounds;

.field private g:F

.field private h:F

.field private i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:Ljava/lang/String;

.field private n:Ljava/nio/FloatBuffer;

.field private o:Ljava/nio/FloatBuffer;

.field private p:I

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/aa;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/z;->i:Z

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/z;->j:F

    .line 37
    iput v1, p0, Lcom/amap/api/mapcore/z;->k:F

    .line 38
    iput v1, p0, Lcom/amap/api/mapcore/z;->l:F

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/z;->n:Ljava/nio/FloatBuffer;

    .line 43
    iput-boolean v2, p0, Lcom/amap/api/mapcore/z;->q:Z

    .line 44
    iput-boolean v2, p0, Lcom/amap/api/mapcore/z;->r:Z

    .line 47
    iput-object p1, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/z;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/z;->m:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v1, "GroundOverlayDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/FPoint;)V
    .locals 14

    .prologue
    .line 212
    iget v2, p0, Lcom/amap/api/mapcore/z;->k:F

    float-to-double v2, v2

    mul-double v2, v2, p6

    sub-double v2, p2, v2

    .line 213
    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/amap/api/mapcore/z;->l:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double v4, v4, p8

    sub-double v4, v4, p4

    .line 214
    iget v6, p0, Lcom/amap/api/mapcore/z;->g:F

    neg-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v6, v8

    .line 216
    iget-wide v8, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v2

    .line 217
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    move-object/from16 v0, p10

    iput v8, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 218
    iget-wide v8, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    .line 219
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    sub-double v2, v4, v2

    add-double/2addr v2, v8

    double-to-float v2, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 220
    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 8

    .prologue
    const/16 v7, 0x1406

    const/16 v6, 0xbe2

    const/16 v5, 0xde1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 281
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 285
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x46040000    # 8448.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 287
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 288
    iget v0, p0, Lcom/amap/api/mapcore/z;->j:F

    sub-float v0, v3, v0

    invoke-interface {p1, v3, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 291
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 292
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 293
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 294
    invoke-interface {p1, v5, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 296
    const/4 v0, 0x3

    invoke-interface {p1, v0, v7, v4, p3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 297
    const/4 v0, 0x2

    invoke-interface {p1, v0, v7, v4, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 298
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-interface {p1, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 300
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 301
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 302
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 303
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method private p()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const-wide v6, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 124
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/z;->d:F

    float-to-double v0, v0

    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-object v4, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v4, v6

    .line 125
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    div-double/2addr v0, v2

    .line 126
    iget v2, p0, Lcom/amap/api/mapcore/z;->e:F

    float-to-double v2, v2

    const-wide v4, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v2, v4

    .line 128
    new-instance v4, Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    iget-object v6, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v8, p0, Lcom/amap/api/mapcore/z;->l:F

    sub-float v8, v12, v8

    float-to-double v8, v8

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    iget-object v8, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v10, p0, Lcom/amap/api/mapcore/z;->k:F

    float-to-double v10, v10

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    iget-object v7, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v7, p0, Lcom/amap/api/mapcore/z;->l:F

    float-to-double v10, v7

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    iget-object v7, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/mapcore/z;->k:F

    sub-float v7, v12, v7

    float-to-double v10, v7

    mul-double/2addr v0, v10

    add-double/2addr v0, v8

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    iput-object v4, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    .line 133
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->r()V

    goto :goto_0
.end method

.method private q()V
    .locals 14

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    .line 140
    iget-object v1, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    .line 142
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const/high16 v3, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/amap/api/mapcore/z;->l:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    iget-wide v8, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v10, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v3, p0, Lcom/amap/api/mapcore/z;->k:F

    float-to-double v8, v3

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v12, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    .line 147
    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-object v4, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v6, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/mapcore/z;->d:F

    .line 149
    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/z;->e:F

    .line 151
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->r()V

    goto :goto_0
.end method

.method private r()V
    .locals 39

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v2, :cond_0

    .line 208
    :goto_0
    return-void

    .line 157
    :cond_0
    const/16 v2, 0xc

    new-array v2, v2, [F

    .line 159
    new-instance v8, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 161
    new-instance v14, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v14}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 163
    new-instance v20, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct/range {v20 .. v20}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 165
    new-instance v26, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct/range {v26 .. v26}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v4, v4, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v6, v6, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v3 .. v8}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v9 .. v14}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    invoke-interface/range {v15 .. v20}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    invoke-interface/range {v21 .. v26}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 175
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/z;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 176
    iget v3, v14, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v4, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v34, v0

    .line 177
    iget v3, v14, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    move-object/from16 v0, v20

    iget v4, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v36, v0

    .line 178
    new-instance v29, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct/range {v29 .. v29}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 179
    iget v3, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/z;->k:F

    float-to-double v6, v3

    mul-double v6, v6, v34

    add-double/2addr v4, v6

    move-object/from16 v0, v29

    iput-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 180
    iget v3, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/amap/api/mapcore/z;->l:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    mul-double v6, v6, v36

    sub-double/2addr v4, v6

    move-object/from16 v0, v29

    iput-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    .line 181
    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    move-object/from16 v28, p0

    move-object/from16 v38, v8

    invoke-direct/range {v28 .. v38}, Lcom/amap/api/mapcore/z;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 182
    const-wide/16 v32, 0x0

    move-object/from16 v28, p0

    move-wide/from16 v30, v34

    move-object/from16 v38, v14

    invoke-direct/range {v28 .. v38}, Lcom/amap/api/mapcore/z;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/FPoint;)V

    move-object/from16 v28, p0

    move-wide/from16 v30, v34

    move-wide/from16 v32, v36

    move-object/from16 v38, v20

    .line 183
    invoke-direct/range {v28 .. v38}, Lcom/amap/api/mapcore/z;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 184
    const-wide/16 v30, 0x0

    move-object/from16 v28, p0

    move-wide/from16 v32, v36

    move-object/from16 v38, v26

    invoke-direct/range {v28 .. v38}, Lcom/amap/api/mapcore/z;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 187
    :cond_1
    const/4 v3, 0x0

    iget v4, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v4, v2, v3

    .line 188
    const/4 v3, 0x1

    iget v4, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v4, v2, v3

    .line 189
    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 191
    const/4 v3, 0x3

    iget v4, v14, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v4, v2, v3

    .line 192
    const/4 v3, 0x4

    iget v4, v14, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v4, v2, v3

    .line 193
    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 195
    const/4 v3, 0x6

    move-object/from16 v0, v20

    iget v4, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v4, v2, v3

    .line 196
    const/4 v3, 0x7

    move-object/from16 v0, v20

    iget v4, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v4, v2, v3

    .line 197
    const/16 v3, 0x8

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 199
    const/16 v3, 0x9

    move-object/from16 v0, v26

    iget v4, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v4, v2, v3

    .line 200
    const/16 v3, 0xa

    move-object/from16 v0, v26

    iget v4, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v4, v2, v3

    .line 201
    const/16 v3, 0xb

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/z;->n:Ljava/nio/FloatBuffer;

    if-nez v3, :cond_2

    .line 203
    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/mapcore/z;->n:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 205
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/z;->n:Ljava/nio/FloatBuffer;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/bk;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/mapcore/z;->n:Ljava/nio/FloatBuffer;

    goto/16 :goto_0
.end method

.method private s()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v1

    .line 228
    iget-object v2, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 229
    iget-object v3, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 230
    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 231
    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 233
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

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

    iput-object v0, p0, Lcom/amap/api/mapcore/z;->o:Ljava/nio/FloatBuffer;

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
    .line 73
    iput p1, p0, Lcom/amap/api/mapcore/z;->h:F

    .line 74
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->M()V

    .line 75
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 76
    return-void
.end method

.method public a(FF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 383
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Width must be non-negative"

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/au;->b(ZLjava/lang/Object;)V

    .line 385
    cmpl-float v0, p2, v4

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "Height must be non-negative"

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/au;->b(ZLjava/lang/Object;)V

    .line 387
    iget-boolean v0, p0, Lcom/amap/api/mapcore/z;->q:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/z;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/z;->e:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 388
    iput p1, p0, Lcom/amap/api/mapcore/z;->d:F

    .line 389
    iput p2, p0, Lcom/amap/api/mapcore/z;->e:F

    .line 390
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->p()V

    .line 395
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 396
    return-void

    :cond_0
    move v0, v2

    .line 383
    goto :goto_0

    :cond_1
    move v1, v2

    .line 385
    goto :goto_1

    .line 392
    :cond_2
    iput p1, p0, Lcom/amap/api/mapcore/z;->d:F

    .line 393
    iput p2, p0, Lcom/amap/api/mapcore/z;->e:F

    goto :goto_2
.end method

.method public a(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 459
    iput-object p1, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 460
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->s()V

    .line 461
    iget-boolean v0, p0, Lcom/amap/api/mapcore/z;->q:Z

    if-eqz v0, :cond_0

    .line 462
    iput-boolean v1, p0, Lcom/amap/api/mapcore/z;->q:Z

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 465
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    iput-object p1, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    .line 353
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->p()V

    .line 354
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 359
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 412
    iput-object p1, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    .line 413
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->q()V

    .line 414
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 418
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    iget-boolean v0, p0, Lcom/amap/api/mapcore/z;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_2

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/z;->q:Z

    if-nez v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 250
    iget v1, p0, Lcom/amap/api/mapcore/z;->p:I

    if-nez v1, :cond_7

    .line 251
    iget-object v1, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v1}, Lcom/amap/api/mapcore/aa;->K()I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/z;->p:I

    .line 252
    iget v1, p0, Lcom/amap/api/mapcore/z;->p:I

    if-nez v1, :cond_3

    .line 253
    new-array v1, v4, [I

    aput v3, v1, v3

    .line 254
    invoke-interface {p1, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 255
    aget v1, v1, v3

    iput v1, p0, Lcom/amap/api/mapcore/z;->p:I

    .line 260
    :cond_3
    :goto_1
    iget v1, p0, Lcom/amap/api/mapcore/z;->p:I

    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I

    .line 263
    :cond_4
    iput-boolean v4, p0, Lcom/amap/api/mapcore/z;->q:Z

    .line 265
    :cond_5
    iget v0, p0, Lcom/amap/api/mapcore/z;->d:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_6

    iget v0, p0, Lcom/amap/api/mapcore/z;->e:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    .line 267
    :cond_6
    iget v0, p0, Lcom/amap/api/mapcore/z;->p:I

    iget-object v1, p0, Lcom/amap/api/mapcore/z;->n:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/mapcore/z;->o:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amap/api/mapcore/z;->a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 269
    iput-boolean v4, p0, Lcom/amap/api/mapcore/z;->r:Z

    goto :goto_0

    .line 258
    :cond_7
    new-array v1, v4, [I

    iget v2, p0, Lcom/amap/api/mapcore/z;->p:I

    aput v2, v1, v3

    invoke-interface {p1, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/amap/api/mapcore/z;->i:Z

    .line 86
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 87
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 338
    iget-object v2, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v2, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v2}, Lcom/amap/api/mapcore/aa;->G()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v2

    .line 342
    if-nez v2, :cond_2

    move v0, v1

    .line 343
    goto :goto_0

    .line 345
    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLngBounds;->contains(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    .line 346
    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/LatLngBounds;->intersects(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/ai;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-interface {p1}, Lcom/amap/api/mapcore/ai;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/z;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 101
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
    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    iget v1, p0, Lcom/amap/api/mapcore/z;->p:I

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->f(I)V

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/z;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Ljava/lang/String;)Z

    .line 60
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 61
    return-void
.end method

.method public b(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 368
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Width must be non-negative"

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/au;->b(ZLjava/lang/Object;)V

    .line 370
    iget-boolean v0, p0, Lcom/amap/api/mapcore/z;->q:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/z;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 371
    iput p1, p0, Lcom/amap/api/mapcore/z;->d:F

    .line 372
    iput p1, p0, Lcom/amap/api/mapcore/z;->e:F

    .line 373
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->p()V

    .line 378
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 379
    return-void

    :cond_0
    move v0, v1

    .line 368
    goto :goto_0

    .line 375
    :cond_1
    iput p1, p0, Lcom/amap/api/mapcore/z;->d:F

    .line 376
    iput p1, p0, Lcom/amap/api/mapcore/z;->e:F

    goto :goto_1
.end method

.method public b(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 469
    iput p1, p0, Lcom/amap/api/mapcore/z;->k:F

    .line 470
    iput p2, p0, Lcom/amap/api/mapcore/z;->l:F

    .line 471
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 472
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
    .line 65
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "GroundOverlay"

    invoke-static {v0}, Lcom/amap/api/mapcore/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/z;->m:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->m:Ljava/lang/String;

    return-object v0
.end method

.method public c(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 427
    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 428
    iget-boolean v1, p0, Lcom/amap/api/mapcore/z;->q:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore/z;->g:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 429
    iput v0, p0, Lcom/amap/api/mapcore/z;->g:F

    .line 430
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->r()V

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 435
    return-void

    .line 432
    :cond_0
    iput v0, p0, Lcom/amap/api/mapcore/z;->g:F

    goto :goto_0
.end method

.method public d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/amap/api/mapcore/z;->h:F

    return v0
.end method

.method public d(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 444
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Transparency must be in the range [0..1]"

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/au;->b(ZLjava/lang/Object;)V

    .line 447
    iput p1, p0, Lcom/amap/api/mapcore/z;->j:F

    .line 448
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 449
    return-void

    :cond_0
    move v0, v1

    .line 444
    goto :goto_0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/amap/api/mapcore/z;->i:Z

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
    .line 106
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/z;->r:Z

    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->q()V

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->p()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/z;->r()V

    goto :goto_0
.end method

.method public h()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public i()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    iget v0, p0, Lcom/amap/api/mapcore/z;->d:F

    return v0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/z;->b()V

    .line 311
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/z;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->o:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/z;->o:Ljava/nio/FloatBuffer;

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->n:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->n:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/z;->n:Ljava/nio/FloatBuffer;

    .line 327
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/z;->c:Lcom/amap/api/maps/model/LatLng;

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    const-string v1, "GroundOverlayDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    const-string v0, "destroy erro"

    const-string v1, "GroundOverlayDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/amap/api/mapcore/z;->r:Z

    return v0
.end method

.method public l()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    iget v0, p0, Lcom/amap/api/mapcore/z;->e:F

    return v0
.end method

.method public m()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/amap/api/mapcore/z;->f:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method public n()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    iget v0, p0, Lcom/amap/api/mapcore/z;->g:F

    return v0
.end method

.method public o()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 453
    iget v0, p0, Lcom/amap/api/mapcore/z;->j:F

    return v0
.end method
