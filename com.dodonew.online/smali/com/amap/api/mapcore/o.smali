.class public Lcom/amap/api/mapcore/o;
.super Ljava/lang/Object;
.source "CameraUpdateFactoryDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/o$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/o$a;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:Lcom/amap/api/maps/model/CameraPosition;

.field i:Lcom/amap/api/maps/model/LatLngBounds;

.field j:I

.field k:I

.field l:I

.field m:Landroid/graphics/Point;

.field n:Z

.field o:Lcom/autonavi/amap/mapcore/IPoint;

.field p:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/amap/api/mapcore/o$a;->a:Lcom/amap/api/mapcore/o$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/o;->m:Landroid/graphics/Point;

    .line 49
    iput-boolean v1, p0, Lcom/amap/api/mapcore/o;->n:Z

    .line 59
    iput-boolean v1, p0, Lcom/amap/api/mapcore/o;->p:Z

    .line 13
    return-void
.end method

.method public static a()Lcom/amap/api/mapcore/o;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/amap/api/mapcore/o;

    invoke-direct {v0}, Lcom/amap/api/mapcore/o;-><init>()V

    .line 63
    return-object v0
.end method

.method public static a(F)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/amap/api/mapcore/o$a;->i:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 135
    iput p0, v0, Lcom/amap/api/mapcore/o;->d:F

    .line 136
    return-object v0
.end method

.method public static a(FF)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/amap/api/mapcore/o$a;->k:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 100
    iput p0, v0, Lcom/amap/api/mapcore/o;->b:F

    .line 101
    iput p1, v0, Lcom/amap/api/mapcore/o;->c:F

    .line 102
    return-object v0
.end method

.method public static a(FLandroid/graphics/Point;)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/amap/api/mapcore/o$a;->j:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 147
    iput p0, v0, Lcom/amap/api/mapcore/o;->e:F

    .line 148
    iput-object p1, v0, Lcom/amap/api/mapcore/o;->m:Landroid/graphics/Point;

    .line 149
    return-object v0
.end method

.method public static a(FLcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/amap/api/mapcore/o$a;->f:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 207
    iput p0, v0, Lcom/amap/api/mapcore/o;->g:F

    .line 208
    iput-object p1, v0, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    .line 209
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/amap/api/mapcore/o$a;->l:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 157
    iput-object p0, v0, Lcom/amap/api/mapcore/o;->h:Lcom/amap/api/maps/model/CameraPosition;

    .line 158
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/mapcore/o;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/amap/api/mapcore/o;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/mapcore/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/mapcore/o;
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/amap/api/mapcore/o;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/mapcore/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/mapcore/o;
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/amap/api/mapcore/o;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/mapcore/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 262
    sget-object v1, Lcom/amap/api/mapcore/o$a;->m:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 263
    iput-object p0, v0, Lcom/amap/api/mapcore/o;->i:Lcom/amap/api/maps/model/LatLngBounds;

    .line 264
    iput p1, v0, Lcom/amap/api/mapcore/o;->j:I

    .line 265
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLngBounds;III)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 272
    sget-object v1, Lcom/amap/api/mapcore/o$a;->n:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 273
    iput-object p0, v0, Lcom/amap/api/mapcore/o;->i:Lcom/amap/api/maps/model/LatLngBounds;

    .line 274
    iput p3, v0, Lcom/amap/api/mapcore/o;->j:I

    .line 275
    iput p1, v0, Lcom/amap/api/mapcore/o;->k:I

    .line 276
    iput p2, v0, Lcom/amap/api/mapcore/o;->l:I

    .line 277
    return-object v0
.end method

.method public static a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/amap/api/mapcore/o$a;->c:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 171
    iput-object p0, v0, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    .line 172
    return-object v0
.end method

.method static a(Lcom/autonavi/amap/mapcore/IPoint;FFF)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 250
    sget-object v1, Lcom/amap/api/mapcore/o$a;->o:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 251
    iput-object p0, v0, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    .line 252
    iput p1, v0, Lcom/amap/api/mapcore/o;->d:F

    .line 253
    iput p2, v0, Lcom/amap/api/mapcore/o;->g:F

    .line 254
    iput p3, v0, Lcom/amap/api/mapcore/o;->f:F

    .line 255
    return-object v0
.end method

.method public static b()Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/amap/api/mapcore/o$a;->b:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 70
    return-object v0
.end method

.method public static b(F)Lcom/amap/api/mapcore/o;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/o;->a(FLandroid/graphics/Point;)Lcom/amap/api/mapcore/o;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/amap/api/mapcore/o$a;->h:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 92
    return-object v0
.end method

.method public static c(F)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/amap/api/mapcore/o$a;->d:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 185
    iput p0, v0, Lcom/amap/api/mapcore/o;->f:F

    .line 186
    return-object v0
.end method

.method public static d(F)Lcom/amap/api/mapcore/o;
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/amap/api/mapcore/o$a;->e:Lcom/amap/api/mapcore/o$a;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 199
    iput p0, v0, Lcom/amap/api/mapcore/o;->g:F

    .line 200
    return-object v0
.end method
