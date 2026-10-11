.class public Lcom/autonavi/amap/mapcore/GLMapResManager;
.super Ljava/lang/Object;
.source "GLMapResManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;,
        Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;,
        Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;
    }
.end annotation


# static fields
.field private static final AM_DATA_FORMAT_TYPE_GZIP:I = 0x1

.field public static final AM_STYLEDATA_INDOOR:I = 0x1

.field private static final AM_STYLE_DATA_TYPE_BASE_MAP:I = 0x0

.field public static final TEXTURE_BACKGROUND:I = 0x1

.field public static final TEXTURE_BIG_ICON:I = 0x14

.field public static final TEXTURE_CHANGDUAN:I = 0xa

.field public static final TEXTURE_GJ_GAOSU_GUIDE_BOARD:I = 0xc

.field public static final TEXTURE_GUODAO_GUIDE_BOARD:I = 0xe

.field public static final TEXTURE_HK_GAOSU_GUIDE_BOARD:I = 0xb

.field public static final TEXTURE_ICON:I = 0x0

.field public static final TEXTURE_INDOORICON:I = 0x1f

.field public static final TEXTURE_RAILWAY:I = 0x8

.field public static final TEXTURE_ROADARROW:I = 0x2

.field public static final TEXTURE_ROADROUND:I = 0x3

.field public static final TEXTURE_SHENGDAO_GUIDE_BOARD:I = 0xf

.field public static final TEXTURE_SHENG_GAOSU_GUIDE_BOARD:I = 0xd

.field public static final TEXTURE_TIANQIAO:I = 0x9

.field public static final TEXTURE_TMC_BLACK:I = 0x7

.field public static final TEXTURE_TMC_GRAY:I = 0x12

.field public static final TEXTURE_TMC_GREEN:I = 0x6

.field public static final TEXTURE_TMC_RED:I = 0x4

.field public static final TEXTURE_TMC_YELLOW:I = 0x5

.field public static final TEXTURE_TOP_COVER:I = 0x29

.field public static final TEXTURE_XIANDAO_GUIDE_BOARD:I = 0x10

.field public static final TEXTURE_XIANGDAO_GUIDE_BOARD:I = 0x11

.field private static final iconName1:Ljava/lang/String; = "icons_1_7_1444880368.data"

.field private static final iconName2:Ljava/lang/String; = "icons_2_7_1445580283.data"

.field private static final iconName3:Ljava/lang/String; = "icons_3_7_1444880372.data"

.field private static final iconName4:Ljava/lang/String; = "icons_4_6_1437480571.data"

.field private static final iconName50:Ljava/lang/String; = "icons_50_7_1444880375.data"

.field private static final styleName1:Ljava/lang/String; = "style_1_7_1445219169.data"

.field private static final styleName2:Ljava/lang/String; = "style_1_7_1445219169.data"

.field private static final styleName3:Ljava/lang/String; = "style_3_7_1445827513.data"

.field private static final styleName4:Ljava/lang/String; = "style_4_7_1445391691.data"

.field private static final styleName5:Ljava/lang/String; = "style_5_7_1445391719.data"

.field private static final styleName50:Ljava/lang/String; = "style_50_7_1445670996.data"

.field private static final styleName6:Ljava/lang/String; = "style_6_7_1445325996.data"

.field private static final styleName7:Ljava/lang/String; = "style_6_7_1445325996.data"

.field private static final styleName8:Ljava/lang/String; = "style_8_7_1445391734.data"

.field private static final styleName9:Ljava/lang/String; = "style_9_7_1445327958.data"


# instance fields
.field public isBigIcon:Z

.field private mContext:Landroid/content/Context;

.field private mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

.field private mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->isBigIcon:Z

    .line 61
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 62
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    .line 94
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 95
    iput-object p2, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/amap/mapcore/GLMapResManager;)Lcom/autonavi/amap/mapcore/MapCore;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    return-object v0
.end method

.method private getBigIconName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "icons_1_7_1444880368.data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->isBigIcon:Z

    .line 165
    const-string v0, "icons_4_6_1437480571.data"

    .line 168
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->isBigIcon:Z

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIconName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 242
    const-string v0, ""

    .line 243
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    if-nez v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->X()Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->Y()Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    move-result-object v2

    .line 248
    sget-object v3, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->DAY:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    if-ne v3, v1, :cond_3

    .line 249
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    if-ne v0, v2, :cond_2

    .line 250
    const-string v0, "icons_3_7_1444880372.data"

    goto :goto_0

    .line 252
    :cond_2
    const-string v0, "icons_1_7_1444880368.data"

    goto :goto_0

    .line 253
    :cond_3
    sget-object v3, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->NIGHT:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    if-ne v3, v1, :cond_0

    .line 254
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    if-ne v0, v2, :cond_4

    .line 255
    const-string v0, "icons_3_7_1444880372.data"

    goto :goto_0

    .line 257
    :cond_4
    const-string v0, "icons_2_7_1445580283.data"

    goto :goto_0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 172
    const-string v0, ""

    .line 174
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->X()Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->Y()Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    move-result-object v2

    .line 179
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z()Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    move-result-object v3

    .line 181
    sget-object v4, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->DAY:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    if-ne v4, v1, :cond_c

    .line 182
    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->NORAML:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    if-ne v1, v2, :cond_6

    .line 183
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NAVI_CAR:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_2

    .line 184
    const-string v0, "style_4_7_1445391691.data"

    goto :goto_0

    .line 185
    :cond_2
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->PREVIEW_BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_3

    .line 186
    const-string v0, "style_6_7_1445325996.data"

    goto :goto_0

    .line 187
    :cond_3
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->PREVIEW_CAR:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_4

    .line 188
    const-string v0, "style_8_7_1445391734.data"

    goto :goto_0

    .line 189
    :cond_4
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NAVI_BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_5

    .line 190
    const-string v0, "style_9_7_1445327958.data"

    goto :goto_0

    .line 192
    :cond_5
    const-string v0, "style_1_7_1445219169.data"

    goto :goto_0

    .line 194
    :cond_6
    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->SATELLITE:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    if-ne v1, v2, :cond_9

    .line 195
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NAVI_CAR:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_7

    .line 196
    const-string v0, "style_4_7_1445391691.data"

    goto :goto_0

    .line 197
    :cond_7
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->PREVIEW_BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_8

    .line 198
    const-string v0, "style_6_7_1445325996.data"

    goto :goto_0

    .line 200
    :cond_8
    const-string v0, "style_3_7_1445827513.data"

    goto :goto_0

    .line 202
    :cond_9
    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    if-ne v1, v2, :cond_0

    .line 203
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NAVI_CAR:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_a

    .line 204
    const-string v0, "style_4_7_1445391691.data"

    goto :goto_0

    .line 205
    :cond_a
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->PREVIEW_BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_b

    .line 206
    const-string v0, "style_6_7_1445325996.data"

    goto :goto_0

    .line 208
    :cond_b
    const-string v0, "style_6_7_1445325996.data"

    goto :goto_0

    .line 211
    :cond_c
    sget-object v4, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->NIGHT:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    if-ne v4, v1, :cond_0

    .line 212
    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->NORAML:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    if-ne v1, v2, :cond_f

    .line 213
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NAVI_CAR:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_d

    .line 214
    const-string v0, "style_5_7_1445391719.data"

    goto :goto_0

    .line 215
    :cond_d
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->PREVIEW_BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_e

    .line 216
    const-string v0, "style_6_7_1445325996.data"

    goto :goto_0

    .line 218
    :cond_e
    const-string v0, "style_1_7_1445219169.data"

    goto :goto_0

    .line 220
    :cond_f
    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->SATELLITE:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    if-ne v1, v2, :cond_12

    .line 221
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NAVI_CAR:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_10

    .line 222
    const-string v0, "style_5_7_1445391719.data"

    goto/16 :goto_0

    .line 223
    :cond_10
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->PREVIEW_BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_11

    .line 224
    const-string v0, "style_6_7_1445325996.data"

    goto/16 :goto_0

    .line 226
    :cond_11
    const-string v0, "style_3_7_1445827513.data"

    goto/16 :goto_0

    .line 228
    :cond_12
    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;->BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

    if-ne v1, v2, :cond_0

    .line 229
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->NAVI_CAR:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_13

    .line 230
    const-string v0, "style_5_7_1445391719.data"

    goto/16 :goto_0

    .line 231
    :cond_13
    sget-object v0, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;->PREVIEW_BUS:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;

    if-ne v0, v3, :cond_14

    .line 232
    const-string v0, "style_6_7_1445325996.data"

    goto/16 :goto_0

    .line 234
    :cond_14
    const-string v0, "style_6_7_1445325996.data"

    goto/16 :goto_0
.end method

.method public setBkTexture(Z)V
    .locals 4

    .prologue
    .line 316
    .line 318
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->X()Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    move-result-object v0

    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->NIGHT:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    if-eq v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "bktile.data"

    .line 320
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v1

    .line 321
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v2, "3d_sky_day.dat"

    .line 322
    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v0

    .line 333
    :goto_0
    if-eqz p1, :cond_1

    .line 335
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 336
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v2, 0x29

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 348
    :goto_1
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "bktile_n.data"

    .line 325
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v1

    .line 326
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v2, "3d_sky_night.dat"

    .line 327
    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    new-instance v3, Lcom/autonavi/amap/mapcore/GLMapResManager$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/autonavi/amap/mapcore/GLMapResManager$3;-><init>(Lcom/autonavi/amap/mapcore/GLMapResManager;[B[B)V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public setIconsData(Z)V
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x0

    .line 125
    new-instance v1, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->getIconName()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-direct {p0, v2}, Lcom/autonavi/amap/mapcore/GLMapResManager;->getBigIconName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    iget-object v4, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getIconsData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B

    move-result-object v2

    .line 130
    iget-boolean v4, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->isBigIcon:Z

    if-eqz v4, :cond_2

    .line 131
    new-instance v0, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;-><init>()V

    .line 132
    iget-object v4, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v4

    .line 133
    invoke-virtual {v4, v3, v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getIconsData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B

    move-result-object v0

    .line 138
    :cond_2
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v3

    const-string v4, "icons_50_7_1444880375.data"

    .line 139
    invoke-virtual {v3, v4, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getIconsData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B

    move-result-object v1

    .line 140
    if-eqz p1, :cond_3

    .line 141
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 142
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v3, 0x1f

    invoke-virtual {v2, v1, v3}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 143
    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->isBigIcon:Z

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    new-instance v4, Lcom/autonavi/amap/mapcore/GLMapResManager$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/autonavi/amap/mapcore/GLMapResManager$1;-><init>(Lcom/autonavi/amap/mapcore/GLMapResManager;[B[B[B)V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setOtherMapTexture(Z)V
    .locals 8

    .prologue
    .line 435
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "roadarrow.data"

    .line 436
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v2

    .line 437
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "lineround.data"

    .line 438
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v3

    .line 440
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "dash.data"

    .line 441
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v4

    .line 442
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "dash_tq.data"

    .line 443
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v5

    .line 444
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "dash_cd.data"

    .line 445
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v6

    .line 447
    if-eqz p1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 450
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 451
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x8

    invoke-virtual {v0, v4, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 452
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x9

    invoke-virtual {v0, v5, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 453
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0xa

    invoke-virtual {v0, v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 466
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v7, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    new-instance v0, Lcom/autonavi/amap/mapcore/GLMapResManager$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/amap/mapcore/GLMapResManager$4;-><init>(Lcom/autonavi/amap/mapcore/GLMapResManager;[B[B[B[B[B)V

    invoke-virtual {v7, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setRoadGuideTexture(Z)V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public setStyleData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 100
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/GLMapResManager;->getStyleName()Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getStyleData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/autonavi/amap/mapcore/MapCore;->setStyleData([BII)V

    .line 112
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v1

    const-string v2, "style_50_7_1445670996.data"

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getStyleData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v1, v0, v4, v4}, Lcom/autonavi/amap/mapcore/MapCore;->setStyleData([BII)V

    goto :goto_0
.end method

.method public setTrafficTexture(Z)V
    .locals 8

    .prologue
    .line 264
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->X()Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    move-result-object v0

    sget-object v1, Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;->NIGHT:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

    if-eq v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "tgl_l.data"

    .line 266
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v2

    .line 267
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "trl_l.data"

    .line 268
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v3

    .line 269
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "tyl_l.data"

    .line 270
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v4

    .line 271
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "tbl_l.data"

    .line 272
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v5

    .line 273
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "tnl_l.data"

    .line 274
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v6

    .line 294
    :goto_0
    if-eqz p1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 297
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 298
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 299
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x7

    invoke-virtual {v0, v5, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 300
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x12

    invoke-virtual {v0, v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 313
    :goto_1
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "tgl_n.data"

    .line 277
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v2

    .line 278
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "trl_n.data"

    .line 279
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v3

    .line 280
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "tyl_n.data"

    .line 281
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v4

    .line 282
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "tbl_n.data"

    .line 283
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v5

    .line 284
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string v1, "tnl_n.data"

    .line 285
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_0

    .line 302
    :cond_1
    iget-object v7, p0, Lcom/autonavi/amap/mapcore/GLMapResManager;->mapDelegateImp:Lcom/amap/api/mapcore/AMapDelegateImp;

    new-instance v0, Lcom/autonavi/amap/mapcore/GLMapResManager$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/amap/mapcore/GLMapResManager$2;-><init>(Lcom/autonavi/amap/mapcore/GLMapResManager;[B[B[B[B[B)V

    invoke-virtual {v7, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
