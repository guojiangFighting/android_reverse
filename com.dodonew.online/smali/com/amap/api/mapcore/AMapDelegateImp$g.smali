.class Lcom/amap/api/mapcore/AMapDelegateImp$g;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/o;

.field final synthetic b:Lcom/amap/api/mapcore/AMapDelegateImp;

.field private c:F

.field private d:Lcom/autonavi/amap/mapcore/IPoint;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 1

    .prologue
    .line 2438
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2443
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->c:F

    .line 2444
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->d:Lcom/autonavi/amap/mapcore/IPoint;

    .line 2446
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->a:Lcom/amap/api/mapcore/o;

    .line 2445
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V
    .locals 0

    .prologue
    .line 2438
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp$g;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2453
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->k(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2463
    :cond_0
    :goto_0
    return v6

    .line 2456
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 2457
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->l(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v1

    if-nez v1, :cond_2

    float-to-double v2, v0

    const-wide v4, 0x3ff147ae147ae148L    # 1.08

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_2

    float-to-double v2, v0

    const-wide v4, 0x3fed70a3d70a3d71L    # 0.92

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 2458
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->c(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2459
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {}, Lcom/amap/api/mapcore/AMapDelegateImp;->aa()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 2460
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->a:Lcom/amap/api/mapcore/o;

    iget v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->c:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(F)F

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/o;->d:F

    .line 2461
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->a:Lcom/amap/api/mapcore/o;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 2472
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ap;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/ap;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->n(Lcom/amap/api/mapcore/AMapDelegateImp;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ge v1, v4, :cond_1

    .line 2496
    :cond_0
    :goto_0
    return v0

    .line 2475
    :catch_0
    move-exception v1

    .line 2476
    const-string v2, "AMapDelegateImpGLSurfaceView"

    const-string v3, "onScaleBegin"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2481
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;I)I

    .line 2482
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->k(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2485
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->o(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2486
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->a:Lcom/amap/api/mapcore/o;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->o(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/amap/api/mapcore/o;->n:Z

    .line 2487
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->a:Lcom/amap/api/mapcore/o;

    sget-object v2, Lcom/amap/api/mapcore/o$a;->g:Lcom/amap/api/mapcore/o$a;

    iput-object v2, v1, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    .line 2488
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->p(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->q(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->d:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 2489
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->a:Lcom/amap/api/mapcore/o;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->d:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v2, v1, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    .line 2493
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->c(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2494
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->r(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->c:F

    .line 2496
    const/4 v0, 0x1

    goto :goto_0

    .line 2491
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->a:Lcom/amap/api/mapcore/o;

    sget-object v2, Lcom/amap/api/mapcore/o$a;->i:Lcom/amap/api/mapcore/o$a;

    iput-object v2, v1, Lcom/amap/api/mapcore/o;->a:Lcom/amap/api/mapcore/o$a;

    goto :goto_1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    .prologue
    .line 2501
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->c:F

    .line 2502
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->l(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2503
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->c(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2505
    invoke-static {}, Lcom/amap/api/mapcore/o;->a()Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 2506
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/o;->p:Z

    .line 2507
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V

    .line 2509
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$g;->b:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->s(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    .line 2510
    return-void
.end method
