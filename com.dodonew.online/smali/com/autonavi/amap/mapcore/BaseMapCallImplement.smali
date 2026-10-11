.class public abstract Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
.super Ljava/lang/Object;
.source "BaseMapCallImplement.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/IBaseMapCallback;
.implements Lcom/autonavi/amap/mapcore/IMapCallback;


# instance fields
.field private bldReqMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

.field private curBldMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curIndoorMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curPoiMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curRegionMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curRoadMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curScreenGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curStiMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curVectmcMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private indoorMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field mapGridFillLock:Ljava/lang/Object;

.field private poiReqMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private regionReqMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private roadReqMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private stiReqMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

.field tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

.field private vectmcReqMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private versionMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->roadReqMapGrids:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bldReqMapGrids:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->regionReqMapGrids:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->poiReqMapGrids:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->versionMapGrids:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->indoorMapGrids:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->vectmcReqMapGirds:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->stiReqMapGirds:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRoadMapGrids:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curBldMapGrids:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRegionMapGrids:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curPoiMapGrids:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curVectmcMapGirds:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curStiMapGirds:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curScreenGirds:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curIndoorMapGirds:Ljava/util/ArrayList;

    .line 27
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    .line 28
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    .line 29
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    return-void
.end method

.method private isGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 265
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    const/4 v2, 0x1

    .line 268
    :cond_0
    return v2

    .line 264
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isIndoorGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 331
    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 332
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    const/4 v2, 0x1

    .line 335
    :cond_0
    return v2

    .line 331
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public OnMapCharsWidthsRequired(Lcom/autonavi/amap/mapcore/MapCore;[III)[B
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-virtual {v0, p2}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->getCharsWidths([I)[B

    move-result-object v0

    return-object v0
.end method

.method public OnMapDataRequired(Lcom/autonavi/amap/mapcore/MapCore;I[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 36
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getReqGridList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    const/4 v0, 0x0

    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 47
    new-instance v2, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    aget-object v3, p3, v0

    invoke-direct {v2, v3, p2}, Lcom/autonavi/amap/mapcore/MapSourceGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_2
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 50
    invoke-virtual {p0, p1, v1, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->proccessRequiredData(Lcom/autonavi/amap/mapcore/MapCore;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public OnMapDestory(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 1

    .prologue
    .line 542
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->destoryMap(Lcom/autonavi/amap/mapcore/MapCore;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public OnMapLabelsRequired(Lcom/autonavi/amap/mapcore/MapCore;[II)V
    .locals 3

    .prologue
    .line 556
    if-eqz p2, :cond_0

    if-gtz p3, :cond_1

    .line 577
    :cond_0
    return-void

    .line 567
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 568
    aget v1, p2, v0

    .line 569
    new-instance v2, Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;-><init>()V

    iput-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 570
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 571
    invoke-virtual {v2, v1}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->getTextPixelBuffer(I)[B

    move-result-object v2

    .line 572
    if-eqz v2, :cond_2

    .line 573
    invoke-virtual {p1, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->putCharbitmap(I[B)V

    .line 567
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public OnMapProcessEvent(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public OnMapSurfaceCreate(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curPoiMapGrids:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 113
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRoadMapGrids:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 115
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRegionMapGrids:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 117
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curBldMapGrids:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 119
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curVectmcMapGirds:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 121
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curStiMapGirds:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 124
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curIndoorMapGirds:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized destoryMap(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 2

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    .line 590
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 595
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->shutDown()V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    .line 601
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/d;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    :cond_1
    monitor-exit p0

    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 595
    :try_start_3
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->shutDown()V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 595
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/ConnectionManager;->shutDown()V

    .line 596
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getCurGridList(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRoadMapGrids:Ljava/util/ArrayList;

    .line 149
    :goto_0
    return-object v0

    .line 132
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curBldMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRegionMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 136
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curPoiMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 140
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curVectmcMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 142
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curScreenGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 144
    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 145
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curIndoorMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 146
    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 147
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curStiMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 149
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReqGridList(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->roadReqMapGrids:Ljava/util/ArrayList;

    .line 105
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bldReqMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->regionReqMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 73
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->poiReqMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 81
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->vectmcReqMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 83
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curScreenGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 92
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->stiReqMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 96
    :cond_6
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 97
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->versionMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 100
    :cond_7
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    .line 101
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->indoorMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 105
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGridInScreen(ILjava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    :goto_0
    return v0

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getCurGridList(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 252
    invoke-direct {p0, p2, v3}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 254
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    :catch_0
    move-exception v0

    move v0, v1

    .line 258
    goto :goto_0
.end method

.method public isGridsInScreen(Ljava/util/ArrayList;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 214
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 234
    :goto_0
    return v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 217
    goto :goto_0

    .line 218
    :cond_1
    iget-object v4, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getCurGridList(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 220
    if-nez v5, :cond_2

    .line 221
    monitor-exit v4

    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 222
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 224
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    monitor-exit v4

    move v0, v2

    goto :goto_0

    .line 222
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 228
    :cond_4
    monitor-exit v4

    move v0, v1

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 234
    goto :goto_0
.end method

.method public isIndoorGridInScreen(ILjava/lang/String;S)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    :goto_0
    return v0

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getCurGridList(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-direct {p0, v4, v3}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isIndoorGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 322
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 324
    :catch_0
    move-exception v0

    move v0, v1

    .line 325
    goto :goto_0
.end method

.method public isIndoorGridsInScreen(Ljava/util/ArrayList;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 281
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 300
    :goto_0
    return v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 284
    goto :goto_0

    .line 285
    :cond_1
    iget-object v4, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getCurGridList(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 287
    if-nez v5, :cond_2

    .line 288
    monitor-exit v4

    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 289
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 291
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isIndoorGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    monitor-exit v4

    move v0, v2

    goto :goto_0

    .line 289
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 295
    :cond_4
    monitor-exit v4

    move v0, v1

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 300
    goto :goto_0
.end method

.method public declared-synchronized newMap(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 1

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-direct {v0, p1}, Lcom/autonavi/amap/mapcore/ConnectionManager;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    .line 582
    new-instance v0, Lcom/autonavi/amap/mapcore/d;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/d;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    .line 583
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPause()V
    .locals 2

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    .line 501
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->interrupt()V

    .line 503
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->shutDown()V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 1

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-direct {v0, p1}, Lcom/autonavi/amap/mapcore/ConnectionManager;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    .line 520
    new-instance v0, Lcom/autonavi/amap/mapcore/d;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/d;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    .line 521
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :goto_0
    monitor-exit p0

    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected proccessRequiredData(Lcom/autonavi/amap/mapcore/MapCore;Ljava/util/ArrayList;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/amap/mapcore/MapCore;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/4 v2, 0x0

    .line 366
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    .line 367
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 368
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    .line 370
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/autonavi/amap/mapcore/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 374
    :cond_0
    const/4 v1, 0x4

    if-ne p3, v1, :cond_3

    .line 376
    invoke-static {}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VTMCDataCache;

    move-result-object v1

    .line 377
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->getData(Ljava/lang/String;Z)Lcom/autonavi/amap/mapcore/f;

    move-result-object v3

    .line 379
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->getData(Ljava/lang/String;Z)Lcom/autonavi/amap/mapcore/f;

    move-result-object v4

    .line 382
    if-eqz v3, :cond_1

    .line 383
    iget-object v1, v3, Lcom/autonavi/amap/mapcore/f;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->obj:Ljava/lang/Object;

    .line 385
    :cond_1
    if-eqz v4, :cond_2

    iget-object v1, v4, Lcom/autonavi/amap/mapcore/f;->a:[B

    if-eqz v1, :cond_2

    iget-object v1, v4, Lcom/autonavi/amap/mapcore/f;->a:[B

    array-length v1, v1

    if-lez v1, :cond_2

    .line 388
    iget-object v1, v4, Lcom/autonavi/amap/mapcore/f;->a:[B

    iget-object v0, v4, Lcom/autonavi/amap/mapcore/f;->a:[B

    array-length v3, v0

    iget v5, v4, Lcom/autonavi/amap/mapcore/f;->c:I

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    :cond_3
    :try_start_0
    iget-object v1, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->gridName:Ljava/lang/String;

    .line 398
    if-ne p3, v8, :cond_4

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->gridName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->mIndoorIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    :cond_4
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v3

    .line 402
    invoke-virtual {v3, v1, p3}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getRecoder(Ljava/lang/String;I)Lcom/autonavi/amap/mapcore/e;

    move-result-object v1

    .line 406
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/autonavi/amap/mapcore/e;->a:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v1, v1, Lcom/autonavi/amap/mapcore/e;->a:Ljava/lang/String;

    .line 407
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 427
    :cond_5
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 429
    :catch_0
    move-exception v0

    goto :goto_1

    .line 437
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 452
    const/4 v0, 0x0

    .line 453
    if-ne p3, v8, :cond_7

    .line 454
    new-instance v0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;

    invoke-direct {v0, p1, p0, p3}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;-><init>(Lcom/autonavi/amap/mapcore/MapCore;Lcom/autonavi/amap/mapcore/BaseMapCallImplement;I)V

    move-object v1, v0

    .line 461
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 462
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    .line 463
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/amap/mapcore/d;->c(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->addReuqestTiles(Lcom/autonavi/amap/mapcore/MapSourceGridData;)V

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 455
    :cond_7
    const/16 v1, 0xb

    if-ne p3, v1, :cond_8

    move-object v1, v0

    goto :goto_2

    .line 458
    :cond_8
    new-instance v0, Lcom/autonavi/amap/mapcore/NormalMapLoader;

    invoke-direct {v0, p1, p0, p3}, Lcom/autonavi/amap/mapcore/NormalMapLoader;-><init>(Lcom/autonavi/amap/mapcore/MapCore;Lcom/autonavi/amap/mapcore/BaseMapCallImplement;I)V

    move-object v1, v0

    goto :goto_2

    .line 466
    :cond_9
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    if-eqz v0, :cond_a

    .line 467
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/ConnectionManager;->insertConntionTask(Lcom/autonavi/amap/mapcore/BaseMapLoader;)V

    .line 471
    :cond_a
    return-void
.end method
