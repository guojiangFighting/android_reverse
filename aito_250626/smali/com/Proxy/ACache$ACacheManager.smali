.class public Lcom/Proxy/ACache$ACacheManager;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Proxy/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACacheManager"
.end annotation


# instance fields
.field public final cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public cacheDir:Ljava/io/File;

.field public final cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

.field public final countLimit:I

.field public final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final sizeLimit:J

.field public final synthetic this$0:Lcom/Proxy/ACache;


# direct methods
.method public constructor <init>(Lcom/Proxy/ACache;Ljava/io/File;JI)V
    .locals 1
    .param p1, "this$0"    # Lcom/Proxy/ACache;
    .param p2, "cacheDir"    # Ljava/io/File;
    .param p3, "sizeLimit"    # J
    .param p5, "countLimit"    # I

    .prologue
    .line 616
    iput-object p1, p0, Lcom/Proxy/ACache$ACacheManager;->this$0:Lcom/Proxy/ACache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/Proxy/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 617
    iput-object p2, p0, Lcom/Proxy/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    .line 618
    iput-wide p3, p0, Lcom/Proxy/ACache$ACacheManager;->sizeLimit:J

    .line 619
    iput p5, p0, Lcom/Proxy/ACache$ACacheManager;->countLimit:I

    .line 620
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/Proxy/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 621
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/Proxy/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 622
    invoke-virtual {p0}, Lcom/Proxy/ACache$ACacheManager;->calculateCacheSizeAndCacheCount()V

    .line 623
    return-void
.end method

.method public synthetic constructor <init>(Lcom/Proxy/ACache;Ljava/io/File;JILcom/Proxy/ACache$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/Proxy/ACache;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # Lcom/Proxy/ACache$1;

    .prologue
    .line 608
    invoke-direct/range {p0 .. p5}, Lcom/Proxy/ACache$ACacheManager;-><init>(Lcom/Proxy/ACache;Ljava/io/File;JI)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/Proxy/ACache$ACacheManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/Proxy/ACache$ACacheManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache$ACacheManager;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic access$1700(Lcom/Proxy/ACache$ACacheManager;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lcom/Proxy/ACache$ACacheManager;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$1800(Lcom/Proxy/ACache$ACacheManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/Proxy/ACache$ACacheManager;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/Proxy/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$1900(Lcom/Proxy/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/Proxy/ACache$ACacheManager;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/Proxy/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/Proxy/ACache$ACacheManager;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/Proxy/ACache$ACacheManager;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache$ACacheManager;->put(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/Proxy/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/Proxy/ACache$ACacheManager;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/Proxy/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/Proxy/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/Proxy/ACache$ACacheManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$500(Lcom/Proxy/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/Proxy/ACache$ACacheManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final calculateCacheSizeAndCacheCount()V
    .locals 2

    .prologue
    .line 629
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/Proxy/ACache$ACacheManager$1;

    invoke-direct {v1, p0}, Lcom/Proxy/ACache$ACacheManager$1;-><init>(Lcom/Proxy/ACache$ACacheManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 645
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 646
    return-void
.end method

.method public final calculateSize(Ljava/io/File;)J
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 737
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final get(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 673
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 674
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 675
    iget-object v2, p0, Lcom/Proxy/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    return-object v1
.end method

.method public final newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 681
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/Proxy/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final put(Ljava/io/File;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 649
    iget-object v8, p0, Lcom/Proxy/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 650
    .local v0, "curCacheCount":I
    :goto_0
    add-int/lit8 v8, v0, 0x1

    iget v9, p0, Lcom/Proxy/ACache$ACacheManager;->countLimit:I

    if-le v8, v9, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/Proxy/ACache$ACacheManager;->removeNext()J

    move-result-wide v4

    .line 652
    .local v4, "freedSize":J
    iget-object v8, p0, Lcom/Proxy/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 654
    iget-object v8, p0, Lcom/Proxy/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 655
    goto :goto_0

    .line 656
    .end local v4    # "freedSize":J
    :cond_0
    iget-object v8, p0, Lcom/Proxy/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 658
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v6

    .line 659
    .local v6, "valueSize":J
    iget-object v8, p0, Lcom/Proxy/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 660
    .local v2, "curCacheSize":J
    :goto_1
    add-long v8, v2, v6

    iget-wide v10, p0, Lcom/Proxy/ACache$ACacheManager;->sizeLimit:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/Proxy/ACache$ACacheManager;->removeNext()J

    move-result-wide v4

    .line 662
    .restart local v4    # "freedSize":J
    iget-object v8, p0, Lcom/Proxy/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 663
    goto :goto_1

    .line 664
    .end local v4    # "freedSize":J
    :cond_1
    iget-object v8, p0, Lcom/Proxy/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 667
    .local v1, "currentTime":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 668
    iget-object v8, p0, Lcom/Proxy/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    return-void
.end method

.method public final remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 686
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public final removeNext()J
    .locals 16

    .prologue
    .line 706
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/Proxy/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 707
    const-wide/16 v4, 0x0

    .line 733
    :cond_0
    :goto_0
    return-wide v4

    .line 710
    :cond_1
    const/4 v8, 0x0

    .line 711
    .local v8, "oldestUsage":Ljava/lang/Long;
    const/4 v7, 0x0

    .line 713
    .local v7, "mostLongUsedFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/Proxy/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 714
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/Proxy/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    monitor-enter v10

    .line 715
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 716
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    if-nez v7, :cond_3

    .line 717
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    .line 718
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Long;

    move-object v8, v0

    goto :goto_1

    .line 720
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 721
    .local v6, "lastValueUsage":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v9, v12, v14

    if-gez v9, :cond_2

    .line 722
    move-object v8, v6

    .line 723
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    goto :goto_1

    .line 727
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v6    # "lastValueUsage":Ljava/lang/Long;
    :cond_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/Proxy/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v4

    .line 730
    .local v4, "fileSize":J
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 731
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/Proxy/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 727
    .end local v4    # "fileSize":J
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method
