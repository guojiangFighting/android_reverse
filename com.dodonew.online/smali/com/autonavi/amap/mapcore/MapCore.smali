.class public Lcom/autonavi/amap/mapcore/MapCore;
.super Ljava/lang/Object;
.source "MapCore.java"


# static fields
.field public static final AM_DATA_BMP_BASEMAP:I = 0x2

.field public static final AM_DATA_GEO_BUILDING:I = 0x1

.field public static final AM_DATA_GUIDE:I = 0xb

.field public static final AM_DATA_INDOOR:I = 0xa

.field public static final AM_DATA_MODEL:I = 0x6

.field public static final AM_DATA_POI:I = 0x8

.field public static final AM_DATA_ROADMAP:I = 0x0

.field public static final AM_DATA_SATELLITE:I = 0x3

.field public static final AM_DATA_SCENIC_WIDGET:I = 0x65

.field public static final AM_DATA_SCREEN:I = 0x5

.field public static final AM_DATA_STANDARD:I = 0x7

.field public static final AM_DATA_VEC_TMC:I = 0x4

.field public static final AM_DATA_VERSION:I = 0x9

.field public static final MAPRENDER_BASEMAPBEGIN:I = 0x1

.field public static final MAPRENDER_BUILDINGBEGIN:I = 0x2

.field public static final MAPRENDER_ENTER:I = 0x0

.field public static final MAPRENDER_LABELSBEGIN:I = 0x3

.field public static final MAPRENDER_NOMORENEEDRENDER:I = 0x5

.field public static final MAPRENDER_RENDEROVER:I = 0x4

.field public static final TEXTURE_BACKGROUND:I = 0x1

.field public static final TEXTURE_ICON:I = 0x0

.field public static final TEXTURE_RAILWAY:I = 0x8

.field public static final TEXTURE_ROADARROW:I = 0x2

.field public static final TEXTURE_ROADROUND:I = 0x3

.field public static final TEXTURE_TMC_BLACK:I = 0x7

.field public static final TEXTURE_TMC_GREEN:I = 0x6

.field public static final TEXTURE_TMC_RED:I = 0x4

.field public static final TEXTURE_TMC_YELLOW:I = 0x5


# instance fields
.field mContext:Landroid/content/Context;

.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

.field native_instance:J

.field private textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

.field tmp_3072bytes_data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    :try_start_0
    const-string v0, "gdinamapv4sdk752"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    const-string v0, "gdinamapv4sdk752ex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    .line 51
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    .line 54
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 68
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->checkDir()V

    .line 70
    new-instance v0, Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 71
    const/16 v0, 0xc00

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    .line 73
    return-void
.end method

.method private OnMapCharsWidthsRequired([III)[B
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapCharsWidthsRequired(Lcom/autonavi/amap/mapcore/MapCore;[III)[B

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OnMapDestory()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapDestory(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 307
    :cond_0
    return-void
.end method

.method private OnMapProcessEvent()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapProcessEvent(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 301
    :cond_0
    return-void
.end method

.method private OnMapReferencechanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapReferencechanged(Lcom/autonavi/amap/mapcore/MapCore;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method private OnMapSufaceChanged(II)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapSufaceChanged(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;II)V

    .line 286
    :cond_0
    return-void
.end method

.method private OnMapSurfaceCreate()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapSurfaceCreate(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 279
    :cond_0
    return-void
.end method

.method private OnMapSurfaceRenderer(I)V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0, p1}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V

    .line 294
    :cond_0
    return-void
.end method

.method private static native nativeAddPoiFilter(JIIIFFLjava/lang/String;)V
.end method

.method private static native nativeCanStopRenderMap(J)Z
.end method

.method private static native nativeChangeMapEnv(JLjava/lang/String;)V
.end method

.method private static native nativeClearPoiFilter(J)V
.end method

.method private static native nativeDestroy(JLcom/autonavi/amap/mapcore/MapCore;)V
.end method

.method private static native nativeGetMapStateInstance(J)I
.end method

.method private static native nativeGetMapstate(J)J
.end method

.method private static native nativeGetScreenGrids(J[BI)V
.end method

.method private static native nativeGetSelectedMapPois(JIII[B)I
.end method

.method private static native nativeNewInstance(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native nativePutCharbitmap(JI[B)V
.end method

.method private static native nativePutMapdata(JI[B)I
.end method

.method private static native nativePutMapdata(JI[BI)I
.end method

.method private static native nativeRemovePoiFilter(JLjava/lang/String;)V
.end method

.method private static native nativeSelectMapPois(JIII[B)I
.end method

.method private static native nativeSetCityBound(J[B)V
.end method

.method private static native nativeSetIndoorBuildingToBeActive(JLjava/lang/String;ILjava/lang/String;)V
.end method

.method private static native nativeSetInternalTexture(J[BI)V
.end method

.method private static native nativeSetInternaltexture(J[BI)V
.end method

.method private static native nativeSetMapstate(JJ)V
.end method

.method private static native nativeSetParmater(JIIIII)V
.end method

.method private static native nativeSetStyleData(J[BII)V
.end method

.method private static native nativeSetparameter(JIIIII)V
.end method

.method private static native nativeSurfaceChange(JLcom/autonavi/amap/mapcore/MapCore;II)V
.end method

.method private static native nativeSurfaceCreate(JLcom/autonavi/amap/mapcore/MapCore;)V
.end method

.method private static native nativeSurfaceRenderMap(JLcom/autonavi/amap/mapcore/MapCore;)V
.end method


# virtual methods
.method public GetSelectedMapPoi(III)Lcom/autonavi/amap/mapcore/SelectedMapPoi;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 205
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 206
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 207
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->nativeGetSelectedMapPois(JIII[B)I

    move-result v0

    .line 210
    if-nez v0, :cond_0

    move-object v0, v6

    .line 256
    :goto_0
    return-object v0

    .line 212
    :cond_0
    if-lez v0, :cond_4

    .line 213
    new-instance v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/SelectedMapPoi;-><init>()V

    .line 215
    invoke-static {v5, v7}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->winx:I

    .line 216
    const/4 v1, 0x4

    .line 217
    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->winy:I

    .line 218
    const/16 v1, 0x8

    .line 219
    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->mapx:I

    .line 220
    const/16 v1, 0xc

    .line 221
    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->mapy:I

    .line 222
    const/16 v1, 0x10

    .line 223
    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->iconXmin:I

    .line 224
    const/16 v1, 0x14

    .line 225
    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->iconXmax:I

    .line 226
    const/16 v1, 0x18

    .line 227
    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->iconYmin:I

    .line 228
    const/16 v1, 0x1c

    .line 229
    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->iconYmax:I

    .line 230
    const/16 v2, 0x20

    .line 231
    const/16 v1, 0x21

    aget-byte v3, v5, v2

    .line 232
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    move v1, v7

    .line 233
    :goto_1
    if-ge v1, v3, :cond_1

    .line 234
    invoke-static {v5, v2}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    move-result v6

    int-to-char v6, v6

    .line 235
    add-int/lit8 v2, v2, 0x2

    .line 236
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->name:Ljava/lang/String;

    .line 240
    add-int/lit8 v1, v2, 0x1

    aget-byte v3, v5, v2

    .line 241
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    move v1, v7

    .line 242
    :goto_2
    if-ge v1, v3, :cond_2

    .line 243
    invoke-static {v5, v2}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    move-result v6

    int-to-char v6, v6

    .line 244
    add-int/lit8 v2, v2, 0x2

    .line 245
    if-nez v6, :cond_3

    .line 250
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->poiid:Ljava/lang/String;

    goto/16 :goto_0

    .line 248
    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v6

    .line 256
    goto/16 :goto_0
.end method

.method public OnMapDataRequired(I[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x6f

    .line 310
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MapDataRequire  datasourceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MapCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapDataRequired(Lcom/autonavi/amap/mapcore/MapCore;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public OnMapLabelsRequired([II)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapLabelsRequired(Lcom/autonavi/amap/mapcore/MapCore;[II)V

    .line 323
    :cond_0
    return-void
.end method

.method public canStopRenderMap()Z
    .locals 4

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 267
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->nativeCanStopRenderMap(J)Z

    move-result v0

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 361
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 362
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeDestroy(JLcom/autonavi/amap/mapcore/MapCore;)V

    .line 363
    iput-wide v4, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    .line 364
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 366
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    .line 368
    :cond_0
    return-void
.end method

.method public drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 117
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSurfaceRenderMap(JLcom/autonavi/amap/mapcore/MapCore;)V

    .line 119
    :cond_0
    return-void
.end method

.method public fillCurGridListWithDataType(Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0xc00

    const/4 v2, 0x0

    .line 372
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 373
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    invoke-static {v0, v1, v3, p2}, Lcom/autonavi/amap/mapcore/MapCore;->nativeGetScreenGrids(J[BI)V

    .line 375
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    const/4 v0, 0x1

    aget-byte v4, v1, v2

    .line 376
    if-lez v4, :cond_0

    const/16 v1, 0x64

    if-gt v4, v1, :cond_0

    if-nez p1, :cond_1

    .line 403
    :cond_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    move v3, v0

    .line 383
    :goto_0
    if-ge v1, v4, :cond_0

    if-ge v3, v7, :cond_0

    .line 384
    iget-object v5, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v5, v3

    .line 385
    if-lez v3, :cond_2

    const/16 v5, 0x14

    if-gt v3, v5, :cond_2

    add-int v5, v0, v3

    if-gt v5, v7, :cond_2

    .line 386
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    invoke-direct {v5, v6, v0, v3}, Ljava/lang/String;-><init>([BII)V

    .line 387
    add-int/2addr v0, v3

    .line 388
    const/16 v3, 0xa

    if-ne p2, v3, :cond_3

    .line 389
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    invoke-static {v3, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    move-result v3

    .line 391
    add-int/lit8 v0, v0, 0x2

    .line 392
    add-int/lit8 v0, v0, 0x1

    .line 393
    new-instance v6, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-direct {v6, v5, p2, v3, v2}, Lcom/autonavi/amap/mapcore/MapSourceGridData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_0

    .line 396
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 397
    new-instance v3, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-direct {v3, v5, p2}, Lcom/autonavi/amap/mapcore/MapSourceGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInstanceHandle()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    return-wide v0
.end method

.method public getLabelBuffer(III[B)I
    .locals 6

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 199
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSelectMapPois(JIII[B)I

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;
    .locals 4

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 142
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->nativeGetMapstate(J)J

    move-result-wide v2

    .line 143
    new-instance v0, Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-direct {v0, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(J)V

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMapEngineValid()Z
    .locals 4

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newMap()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->checkDir()V

    .line 77
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getBaseMapPath()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->getFontVersion()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->nativeNewInstance(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    .line 83
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new Map instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public onIndoorBuildingActivity([B)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1}, Lcom/autonavi/amap/mapcore/IMapCallback;->onIndoorBuildingActivity(Lcom/autonavi/amap/mapcore/MapCore;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onIndoorDataRequired(I[Ljava/lang/String;[I[I)V
    .locals 6

    .prologue
    .line 352
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/IMapCallback;->onIndoorDataRequired(Lcom/autonavi/amap/mapcore/MapCore;I[Ljava/lang/String;[I[I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putCharbitmap(I[B)V
    .locals 4

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 261
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->nativePutCharbitmap(JI[B)V

    .line 263
    :cond_0
    return-void
.end method

.method public putMapData([BIIII)Z
    .locals 7

    .prologue
    const/16 v6, 0x6f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    .line 174
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 175
    sget-object v2, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " putMapData start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    array-length v2, p1

    if-ne v2, p3, :cond_3

    if-nez p2, :cond_3

    .line 179
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v2, v3, p4, p1}, Lcom/autonavi/amap/mapcore/MapCore;->nativePutMapdata(JI[B)I

    move-result v2

    if-lez v2, :cond_2

    .line 187
    :cond_0
    :goto_0
    sget-object v1, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " putMapData finish state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/IMapCallback;->requestRender()V

    .line 193
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 179
    goto :goto_0

    .line 182
    :cond_3
    new-array v2, p3, [B

    .line 183
    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v4, v5, p4, v2}, Lcom/autonavi/amap/mapcore/MapCore;->nativePutMapdata(JI[B)I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public setGL(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 93
    return-void
.end method

.method public setIndoorBuildingToBeActive(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetIndoorBuildingToBeActive(JLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setInternaltexture([BI)V
    .locals 4

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 132
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetInternaltexture(J[BI)V

    .line 134
    :cond_0
    return-void
.end method

.method public setMapCallback(Lcom/autonavi/amap/mapcore/IMapCallback;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    .line 97
    return-void
.end method

.method public setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V
    .locals 4

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 150
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getInstanceHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetMapstate(JJ)V

    .line 152
    :cond_0
    return-void
.end method

.method public setParameter(IIIII)V
    .locals 7

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 157
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetparameter(JIIIII)V

    .line 160
    :cond_0
    return-void
.end method

.method public setStyleData([BII)V
    .locals 4

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 123
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 124
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetStyleData(J[BII)V

    .line 128
    :cond_0
    return-void
.end method

.method public surfaceChange(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 111
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p0, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSurfaceChange(JLcom/autonavi/amap/mapcore/MapCore;II)V

    .line 113
    :cond_0
    return-void
.end method

.method public surfaceCreate(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSurfaceCreate(JLcom/autonavi/amap/mapcore/MapCore;)V

    .line 107
    :cond_0
    return-void
.end method
