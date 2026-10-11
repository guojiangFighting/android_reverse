.class public Lcom/autonavi/amap/mapcore/ConnectionManager;
.super Lcom/autonavi/amap/mapcore/SingalThread;
.source "ConnectionManager.java"


# static fields
.field private static final MAX_THREAD_COUNT:I = 0x1


# instance fields
.field private connPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/BaseMapLoader;",
            ">;"
        }
    .end annotation
.end field

.field mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

.field threadFlag:Z

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private threadPoolList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/SingalThread;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    .line 18
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    .line 24
    return-void
.end method

.method private checkListPool()V
    .locals 6

    .prologue
    .line 63
    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 67
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 68
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/a;

    .line 69
    iget-object v4, v0, Lcom/autonavi/amap/mapcore/a;->a:Lcom/autonavi/amap/mapcore/BaseMapLoader;

    .line 70
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isRequestValid()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->hasFinished()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    .line 67
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 77
    return-void
.end method

.method private doAsyncRequest()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    if-eqz v0, :cond_4

    .line 97
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    monitor-enter v3

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->checkListPool()V

    .line 100
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    .line 119
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    if-eqz v0, :cond_3

    .line 122
    const-wide/16 v4, 0x1e

    :try_start_1
    invoke-static {v4, v5}, Lcom/autonavi/amap/mapcore/ConnectionManager;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0

    .line 106
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/BaseMapLoader;

    .line 107
    new-instance v4, Lcom/autonavi/amap/mapcore/a;

    invoke-direct {v4, v0}, Lcom/autonavi/amap/mapcore/a;-><init>(Lcom/autonavi/amap/mapcore/BaseMapLoader;)V

    .line 110
    sget-object v5, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " add Task, get mapdata from net, datasource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v0, v0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x6f

    invoke-static {v5, v0, v6}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 135
    :cond_3
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    if-eqz v0, :cond_0

    .line 137
    :try_start_3
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->doWait()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    goto :goto_0

    .line 143
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method checkListPoolOld()V
    .locals 3

    .prologue
    .line 45
    .line 46
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 47
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/a;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/a;->a:Lcom/autonavi/amap/mapcore/BaseMapLoader;

    .line 49
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isRequestValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->hasFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method

.method public insertConntionTask(Lcom/autonavi/amap/mapcore/BaseMapLoader;)V
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->doAwake()V

    .line 39
    return-void

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 82
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/bq;->a()V

    .line 85
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->doAsyncRequest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 30
    :cond_0
    return-void
.end method
