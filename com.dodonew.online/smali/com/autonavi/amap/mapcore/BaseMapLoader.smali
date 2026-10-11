.class public abstract Lcom/autonavi/amap/mapcore/BaseMapLoader;
.super Ljava/lang/Object;
.source "BaseMapLoader.java"


# instance fields
.field createtime:J

.field datasource:I

.field public httpURLConnection:Ljava/net/HttpURLConnection;

.field volatile inRequest:Z

.field volatile isFinished:Z

.field volatile mCanceled:Z

.field mCapaticy:I

.field mCapaticyExt:I

.field mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

.field mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

.field m_reqestStartLen:J

.field mapLevel:I

.field public mapTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field nextImgDataLength:I

.field recievedDataBuffer:[B

.field recievedDataSize:I

.field recievedHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mapTiles:Ljava/util/ArrayList;

    .line 30
    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    .line 31
    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 32
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedHeader:Z

    .line 33
    const/16 v0, 0x7800

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    .line 34
    const/16 v0, 0x2800

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticyExt:I

    .line 36
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->inRequest:Z

    .line 37
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z

    .line 38
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    .line 40
    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private declared-synchronized onConnectionOver()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 229
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedVersionOrScenicWidgetData()V

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    .line 231
    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 232
    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 238
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget-object v2, v0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mapTiles:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->keyGridName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 247
    :cond_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onConnectionRecieveData([BI)V
    .locals 6

    .prologue
    const/16 v5, 0x73

    .line 409
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    add-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    .line 421
    :try_start_0
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticyExt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    .line 422
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    new-array v0, v0, [B

    .line 425
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 458
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    .line 459
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isNeedProcessReturn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    .line 431
    sget-object v1, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MapLoader Exception happened, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cancel download, Exception Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 432
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v1, v0, v5}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 441
    :catch_1
    move-exception v0

    .line 444
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    .line 445
    sget-object v1, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MapLoader Exception happened, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cancel download, Exception Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 446
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v1, v0, v5}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 448
    :catch_2
    move-exception v0

    .line 452
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    .line 453
    sget-object v1, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MapLoader Exception happened, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cancel download, Exception Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 454
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v1, v0, v5}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 466
    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedHeader:Z

    if-nez v0, :cond_3

    .line 467
    invoke-virtual {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processReceivedDataHeader(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedDataByType()V

    goto/16 :goto_0
.end method


# virtual methods
.method public OnException(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 180
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " network error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->privteTestTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MapLoader Exception happened error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    iput-boolean v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z

    .line 184
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    if-eq v0, v3, :cond_0

    .line 187
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 196
    :cond_0
    iput-boolean v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z

    .line 197
    return-void
.end method

.method public addReuqestTiles(Lcom/autonavi/amap/mapcore/MapSourceGridData;)V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method protected containllegal(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 174
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized doCancel()V
    .locals 4

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MapLoader cancel download thread id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->inRequest:Z

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :catch_0
    move-exception v0

    .line 224
    :try_start_4
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public doRequest()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/16 v8, 0x3ea

    .line 253
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isRequestValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request is invalid, cancel download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->getMapAddress()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->getMapSvrPath()Ljava/lang/String;

    move-result-object v3

    .line 267
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    if-eqz v0, :cond_0

    .line 272
    const/4 v1, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->getGridParma()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 280
    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->inRequest:Z

    .line 285
    :try_start_0
    iget-object v5, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore/util/bt;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v5

    .line 286
    invoke-virtual {p0, v0, v3, v4}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->getURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    if-eqz v5, :cond_5

    .line 289
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 295
    :goto_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 296
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " MapLoader doRequest threadId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " url:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6f

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 307
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_8

    .line 309
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 310
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_7

    .line 315
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 317
    :try_start_1
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOpened()V

    .line 318
    const/16 v1, 0x200

    new-array v3, v1, [B

    move v1, v2

    .line 321
    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_4

    .line 323
    if-eqz v1, :cond_3

    .line 324
    const-string v1, "recievedFirstByte:"

    const-string v4, ""

    invoke-virtual {p0, v1, v4}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->privteTestTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v1, 0x0

    .line 329
    :cond_3
    iget-boolean v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_6

    .line 369
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 371
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v1, :cond_0

    .line 373
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 376
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 292
    :cond_5
    :try_start_3
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 348
    :catch_1
    move-exception v0

    .line 369
    :goto_4
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 371
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 373
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 374
    :catch_2
    move-exception v0

    .line 376
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 339
    :cond_6
    :try_start_5
    invoke-direct {p0, v3, v2}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionRecieveData([BI)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 348
    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_4

    .line 342
    :cond_7
    const/16 v0, 0x3ea

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    move-object v0, v1

    goto :goto_3

    .line 346
    :cond_8
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    goto :goto_3

    .line 350
    :catch_4
    move-exception v0

    .line 369
    :goto_5
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 371
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 373
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 374
    :catch_5
    move-exception v0

    .line 376
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 352
    :catch_6
    move-exception v0

    .line 369
    :goto_6
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 371
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 373
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 374
    :catch_7
    move-exception v0

    .line 376
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 354
    :catch_8
    move-exception v0

    .line 369
    :goto_7
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 371
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 373
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 374
    :catch_9
    move-exception v0

    .line 376
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 358
    :catch_a
    move-exception v0

    .line 360
    :goto_8
    const/16 v0, 0x3ea

    :try_start_a
    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 369
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 371
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 373
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    .line 374
    :catch_b
    move-exception v0

    .line 376
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 362
    :catch_c
    move-exception v0

    .line 369
    :goto_9
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 371
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 373
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto/16 :goto_0

    .line 374
    :catch_d
    move-exception v0

    .line 376
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 369
    :catchall_0
    move-exception v0

    :goto_a
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 371
    if-eqz v1, :cond_9

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v2, :cond_9

    .line 373
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    .line 378
    :cond_9
    :goto_b
    throw v0

    .line 374
    :catch_e
    move-exception v1

    .line 376
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto :goto_b

    .line 369
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_a

    .line 362
    :catch_f
    move-exception v1

    move-object v1, v0

    goto :goto_9

    .line 358
    :catch_10
    move-exception v1

    move-object v1, v0

    goto :goto_8

    .line 354
    :catch_11
    move-exception v1

    move-object v1, v0

    goto :goto_7

    .line 352
    :catch_12
    move-exception v1

    move-object v1, v0

    goto :goto_6

    .line 350
    :catch_13
    move-exception v1

    move-object v1, v0

    goto/16 :goto_5
.end method

.method protected abstract getGridParma()Ljava/lang/String;
.end method

.method protected abstract getMapAddress()Ljava/lang/String;
.end method

.method protected abstract getMapSvrPath()Ljava/lang/String;
.end method

.method protected getURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, ""

    .line 134
    const-string v0, ""

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    return-object v0
.end method

.method public declared-synchronized hasFinished()Z
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initTestTime()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->m_reqestStartLen:J

    .line 154
    return-void
.end method

.method protected isAssic(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 163
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v0, v1

    .line 166
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 167
    aget-char v3, v2, v0

    const/16 v4, 0x100

    if-ge v3, v4, :cond_0

    aget-char v3, v2, v0

    if-lez v3, :cond_0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract isNeedProcessReturn()Z
.end method

.method public abstract isRequestValid()Z
.end method

.method public onConnectionError(Lcom/autonavi/amap/mapcore/BaseMapLoader;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method protected onConnectionOpened()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    .line 398
    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 399
    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    .line 400
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedHeader:Z

    .line 402
    return-void
.end method

.method protected privteTestTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method protected abstract processReceivedDataHeader(I)Z
.end method

.method protected processReceivedDataV4()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 542
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    if-nez v0, :cond_1

    .line 544
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    if-lt v0, v2, :cond_0

    .line 547
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    invoke-static {v0, v5}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 550
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processReceivedDataV4()V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    if-lt v0, v1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processReceivedTileDataV4([BII)V

    .line 564
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Lcom/autonavi/amap/mapcore/Convert;->moveArray([BI[BII)V

    .line 568
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    .line 569
    iput v5, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 570
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processReceivedDataV4()V

    goto :goto_0
.end method

.method protected processReceivedTileDataV4([BII)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 92
    .line 94
    add-int/lit8 v0, p2, 0x4

    .line 96
    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p1, v0

    .line 98
    const-string v0, ""

    .line 101
    if-lez v2, :cond_4

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_4

    .line 102
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v6, v0

    .line 104
    :goto_0
    add-int v0, v1, v2

    .line 106
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_1
    return-void

    .line 109
    :cond_1
    if-le p3, p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    invoke-virtual {v0, v1, v6}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInScreen(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v7, v0

    .line 116
    :goto_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v3, p3, p2

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    invoke-virtual {v0, v1, v6, v2}, Lcom/autonavi/amap/mapcore/VMapDataCache;->putRecoder([BLjava/lang/String;I)Lcom/autonavi/amap/mapcore/e;

    .line 120
    :cond_2
    if-eqz v7, :cond_0

    .line 121
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tile is out of screen, tileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    goto :goto_1

    :cond_3
    move v7, v5

    .line 114
    goto :goto_2

    :cond_4
    move-object v6, v0

    goto :goto_0
.end method

.method protected processRecivedData()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 479
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    if-nez v0, :cond_1

    .line 481
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    if-lt v0, v3, :cond_0

    .line 484
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    invoke-static {v0, v6}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 486
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedData()V

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    if-lt v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    invoke-static {v0, v6}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 496
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    .line 498
    if-nez v1, :cond_3

    .line 500
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v1, v3, v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedTileData([BII)V

    .line 524
    :goto_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    if-lez v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v6, v3}, Lcom/autonavi/amap/mapcore/Convert;->moveArray([BI[BII)V

    .line 530
    :cond_2
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    .line 531
    iput v6, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 532
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedData()V

    goto :goto_0

    .line 505
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 507
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 509
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 510
    const/16 v3, 0x80

    new-array v3, v3, [B

    .line 512
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_4

    .line 513
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 518
    :catch_0
    move-exception v0

    .line 519
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 515
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 516
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedTileData([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected abstract processRecivedDataByType()V
.end method

.method processRecivedTileData([BII)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 581
    .line 583
    add-int/lit8 v0, p2, 0x2

    .line 585
    add-int/lit8 v0, v0, 0x2

    .line 587
    add-int/lit8 v0, v0, 0x4

    .line 588
    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p1, v0

    .line 590
    const-string v0, ""

    .line 591
    if-lez v2, :cond_3

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_3

    .line 592
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v6, v0

    .line 594
    :goto_0
    add-int v0, v1, v2

    .line 596
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    :cond_0
    :goto_1
    return-void

    .line 599
    :cond_1
    if-le p3, p2, :cond_0

    .line 602
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    .line 603
    invoke-virtual {v0, v1, v6}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInScreen(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v7, v0

    .line 604
    :goto_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    invoke-virtual {v0, v1, v6, v2}, Lcom/autonavi/amap/mapcore/VMapDataCache;->putRecoder([BLjava/lang/String;I)Lcom/autonavi/amap/mapcore/e;

    .line 605
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v3, p3, p2

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    .line 607
    if-eqz v7, :cond_0

    .line 609
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tile is out of screen, tileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 610
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    goto :goto_1

    :cond_2
    move v7, v5

    .line 603
    goto :goto_2

    :cond_3
    move-object v6, v0

    goto :goto_0
.end method

.method processRecivedVersionData([BII)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 622
    if-lez p3, :cond_0

    array-length v0, p1

    if-gt p3, v0, :cond_0

    .line 625
    invoke-static {p1, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 626
    const/4 v1, 0x4

    .line 628
    if-eqz v0, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-static {p1, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 632
    const/16 v1, 0x8

    .line 634
    if-nez v0, :cond_0

    .line 638
    invoke-static {p1, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v4

    .line 639
    const/16 v1, 0xc

    .line 641
    const/4 v0, 0x1

    .line 642
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move v1, v2

    .line 643
    :goto_1
    if-ge v1, v4, :cond_3

    .line 645
    const-string v6, ""

    .line 646
    if-ge v3, p3, :cond_2

    .line 647
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p1, v3

    .line 653
    if-lez v3, :cond_4

    add-int v7, v6, v3

    if-ge v7, p3, :cond_4

    .line 654
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1, v6, v3}, Ljava/lang/String;-><init>([BII)V

    .line 655
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/2addr v3, v6

    .line 662
    add-int/lit8 v3, v3, 0x4

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 667
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    move v1, v2

    .line 668
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 669
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 670
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v3

    const/4 v4, 0x0

    iget v6, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    invoke-virtual {v3, v4, v0, v6}, Lcom/autonavi/amap/mapcore/VMapDataCache;->putRecoder([BLjava/lang/String;I)Lcom/autonavi/amap/mapcore/e;

    .line 668
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    move v0, v2

    .line 658
    goto :goto_2

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    move-object v1, p1

    move v3, p3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    goto :goto_0
.end method

.method protected abstract processRecivedVersionOrScenicWidgetData()V
.end method
