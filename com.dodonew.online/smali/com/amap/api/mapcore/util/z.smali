.class public Lcom/amap/api/mapcore/util/z;
.super Ljava/lang/Object;
.source "OfflineDBOperation.java"


# static fields
.field private static a:Lcom/amap/api/mapcore/util/z;

.field private static b:Lcom/amap/api/mapcore/util/co;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amap/api/mapcore/util/z;->c:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/z;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/co;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/z;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amap/api/mapcore/util/z;->a:Lcom/amap/api/mapcore/util/z;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/amap/api/mapcore/util/z;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/mapcore/util/z;->a:Lcom/amap/api/mapcore/util/z;

    .line 23
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/z;->a:Lcom/amap/api/mapcore/util/z;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/w;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/w;

    .line 244
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 123
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 125
    invoke-static {p1}, Lcom/amap/api/mapcore/util/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    new-instance v2, Lcom/amap/api/mapcore/util/v;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/v;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    sget-object v1, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    new-instance v2, Lcom/amap/api/mapcore/util/v;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/v;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore/util/co;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)V

    .line 131
    :cond_0
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 134
    new-instance v5, Lcom/amap/api/mapcore/util/v;

    invoke-direct {v5}, Lcom/amap/api/mapcore/util/v;-><init>()V

    .line 135
    new-instance v6, Lcom/amap/api/mapcore/util/w;

    invoke-direct {v6, p1, v4}, Lcom/amap/api/mapcore/util/w;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/amap/api/mapcore/util/cp;->a(Ljava/lang/Object;)V

    .line 136
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/co;->a(Ljava/util/List;)V

    .line 141
    :cond_2
    return-void
.end method

.method private b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/co;
    .locals 4

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 35
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/co;

    invoke-static {}, Lcom/amap/api/mapcore/util/y;->a()Lcom/amap/api/mapcore/util/y;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/co;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/cn;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v2, "OfflineDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/z;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/co;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    .line 50
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    if-nez v0, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 73
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const-string v0, ""

    .line 67
    sget-object v2, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    new-instance v3, Lcom/amap/api/mapcore/util/u;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/u;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/x;

    .line 70
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x;->a()Lcom/amap/api/mapcore/util/r;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 73
    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 191
    :goto_0
    monitor-exit p0

    return-object v0

    .line 187
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    sget-object v2, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    new-instance v3, Lcom/amap/api/mapcore/util/v;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/v;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v1

    .line 190
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/z;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore/util/r;)V
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/u;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/u;-><init>()V

    .line 106
    new-instance v1, Lcom/amap/api/mapcore/util/x;

    invoke-direct {v1, p1}, Lcom/amap/api/mapcore/util/x;-><init>(Lcom/amap/api/mapcore/util/r;)V

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/cp;->a(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    sget-object v2, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore/util/co;->a(Lcom/amap/api/mapcore/util/cp;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->l()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;IJJJ)V
    .locals 9

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x5

    new-array v6, v0, [J

    const/4 v0, 0x0

    aput-wide p5, v6, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    const/4 v0, 0x4

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    .line 296
    const/4 v0, 0x5

    new-array v7, v0, [J

    const/4 v0, 0x0

    aput-wide p7, v7, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    const/4 v0, 0x4

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 297
    invoke-virtual/range {v1 .. v7}, Lcom/amap/api/mapcore/util/z;->a(Ljava/lang/String;IJ[J[J)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;IJ[J[J)V
    .locals 11

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/s;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/s;-><init>()V

    .line 324
    new-instance v1, Lcom/amap/api/mapcore/util/t;

    const/4 v2, 0x0

    aget-wide v6, p5, v2

    const/4 v2, 0x0

    aget-wide v8, p6, v2

    move-object v2, p1

    move-wide v3, p3

    move v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/mapcore/util/t;-><init>(Ljava/lang/String;JIJJ)V

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/cp;->a(Ljava/lang/Object;)V

    .line 326
    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    sget-object v2, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore/util/co;->a(Lcom/amap/api/mapcore/util/cp;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;I)[J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 332
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 333
    const-wide/16 v4, 0x0

    .line 334
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z

    move-result v6

    if-nez v6, :cond_0

    .line 335
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :goto_0
    monitor-exit p0

    return-object v0

    .line 337
    :cond_0
    :try_start_1
    new-instance v2, Lcom/amap/api/mapcore/util/s;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/s;-><init>()V

    .line 338
    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    sget-object v4, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v4, v3, v2}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v4

    .line 341
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 342
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/t;

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/t;->a(I)J

    move-result-wide v2

    .line 343
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/t;

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/t;->b(I)J

    move-result-wide v0

    move-wide v4, v2

    move-wide v2, v0

    .line 346
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-wide v2, v0

    move-wide v4, v0

    goto :goto_1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 209
    :goto_0
    monitor-exit p0

    return-object v0

    .line 205
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    sget-object v2, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    new-instance v3, Lcom/amap/api/mapcore/util/v;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/v;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v1

    .line 208
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/z;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 277
    :goto_0
    monitor-exit p0

    return-void

    .line 271
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/mapcore/util/u;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/u;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/co;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)V

    .line 273
    sget-object v0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/mapcore/util/v;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/v;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/co;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)V

    .line 275
    sget-object v0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/mapcore/util/s;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/s;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/co;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 350
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 360
    :goto_0
    monitor-exit p0

    return v0

    .line 353
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/s;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/s;-><init>()V

    .line 354
    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    sget-object v2, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v2

    .line 356
    const-wide/16 v0, 0x0

    .line 357
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 358
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/t;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/t;->b()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 360
    :cond_1
    long-to-int v0, v0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 390
    monitor-enter p0

    const/4 v0, 0x0

    .line 392
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 402
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 395
    :cond_1
    :try_start_1
    new-instance v1, Lcom/amap/api/mapcore/util/u;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/u;-><init>()V

    .line 396
    invoke-static {p1}, Lcom/amap/api/mapcore/util/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    sget-object v3, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v3, v2, v1}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v1

    .line 398
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 399
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x;->f()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 406
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 409
    :cond_1
    :try_start_1
    new-instance v1, Lcom/amap/api/mapcore/util/s;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/s;-><init>()V

    .line 410
    invoke-static {p1}, Lcom/amap/api/mapcore/util/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    sget-object v3, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/mapcore/util/co;

    invoke-virtual {v3, v2, v1}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v1

    .line 412
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    .line 413
    const/4 v0, 0x1

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
