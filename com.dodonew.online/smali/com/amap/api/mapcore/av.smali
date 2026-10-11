.class Lcom/amap/api/mapcore/av;
.super Landroid/view/View;
.source "MapOverlayImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/av$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/aa;

.field b:Lcom/amap/api/mapcore/av$a;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/ag;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/bd;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/autonavi/amap/mapcore/IPoint;

.field private g:Lcom/amap/api/mapcore/ag;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;

.field private final j:Landroid/os/Handler;

.field private final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v0, Lcom/amap/api/mapcore/av$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/av$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->b:Lcom/amap/api/mapcore/av$a;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->h:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/amap/api/mapcore/aw;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/aw;-><init>(Lcom/amap/api/mapcore/av;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->i:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->j:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/amap/api/mapcore/ax;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/ax;-><init>(Lcom/amap/api/mapcore/av;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->k:Ljava/lang/Runnable;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore/aa;)V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v0, Lcom/amap/api/mapcore/av$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/av$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->b:Lcom/amap/api/mapcore/av$a;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->h:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/amap/api/mapcore/aw;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/aw;-><init>(Lcom/amap/api/mapcore/av;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->i:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->j:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/amap/api/mapcore/ax;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/ax;-><init>(Lcom/amap/api/mapcore/av;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->k:Ljava/lang/Runnable;

    .line 63
    iput-object p3, p0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/av;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/amap/api/mapcore/av;->j()V

    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 196
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    iget-object v1, p0, Lcom/amap/api/mapcore/av;->b:Lcom/amap/api/mapcore/av$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string v1, "MapOverlayImageView"

    const-string v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized a()I
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/BitmapDescriptor;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 300
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 312
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v2, v1

    .line 306
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/bd;

    .line 308
    invoke-virtual {v0}, Lcom/amap/api/mapcore/bd;->a()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    invoke-virtual {v0}, Lcom/amap/api/mapcore/bd;->b()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 306
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 312
    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore/ag;
    .locals 5

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ag;

    .line 245
    instance-of v2, v0, Lcom/amap/api/mapcore/az;

    if-eqz v2, :cond_0

    .line 246
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->d()Landroid/graphics/Rect;

    move-result-object v2

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/amap/api/mapcore/av;->a(Landroid/graphics/Rect;II)Z

    move-result v2

    .line 248
    if-eqz v2, :cond_0

    .line 249
    iput-object v0, p0, Lcom/amap/api/mapcore/av;->g:Lcom/amap/api/mapcore/ag;

    .line 250
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->g:Lcom/amap/api/mapcore/ag;

    .line 254
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(I)V
    .locals 3

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/bd;

    .line 280
    invoke-virtual {v0}, Lcom/amap/api/mapcore/bd;->b()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 281
    iget-object v2, p0, Lcom/amap/api/mapcore/av;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 284
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore/ag;)V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lcom/amap/api/mapcore/av;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore/bd;)V
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    if-nez p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 267
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore/bd;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 87
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore/av;->g:Lcom/amap/api/mapcore/ag;

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore/av;->f:Lcom/autonavi/amap/mapcore/IPoint;

    .line 89
    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ag;

    .line 91
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->b()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :try_start_1
    const-string v1, "MapOverlayImageView"

    const-string v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 86
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ag;

    .line 96
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 99
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->b()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 209
    new-array v2, v5, [I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v4

    invoke-interface {p1, v5, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 210
    iget-object v2, p0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/amap/api/mapcore/aa;->f(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 214
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->g:Lcom/amap/api/mapcore/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/av;->g:Lcom/amap/api/mapcore/ag;

    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/amap/api/mapcore/av;->i()V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ag;

    .line 218
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->H()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1, v2}, Lcom/amap/api/mapcore/ag;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/amap/api/mapcore/aa;)V

    goto :goto_1

    .line 222
    :cond_4
    return-void
.end method

.method public a(Landroid/graphics/Rect;II)Z
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized b()V
    .locals 4

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :try_start_1
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->r()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    :try_start_2
    const-string v2, "MapOverlayImageView"

    const-string v3, "calFPoint"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ag;

    .line 341
    instance-of v1, v0, Lcom/amap/api/mapcore/az;

    if-eqz v1, :cond_0

    .line 342
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->d()Landroid/graphics/Rect;

    move-result-object v4

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v1, v5}, Lcom/amap/api/mapcore/av;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    .line 345
    if-eqz v1, :cond_0

    .line 347
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iput-object v2, p0, Lcom/amap/api/mapcore/av;->f:Lcom/autonavi/amap/mapcore/IPoint;

    .line 349
    iput-object v0, p0, Lcom/amap/api/mapcore/av;->g:Lcom/amap/api/mapcore/ag;

    move v0, v1

    .line 356
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore/ag;)Z
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/av;->e(Lcom/amap/api/mapcore/ag;)V

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/amap/api/mapcore/ag;)V
    .locals 3

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/amap/api/mapcore/av;->j()V

    .line 126
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :try_start_1
    const-string v1, "MapOverlayImageView"

    const-string v2, "set2Top"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ag;

    .line 226
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 231
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/amap/api/mapcore/ag;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->g:Lcom/amap/api/mapcore/ag;

    return-object v0
.end method

.method public d(Lcom/amap/api/mapcore/ag;)V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->f:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->f:Lcom/autonavi/amap/mapcore/IPoint;

    .line 138
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->d()Landroid/graphics/Rect;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iput-object v1, p0, Lcom/amap/api/mapcore/av;->f:Lcom/autonavi/amap/mapcore/IPoint;

    .line 140
    iput-object p1, p0, Lcom/amap/api/mapcore/av;->g:Lcom/amap/api/mapcore/ag;

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    iget-object v1, p0, Lcom/amap/api/mapcore/av;->g:Lcom/amap/api/mapcore/ag;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/mapcore/ag;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "MapOverlayImageView"

    const-string v2, "showInfoWindow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized e()V
    .locals 4

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ag;

    .line 318
    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->p()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    :try_start_1
    const-string v1, "MapOverlayImageView"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MapOverlayImageView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :goto_1
    monitor-exit p0

    return-void

    .line 324
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/av;->a(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/bd;

    .line 327
    invoke-virtual {v0}, Lcom/amap/api/mapcore/bd;->a()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 329
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public e(Lcom/amap/api/mapcore/ag;)V
    .locals 1

    .prologue
    .line 151
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->D()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/av;->g:Lcom/amap/api/mapcore/ag;

    .line 155
    :cond_0
    return-void
.end method

.method public declared-synchronized f()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v4}, Lcom/amap/api/mapcore/aa;->k()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    .line 367
    invoke-interface {v5}, Lcom/amap/api/mapcore/aa;->l()I

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 369
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 370
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ag;

    .line 371
    instance-of v5, v0, Lcom/amap/api/mapcore/bk;

    if-nez v5, :cond_0

    .line 374
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->f()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v5

    .line 375
    if-eqz v5, :cond_0

    .line 376
    iget-object v6, p0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v6}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v6

    iget v7, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v6, v7, v5, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 378
    iget v5, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0, v2, v5, v6}, Lcom/amap/api/mapcore/av;->a(Landroid/graphics/Rect;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 379
    new-instance v5, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v5, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/mapcore/ag;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    :try_start_2
    const-string v2, "MapOverlayImageView"

    const-string v3, "getMapScreenMarkers"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    :cond_1
    monitor-exit p0

    return-object v1

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 3

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ag;

    .line 393
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 397
    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized h()V
    .locals 4

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/av;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/av;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/amap/api/mapcore/av;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/av;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    return-void
.end method
