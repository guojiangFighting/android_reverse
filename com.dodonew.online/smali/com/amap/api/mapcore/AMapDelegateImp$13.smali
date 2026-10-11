.class Lcom/amap/api/mapcore/AMapDelegateImp$13;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;->i(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Z)V
    .locals 0

    .prologue
    .line 2004
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$13;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2007
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$13;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$13;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    const/16 v1, 0x400

    iget-boolean v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$13;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 2009
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 2008
    goto :goto_0
.end method
