.class Lcom/amap/api/mapcore/ba;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/aa;

.field private b:Lcom/amap/api/maps/model/Marker;

.field private c:Lcom/amap/api/mapcore/ac;

.field private d:Lcom/amap/api/maps/model/MyLocationStyle;

.field private e:Lcom/amap/api/maps/model/LatLng;

.field private f:D

.field private g:Landroid/content/Context;

.field private h:Lcom/amap/api/mapcore/bj;

.field private i:I

.field private j:Z

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Z


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/aa;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/ba;->i:I

    .line 35
    iput-boolean v1, p0, Lcom/amap/api/mapcore/ba;->j:Z

    .line 36
    const-string v0, "location_map_gps_locked.png"

    iput-object v0, p0, Lcom/amap/api/mapcore/ba;->k:Ljava/lang/String;

    .line 37
    const-string v0, "location_map_gps_3d.png"

    iput-object v0, p0, Lcom/amap/api/mapcore/ba;->l:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/amap/api/mapcore/ba;->m:Z

    .line 41
    iput-object p2, p0, Lcom/amap/api/mapcore/ba;->g:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lcom/amap/api/mapcore/ba;->a:Lcom/amap/api/mapcore/aa;

    .line 43
    new-instance v0, Lcom/amap/api/mapcore/bj;

    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/mapcore/bj;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    .line 44
    return-void
.end method

.method private b(F)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->a:Lcom/amap/api/mapcore/aa;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->a:Lcom/amap/api/mapcore/aa;

    invoke-static {p1}, Lcom/amap/api/mapcore/o;->c(F)Lcom/amap/api/mapcore/o;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/mapcore/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/location/Location;)V
    .locals 3

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 195
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    .line 197
    rem-float/2addr v0, v2

    .line 198
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 199
    sub-float/2addr v0, v2

    .line 202
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 205
    :cond_1
    return-void

    .line 200
    :cond_2
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 201
    add-float/2addr v0, v2

    goto :goto_0
.end method

.method private c(F)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->a:Lcom/amap/api/mapcore/aa;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->a:Lcom/amap/api/mapcore/aa;

    invoke-static {p1}, Lcom/amap/api/mapcore/o;->d(F)Lcom/amap/api/mapcore/o;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/mapcore/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/ba;->c(F)V

    .line 98
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bj;->b()V

    .line 99
    iget-boolean v0, p0, Lcom/amap/api/mapcore/ba;->m:Z

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    const-string v1, "location_map_gps_locked.png"

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    .line 103
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/ba;->b(F)V

    .line 105
    :cond_1
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/ba;->c(F)V

    .line 110
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bj;->b()V

    .line 111
    iget-boolean v0, p0, Lcom/amap/api/mapcore/ba;->m:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    const-string v1, "location_map_gps_locked.png"

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    .line 115
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/ba;->b(F)V

    .line 118
    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 123
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bj;->a()V

    .line 124
    iget-boolean v0, p0, Lcom/amap/api/mapcore/ba;->m:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    const-string v1, "location_map_gps_3d.png"

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->a:Lcom/amap/api/mapcore/aa;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lcom/amap/api/mapcore/o;->a(F)Lcom/amap/api/mapcore/o;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/mapcore/o;)V

    .line 130
    const/high16 v0, 0x42340000    # 45.0f

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/ba;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 208
    iget v0, p0, Lcom/amap/api/mapcore/ba;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/ba;->j:Z

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 212
    :cond_0
    :try_start_0
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 214
    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->a:Lcom/amap/api/mapcore/aa;

    invoke-static {v0}, Lcom/amap/api/mapcore/o;->a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/mapcore/o;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/aa;->b(Lcom/amap/api/mapcore/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v1, "MyLocationOverlay"

    const-string v2, "locaitonFollow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/ba;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 224
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    const-string v1, "location_map_gps_locked.png"

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 225
    invoke-direct {p0}, Lcom/amap/api/mapcore/ba;->m()V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/ba;->m:Z

    .line 228
    invoke-direct {p0}, Lcom/amap/api/mapcore/ba;->m()V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 241
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    if-eqz v0, :cond_0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->a:Lcom/amap/api/mapcore/aa;

    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    invoke-interface {v1}, Lcom/amap/api/mapcore/ac;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    iput-object v3, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    .line 253
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->destroy()V

    .line 254
    iput-object v3, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    .line 255
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore/bj;->a(Lcom/amap/api/maps/model/Marker;)V

    .line 257
    :cond_1
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string v1, "MyLocationOverlay"

    const-string v2, "locationIconRemove"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private m()V
    .locals 8

    .prologue
    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->a:Lcom/amap/api/mapcore/aa;

    new-instance v1, Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/CircleOptions;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/ba;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 276
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->strokeWidth(F)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/ba;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 277
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->fillColor(I)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/ba;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 278
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->strokeColor(I)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 279
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->center(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->zIndex(F)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    .line 275
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/mapcore/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    .line 280
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->e:Lcom/amap/api/maps/model/LatLng;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ac;->a(Lcom/amap/api/maps/model/LatLng;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    iget-wide v2, p0, Lcom/amap/api/mapcore/ba;->f:D

    invoke-interface {v0, v2, v3}, Lcom/amap/api/mapcore/ac;->a(D)V

    .line 284
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->a:Lcom/amap/api/mapcore/aa;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/ba;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 285
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorU()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/ba;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorV()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/ba;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 286
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 287
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    .line 284
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    .line 288
    iget v0, p0, Lcom/amap/api/mapcore/ba;->i:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/ba;->a(I)V

    .line 289
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->e:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 291
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bj;->a(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    const-string v1, "MyLocationOverlay"

    const-string v2, "myLocStyle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bj;->b()V

    .line 86
    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 304
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 62
    iput p1, p0, Lcom/amap/api/mapcore/ba;->i:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/ba;->j:Z

    .line 64
    iget v0, p0, Lcom/amap/api/mapcore/ba;->i:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/ba;->g()V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/ba;->h()V

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/ba;->i()V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 161
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 165
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/mapcore/ba;->e:Lcom/amap/api/maps/model/LatLng;

    .line 167
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/ba;->f:D

    .line 168
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    if-nez v0, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/amap/api/mapcore/ba;->k()V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->e:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->e:Lcom/amap/api/maps/model/LatLng;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/ac;->a(Lcom/amap/api/maps/model/LatLng;)V

    .line 177
    iget-wide v0, p0, Lcom/amap/api/mapcore/ba;->f:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    iget-wide v2, p0, Lcom/amap/api/mapcore/ba;->f:D

    invoke-interface {v0, v2, v3}, Lcom/amap/api/mapcore/ac;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/ba;->j()V

    .line 185
    iget v0, p0, Lcom/amap/api/mapcore/ba;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 186
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/ba;->b(Landroid/location/Location;)V

    .line 189
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/ba;->j:Z

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "MyLocationOverlay"

    const-string v2, "setCentAndRadius"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/ba;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 49
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/ba;->l()V

    .line 53
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    iget-object v1, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bj;->a(Lcom/amap/api/maps/model/Marker;)V

    .line 54
    invoke-direct {p0}, Lcom/amap/api/mapcore/ba;->k()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "MyLocationOverlay"

    const-string v2, "setMyLocationStyle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/amap/api/mapcore/ba;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bj;->a()V

    .line 93
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/amap/api/mapcore/ba;->l()V

    .line 234
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bj;->b()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/ba;->h:Lcom/amap/api/mapcore/bj;

    .line 238
    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ac;->c()Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/amap/api/mapcore/ba;->c:Lcom/amap/api/mapcore/ac;

    .line 322
    iput-object v0, p0, Lcom/amap/api/mapcore/ba;->b:Lcom/amap/api/maps/model/Marker;

    .line 323
    return-void
.end method
