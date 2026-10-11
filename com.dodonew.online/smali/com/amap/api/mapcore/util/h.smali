.class public Lcom/amap/api/mapcore/util/h;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/h$a;,
        Lcom/amap/api/mapcore/util/h$b;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String;

.field private static h:Lcom/amap/api/mapcore/util/h;


# instance fields
.field a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/g;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/amap/api/mapcore/util/h$b;

.field public d:Lcom/amap/api/mapcore/util/l;

.field e:Lcom/amap/api/mapcore/util/n;

.field f:Lcom/amap/api/mapcore/util/k;

.field private g:Landroid/content/Context;

.field private i:Lcom/amap/api/mapcore/util/h$a;

.field private j:Lcom/amap/api/mapcore/util/q;

.field private k:Lcom/amap/api/mapcore/util/z;

.field private l:Ljava/util/concurrent/ExecutorService;

.field private m:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/h;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h;->l:Ljava/util/concurrent/ExecutorService;

    .line 73
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h;->m:Ljava/util/concurrent/ExecutorService;

    .line 76
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h;->c:Lcom/amap/api/mapcore/util/h$b;

    .line 84
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h;->f:Lcom/amap/api/mapcore/util/k;

    .line 42
    iput-object p1, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h;->f()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/h;Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h;->g(Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/h;
    .locals 3

    .prologue
    .line 47
    const-class v1, Lcom/amap/api/mapcore/util/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/h;->h:Lcom/amap/api/mapcore/util/h;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/amap/api/mapcore/util/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/mapcore/util/h;->h:Lcom/amap/api/mapcore/util/h;

    .line 50
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/h;->h:Lcom/amap/api/mapcore/util/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/z;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->k:Lcom/amap/api/mapcore/util/z;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h;->i()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/h$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->i:Lcom/amap/api/mapcore/util/h$a;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/amap/api/mapcore/util/z;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/z;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->k:Lcom/amap/api/mapcore/util/z;

    .line 90
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/amap/api/mapcore/util/h$b;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore/util/h$b;-><init>(Lcom/amap/api/mapcore/util/h;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/h;->c:Lcom/amap/api/mapcore/util/h$b;

    .line 93
    new-instance v0, Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h;->c:Lcom/amap/api/mapcore/util/h$b;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/l;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/mapcore/util/l;

    .line 95
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amap/api/mapcore/util/q;->a(I)Lcom/amap/api/mapcore/util/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->j:Lcom/amap/api/mapcore/util/q;

    .line 99
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h;->g()V

    .line 105
    new-instance v0, Lcom/amap/api/mapcore/util/k;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->f:Lcom/amap/api/mapcore/util/k;

    .line 106
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->f:Lcom/amap/api/mapcore/util/k;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k;->start()V

    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/l;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    .line 110
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 111
    iget-object v3, p0, Lcom/amap/api/mapcore/util/h;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/amap/api/mapcore/util/g;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/amap/api/mapcore/util/g;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h;->h()V

    .line 119
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p1}, Lcom/amap/api/mapcore/util/ag;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/l;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/g;

    .line 492
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "offlinemapv4.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    const-string v1, "offlinemapv4.png"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_1
    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/h;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "MapDownloadManager"

    const-string v2, "paseJson io"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private h(Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/g;

    .line 501
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 175
    const-string v0, "sestUploadlist: "

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->k:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/z;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/r;

    .line 180
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sestUploadlist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/amap/api/mapcore/util/r;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  list size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 185
    iget v3, v0, Lcom/amap/api/mapcore/util/r;->a:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/amap/api/mapcore/util/r;->a:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/amap/api/mapcore/util/r;->a:I

    if-ltz v3, :cond_1

    .line 187
    const/4 v3, 0x3

    iput v3, v0, Lcom/amap/api/mapcore/util/r;->a:I

    .line 192
    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/h;->g(Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;

    move-result-object v3

    .line 193
    if-nez v3, :cond_2

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCityObject is null, do not have this city\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :cond_2
    iget v4, v0, Lcom/amap/api/mapcore/util/r;->a:I

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/g;->a(I)V

    .line 197
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->o()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/g;->setCompleteCode(I)V

    .line 198
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/g;->setVersion(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore/util/g;->setUrl(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/mapcore/util/g;)V

    goto/16 :goto_0

    .line 203
    :cond_3
    return-void
.end method

.method private i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Lcom/amap/api/mapcore/util/o;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/o;->a(Landroid/content/Context;)V

    .line 315
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/o;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 316
    if-eqz v0, :cond_0

    .line 317
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/l;->a(Ljava/util/List;)V

    .line 320
    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/g;)V
    .locals 3

    .prologue
    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->j:Lcom/amap/api/mapcore/util/q;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/p;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bl;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/h$a;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/amap/api/mapcore/util/h;->i:Lcom/amap/api/mapcore/util/h$a;

    .line 566
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    if-nez p1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->i:Lcom/amap/api/mapcore/util/h$a;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->i:Lcom/amap/api/mapcore/util/h$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/h$a;->b(Lcom/amap/api/mapcore/util/g;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->l:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 240
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->l:Ljava/util/concurrent/ExecutorService;

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/util/h$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/h$1;-><init>(Lcom/amap/api/mapcore/util/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/r;

    .line 213
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/h;->g(Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_0

    .line 215
    sget-object v3, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update from Verify: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6f

    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/g;->a(Lcom/amap/api/mapcore/util/r;)V

    .line 218
    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/g;)V

    goto :goto_0

    .line 222
    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 427
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/g;

    .line 428
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->c()Lcom/amap/api/mapcore/util/al;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/api/mapcore/util/g;->c:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 429
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->c()Lcom/amap/api/mapcore/util/al;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/api/mapcore/util/g;->b:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->f()V

    goto :goto_0

    .line 434
    :cond_2
    return-void
.end method

.method public b(Lcom/amap/api/mapcore/util/g;)V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/mapcore/util/g;)V

    .line 415
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->c:Lcom/amap/api/mapcore/util/h$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 416
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->c:Lcom/amap/api/mapcore/util/h$b;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/h$b;->sendMessage(Landroid/os/Message;)Z

    .line 420
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h;->g(Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;

    move-result-object v0

    .line 331
    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/g;

    .line 443
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->c()Lcom/amap/api/mapcore/util/al;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/api/mapcore/util/g;->c:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->f()V

    .line 449
    :cond_1
    return-void
.end method

.method public c(Lcom/amap/api/mapcore/util/g;)V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->j:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/p;)V

    .line 545
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h;->g(Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;

    move-result-object v0

    .line 346
    if-nez v0, :cond_1

    .line 347
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->i:Lcom/amap/api/mapcore/util/h$a;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->i:Lcom/amap/api/mapcore/util/h$a;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/h$a;->c(Lcom/amap/api/mapcore/util/g;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/mapcore/util/n;

    if-nez v1, :cond_2

    .line 355
    new-instance v1, Lcom/amap/api/mapcore/util/n;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/n;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/mapcore/util/n;

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->m:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_3

    .line 359
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/h;->m:Ljava/util/concurrent/ExecutorService;

    .line 362
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/amap/api/mapcore/util/h$2;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/util/h$2;-><init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/g;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->l:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->f:Lcom/amap/api/mapcore/util/k;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->f:Lcom/amap/api/mapcore/util/k;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->f:Lcom/amap/api/mapcore/util/k;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k;->interrupt()V

    .line 478
    :cond_1
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h;->f:Lcom/amap/api/mapcore/util/k;

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->j:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->b()V

    .line 482
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/l;->g()V

    .line 484
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/h;->e()V

    .line 486
    sput-object v1, Lcom/amap/api/mapcore/util/h;->h:Lcom/amap/api/mapcore/util/h;

    .line 488
    return-void
.end method

.method public d(Lcom/amap/api/mapcore/util/g;)V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->j:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q;->b(Lcom/amap/api/mapcore/util/p;)V

    .line 556
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h;->g(Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->f()V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCityObject is null, do not have this city\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->i:Lcom/amap/api/mapcore/util/h$a;

    .line 573
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h;->h(Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g;->f()V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCityObject is null, do not have this city\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
