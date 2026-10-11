.class Lcom/amap/api/mapcore/p;
.super Ljava/lang/Object;
.source "CircleDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/ac;


# static fields
.field private static m:F

.field private static n:I

.field private static o:I


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/amap/api/mapcore/aa;

.field private j:Ljava/nio/FloatBuffer;

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const v0, 0x4c18dfc2    # 4.0075016E7f

    sput v0, Lcom/amap/api/mapcore/p;->m:F

    .line 262
    const/16 v0, 0x100

    sput v0, Lcom/amap/api/mapcore/p;->n:I

    .line 263
    const/16 v0, 0x14

    sput v0, Lcom/amap/api/mapcore/p;->o:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/aa;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/p;->a:Lcom/amap/api/maps/model/LatLng;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/p;->b:D

    .line 22
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/p;->c:F

    .line 23
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/mapcore/p;->d:I

    .line 24
    iput v2, p0, Lcom/amap/api/mapcore/p;->e:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/p;->f:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/p;->g:Z

    .line 30
    iput v2, p0, Lcom/amap/api/mapcore/p;->k:I

    .line 31
    iput-boolean v2, p0, Lcom/amap/api/mapcore/p;->l:Z

    .line 35
    iput-object p1, p0, Lcom/amap/api/mapcore/p;->i:Lcom/amap/api/mapcore/aa;

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/p;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/p;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "CircleDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(D)F
    .locals 5

    .prologue
    .line 269
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p1

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sget v2, Lcom/amap/api/mapcore/p;->m:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    sget v2, Lcom/amap/api/mapcore/p;->n:I

    sget v3, Lcom/amap/api/mapcore/p;->o:I

    shl-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private c(D)D
    .locals 5

    .prologue
    .line 273
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/p;->b(D)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    iput-wide p1, p0, Lcom/amap/api/mapcore/p;->b:D

    .line 221
    invoke-virtual {p0}, Lcom/amap/api/mapcore/p;->h()V

    .line 222
    return-void
.end method

.method public a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iput p1, p0, Lcom/amap/api/mapcore/p;->f:F

    .line 64
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->i:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->M()V

    .line 65
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->i:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 66
    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    iput p1, p0, Lcom/amap/api/mapcore/p;->d:I

    .line 243
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lcom/amap/api/mapcore/p;->a:Lcom/amap/api/maps/model/LatLng;

    .line 210
    invoke-virtual {p0}, Lcom/amap/api/mapcore/p;->h()V

    .line 211
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
    .line 184
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->a:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/p;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/p;->g:Z

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/p;->k:I

    if-nez v0, :cond_3

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/p;->g()V

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/p;->k:I

    if-lez v0, :cond_4

    .line 192
    iget v1, p0, Lcom/amap/api/mapcore/p;->e:I

    iget v2, p0, Lcom/amap/api/mapcore/p;->d:I

    iget-object v3, p0, Lcom/amap/api/mapcore/p;->j:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/amap/api/mapcore/p;->c:F

    iget v5, p0, Lcom/amap/api/mapcore/p;->k:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/t;->b(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    .line 196
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/p;->l:Z

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
    .line 75
    iput-boolean p1, p0, Lcom/amap/api/mapcore/p;->g:Z

    .line 76
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->i:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 77
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 45
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
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-interface {p1}, Lcom/amap/api/mapcore/ai;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x1

    .line 91
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
    .line 49
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->i:Lcom/amap/api/mapcore/aa;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Ljava/lang/String;)Z

    .line 50
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->i:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 51
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
    .line 231
    iput p1, p0, Lcom/amap/api/mapcore/p;->c:F

    .line 232
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->i:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 233
    return-void
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    iput p1, p0, Lcom/amap/api/mapcore/p;->e:I

    .line 253
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->i:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 254
    return-void
.end method

.method public b(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/amap/api/mapcore/p;->b:D

    iget-object v2, p0, Lcom/amap/api/mapcore/p;->a:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v2, p1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    const-string v0, "Circle"

    invoke-static {v0}, Lcom/amap/api/mapcore/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/p;->h:Ljava/lang/String;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget v0, p0, Lcom/amap/api/mapcore/p;->f:F

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
    .line 81
    iget-boolean v0, p0, Lcom/amap/api/mapcore/p;->g:Z

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
    .line 96
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
    const/16 v14, 0x168

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/amap/api/mapcore/p;->l:Z

    .line 107
    iget-object v1, p0, Lcom/amap/api/mapcore/p;->a:Lcom/amap/api/maps/model/LatLng;

    .line 111
    if-eqz v1, :cond_1

    .line 115
    new-array v2, v14, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 117
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x3

    new-array v3, v3, [F

    .line 118
    iget-object v4, p0, Lcom/amap/api/mapcore/p;->a:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v4, v5}, Lcom/amap/api/mapcore/p;->c(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/api/mapcore/p;->b:D

    mul-double/2addr v4, v6

    .line 120
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 121
    iget-object v7, p0, Lcom/amap/api/mapcore/p;->i:Lcom/amap/api/mapcore/aa;

    invoke-interface {v7}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v7

    .line 122
    iget-wide v8, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9, v10, v11, v6}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 123
    :goto_0
    if-ge v0, v14, :cond_0

    .line 124
    int-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    .line 125
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v4

    .line 126
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    .line 128
    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v12, v1

    add-double/2addr v10, v12

    double-to-int v1, v10

    .line 129
    iget v10, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v10

    add-double/2addr v8, v10

    double-to-int v8, v8

    .line 130
    new-instance v9, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v9}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 131
    invoke-virtual {v7, v1, v8, v9}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 132
    aput-object v9, v2, v0

    .line 134
    mul-int/lit8 v1, v0, 0x3

    aget-object v8, v2, v0

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v8, v3, v1

    .line 135
    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x1

    aget-object v8, v2, v0

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v8, v3, v1

    .line 136
    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x2

    const/4 v8, 0x0

    aput v8, v3, v1

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    array-length v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/p;->k:I

    .line 152
    invoke-static {v3}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/p;->j:Ljava/nio/FloatBuffer;

    .line 159
    :cond_1
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iput v1, p0, Lcom/amap/api/mapcore/p;->k:I

    .line 201
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->i:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 205
    return-void
.end method

.method public i()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 282
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/p;->a:Lcom/amap/api/maps/model/LatLng;

    .line 284
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/amap/api/mapcore/p;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/p;->j:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string v1, "CircleDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 291
    const-string v0, "destroy erro"

    const-string v1, "CircleDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/amap/api/mapcore/p;->l:Z

    return v0
.end method

.method public l()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/amap/api/mapcore/p;->b:D

    return-wide v0
.end method

.method public m()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    iget v0, p0, Lcom/amap/api/mapcore/p;->c:F

    return v0
.end method

.method public n()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    iget v0, p0, Lcom/amap/api/mapcore/p;->d:I

    return v0
.end method

.method public o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    iget v0, p0, Lcom/amap/api/mapcore/p;->e:I

    return v0
.end method
