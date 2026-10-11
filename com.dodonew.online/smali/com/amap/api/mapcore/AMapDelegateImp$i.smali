.class Lcom/amap/api/mapcore/AMapDelegateImp$i;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 0

    .prologue
    .line 3898
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3899
    iput-object p2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->b:Landroid/content/Context;

    .line 3900
    iput-object p3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    .line 3901
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3931
    instance-of v0, p1, Lcom/amap/api/mapcore/AMapDelegateImp$i;

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3905
    .line 3907
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3908
    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3909
    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 3910
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 3911
    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_2

    move v6, v0

    .line 3918
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    const/16 v1, 0xa29

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 3919
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v0, :cond_0

    .line 3920
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {v0, v6}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 3927
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 3910
    goto :goto_0

    :cond_2
    move v6, v1

    .line 3911
    goto :goto_1

    .line 3922
    :catch_0
    move-exception v0

    .line 3923
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 3912
    :catch_1
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 3913
    :goto_3
    :try_start_3
    const-string v2, "AMapDelegateImpGLSurfaceView"

    const-string v3, "RemoveCacheRunnable"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3915
    const/4 v6, 0x0

    .line 3918
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    const/16 v1, 0xa29

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 3919
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v0, :cond_0

    .line 3920
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {v0, v6}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 3922
    :catch_2
    move-exception v0

    .line 3923
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 3917
    :catchall_0
    move-exception v1

    move-object v6, v1

    move v7, v0

    .line 3918
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    const/16 v1, 0xa29

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 3919
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v0, :cond_3

    .line 3920
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$i;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {v0, v7}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 3924
    :cond_3
    :goto_5
    throw v6

    .line 3922
    :catch_3
    move-exception v0

    .line 3923
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 3917
    :catchall_1
    move-exception v0

    move-object v6, v0

    move v7, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v0

    move v7, v1

    goto :goto_4

    .line 3912
    :catch_4
    move-exception v0

    move v1, v2

    goto :goto_3
.end method
