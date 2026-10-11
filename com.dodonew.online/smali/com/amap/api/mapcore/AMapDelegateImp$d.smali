.class Lcom/amap/api/mapcore/AMapDelegateImp$d;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:Lcom/autonavi/amap/mapcore/FPoint;

.field b:Lcom/autonavi/amap/mapcore/IPoint;

.field c:Lcom/autonavi/amap/mapcore/IPoint;

.field d:Lcom/amap/api/mapcore/o;

.field final synthetic e:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 1

    .prologue
    .line 2519
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2520
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 2521
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->b:Lcom/autonavi/amap/mapcore/IPoint;

    .line 2675
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->c:Lcom/autonavi/amap/mapcore/IPoint;

    .line 2676
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->c:Lcom/autonavi/amap/mapcore/IPoint;

    .line 2677
    invoke-static {v0}, Lcom/amap/api/mapcore/o;->a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/mapcore/o;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->d:Lcom/amap/api/mapcore/o;

    .line 2676
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V
    .locals 0

    .prologue
    .line 2519
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp$d;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2525
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2526
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->t(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2528
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->t()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2535
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2536
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;I)I

    .line 2537
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->a:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 2538
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->a:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 2539
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->b:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 2540
    const/4 v0, 0x1

    return v0

    .line 2529
    :catch_0
    move-exception v0

    .line 2530
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "onDown"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 2546
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2548
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ap;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 2583
    :cond_0
    :goto_0
    return v9

    .line 2551
    :catch_0
    move-exception v0

    .line 2552
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "onFling"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2557
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->u(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->u(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/c;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->k()I

    move-result v0

    .line 2563
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->l()I

    move-result v1

    .line 2564
    mul-int/lit8 v6, v0, 0x2

    .line 2565
    mul-int/lit8 v8, v1, 0x2

    .line 2566
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    div-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Lcom/amap/api/mapcore/AMapDelegateImp;I)I

    .line 2567
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->c(Lcom/amap/api/mapcore/AMapDelegateImp;I)I

    .line 2568
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/AMap$CancelableCallback;)Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 2569
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 2570
    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->w(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->w(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v0

    .line 2571
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->F()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2572
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->f(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2573
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->x(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bg;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2574
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->x(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bg;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/amap/api/mapcore/bg;->c(Z)V

    .line 2577
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->y(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->z(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v2

    neg-float v3, p3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    neg-float v4, p4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    neg-int v5, v6

    neg-int v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/mapcore/n;->a(IIIIIIII)V

    .line 2580
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    if-eqz v0, :cond_0

    .line 2581
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->g:Lcom/amap/api/mapcore/bn;

    invoke-virtual {v0, v9}, Lcom/amap/api/mapcore/bn;->b(Z)V

    goto/16 :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2588
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2589
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/av;->a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore/ag;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/ag;)Lcom/amap/api/mapcore/ag;

    .line 2590
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->B(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->C(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 2591
    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->C(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2592
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    new-instance v1, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->C(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/mapcore/ag;)V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/maps/model/Marker;)Lcom/amap/api/maps/model/Marker;

    .line 2593
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->D(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    .line 2594
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->C(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/ag;->g()Lcom/amap/api/maps/model/LatLng;

    move-result-object v7

    .line 2595
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2596
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-wide v2, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2598
    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/lit8 v1, v1, -0x3c

    iput v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 2599
    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2600
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2601
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v4, v8

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v8

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v0, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v0, v8

    iget-wide v6, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v0, v6

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 2604
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->D(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 2605
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->C(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/av;->c(Lcom/amap/api/mapcore/ag;)V

    .line 2606
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->B(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->D(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps/model/Marker;)V

    .line 2607
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v10}, Lcom/amap/api/mapcore/AMapDelegateImp;->g(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2616
    :cond_0
    :goto_0
    return-void

    .line 2609
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->E(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2610
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2611
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2612
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->E(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps/model/LatLng;)V

    .line 2613
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v10}, Lcom/amap/api/mapcore/AMapDelegateImp;->h(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2621
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v5}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2622
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 2623
    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->A(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/n;->j()I

    move-result v0

    if-eq v0, v5, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 2624
    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->u(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2625
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->u(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/c;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 2626
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2672
    :goto_0
    return v5

    .line 2633
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 2634
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    goto :goto_0

    .line 2638
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ap;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2639
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2666
    :catch_0
    move-exception v0

    .line 2667
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "onScroll"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2643
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->n(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v0

    if-le v0, v5, :cond_5

    .line 2644
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    goto :goto_0

    .line 2647
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 2648
    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->w(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->w(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ag;

    move-result-object v0

    .line 2649
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->F()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2650
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->x(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bg;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2651
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->x(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/bg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/bg;->c(Z)V

    .line 2654
    :cond_6
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2655
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 2657
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->b:Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v2

    .line 2658
    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->b:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v0, v2, v0

    .line 2660
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2661
    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->r(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 2662
    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->c:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v4

    iput v1, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 2663
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->c:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 2664
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->d:Lcom/amap/api/mapcore/o;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->c:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, v0, Lcom/amap/api/mapcore/o;->o:Lcom/autonavi/amap/mapcore/IPoint;

    .line 2665
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->e:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->e:Lcom/amap/api/mapcore/au;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$d;->d:Lcom/amap/api/mapcore/o;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/au;->a(Lcom/amap/api/mapcore/o;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 2682
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2686
    const/4 v0, 0x0

    return v0
.end method
