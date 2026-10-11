.class Lcom/amap/api/mapcore/AMapDelegateImp$c;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 2852
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V
    .locals 0

    .prologue
    .line 2852
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp$c;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2858
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->m(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ap;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 2888
    :cond_0
    :goto_0
    return v4

    .line 2861
    :catch_0
    move-exception v0

    .line 2862
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2865
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->n(Lcom/amap/api/mapcore/AMapDelegateImp;)I

    move-result v0

    if-gt v0, v4, :cond_0

    .line 2868
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2869
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->r(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    .line 2871
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->r()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2874
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2876
    float-to-int v0, v0

    .line 2877
    float-to-int v1, v1

    .line 2879
    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 2880
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/o;->a(FLandroid/graphics/Point;)Lcom/amap/api/mapcore/o;

    move-result-object v0

    .line 2882
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Lcom/amap/api/mapcore/o;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2883
    :catch_1
    move-exception v0

    .line 2884
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "onDoubleTap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2894
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 2900
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 2901
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->F(Lcom/amap/api/mapcore/AMapDelegateImp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2902
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->h(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 3030
    :cond_0
    :goto_0
    return v8

    .line 2906
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2907
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 2908
    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 2909
    invoke-static {v4}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2910
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 2911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 2910
    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore/av;->a(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2912
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->G(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2913
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    .line 2914
    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->d()Lcom/amap/api/mapcore/ag;

    move-result-object v0

    .line 2915
    invoke-interface {v0}, Lcom/amap/api/mapcore/ag;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2918
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/mapcore/ag;)V

    .line 2919
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->G(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3024
    :catch_0
    move-exception v0

    .line 3025
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "onSingleTapUp"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2924
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/av;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2925
    if-eqz v0, :cond_6

    .line 2926
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    .line 2927
    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->d()Lcom/amap/api/mapcore/ag;

    move-result-object v7

    .line 2928
    if-eqz v7, :cond_0

    invoke-interface {v7}, Lcom/amap/api/mapcore/ag;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2932
    new-instance v0, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v0, v7}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/mapcore/ag;)V

    .line 2933
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->H(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2934
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->H(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    move-result-object v1

    .line 2935
    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z

    move-result v0

    .line 2936
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->a()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2937
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, v7}, Lcom/amap/api/mapcore/av;->c(Lcom/amap/api/mapcore/ag;)V

    goto/16 :goto_0

    .line 2941
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->b(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$c$1;

    invoke-direct {v1, p0, v7}, Lcom/amap/api/mapcore/AMapDelegateImp$c$1;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp$c;Lcom/amap/api/mapcore/ag;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2957
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->d()Lcom/amap/api/mapcore/ag;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2958
    invoke-interface {v7}, Lcom/amap/api/mapcore/ag;->F()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2959
    invoke-interface {v7}, Lcom/amap/api/mapcore/ag;->g()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    .line 2960
    if-eqz v0, :cond_5

    .line 2961
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2962
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2964
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 2965
    invoke-static {v6}, Lcom/amap/api/mapcore/o;->a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/mapcore/o;

    move-result-object v1

    .line 2964
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/o;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2977
    :cond_5
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->d:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, v7}, Lcom/amap/api/mapcore/av;->c(Lcom/amap/api/mapcore/ag;)V

    goto/16 :goto_0

    .line 2970
    :catch_1
    move-exception v0

    .line 2971
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "onSingleTapUp moveCamera"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2980
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->I(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapClickListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2981
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2982
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2983
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->I(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnMapClickListener;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps/model/LatLng;)V

    .line 2986
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->J(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2988
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2989
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2990
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 2991
    if-eqz v1, :cond_8

    .line 2993
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp;->h:Lcom/amap/api/mapcore/v;

    .line 2994
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/v;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/mapcore/ai;

    move-result-object v0

    .line 2995
    if-eqz v0, :cond_8

    .line 2997
    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->J(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/Polyline;

    check-cast v0, Lcom/amap/api/mapcore/ak;

    invoke-direct {v2, v0}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/amap/api/mapcore/ak;)V

    .line 2998
    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnPolylineClickListener;->onPolylineClick(Lcom/amap/api/maps/model/Polyline;)V

    goto/16 :goto_0

    .line 3005
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$c;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$c$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp$c$2;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp$c;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
