.class public final Lcom/amap/api/maps/AMap;
.super Ljava/lang/Object;
.source "AMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/AMap$OnMapScreenShotListener;,
        Lcom/amap/api/maps/AMap$onMapPrintScreenListener;,
        Lcom/amap/api/maps/AMap$OnCacheRemoveListener;,
        Lcom/amap/api/maps/AMap$OnPOIClickListener;,
        Lcom/amap/api/maps/AMap$OnMapLoadedListener;,
        Lcom/amap/api/maps/AMap$OnMapTouchListener;,
        Lcom/amap/api/maps/AMap$OnMapClickListener;,
        Lcom/amap/api/maps/AMap$OnMapLongClickListener;,
        Lcom/amap/api/maps/AMap$OnCameraChangeListener;,
        Lcom/amap/api/maps/AMap$OnMarkerClickListener;,
        Lcom/amap/api/maps/AMap$OnPolylineClickListener;,
        Lcom/amap/api/maps/AMap$OnMarkerDragListener;,
        Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;,
        Lcom/amap/api/maps/AMap$CancelableCallback;,
        Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;,
        Lcom/amap/api/maps/AMap$InfoWindowAdapter;
    }
.end annotation


# static fields
.field public static final LOCATION_TYPE_LOCATE:I = 0x1

.field public static final LOCATION_TYPE_MAP_FOLLOW:I = 0x2

.field public static final LOCATION_TYPE_MAP_ROTATE:I = 0x3

.field public static final MAP_TYPE_NAVI:I = 0x4

.field public static final MAP_TYPE_NIGHT:I = 0x3

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2


# instance fields
.field private final a:Lcom/amap/api/mapcore/aa;

.field private b:Lcom/amap/api/maps/UiSettings;

.field private c:Lcom/amap/api/maps/Projection;

.field private d:Lcom/amap/api/maps/model/MyTrafficStyle;


# direct methods
.method protected constructor <init>(Lcom/amap/api/mapcore/aa;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    .line 341
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1311
    const-string v0, "3.2.0"

    return-object v0
.end method


# virtual methods
.method public final addArc(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/maps/model/Arc;
    .locals 2

    .prologue
    .line 538
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/Arc;

    iget-object v1, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v1, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/mapcore/ab;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Arc;-><init>(Lcom/amap/api/mapcore/ab;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;
    .locals 2

    .prologue
    .line 523
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/Circle;

    iget-object v1, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v1, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/mapcore/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Circle;-><init>(Lcom/amap/api/mapcore/ac;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addGroundOverlay(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/maps/model/GroundOverlay;
    .locals 2

    .prologue
    .line 568
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/GroundOverlay;

    iget-object v1, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v1, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/mapcore/ae;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/GroundOverlay;-><init>(Lcom/amap/api/mapcore/ae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 2

    .prologue
    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addMarkers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore/aa;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addNavigateArrow(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/maps/model/NavigateArrow;
    .locals 2

    .prologue
    .line 493
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/NavigateArrow;

    iget-object v1, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v1, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/mapcore/ah;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/NavigateArrow;-><init>(Lcom/amap/api/mapcore/ah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;
    .locals 2

    .prologue
    .line 553
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/Polygon;

    iget-object v1, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v1, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/mapcore/aj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Polygon;-><init>(Lcom/amap/api/mapcore/aj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;
    .locals 2

    .prologue
    .line 508
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/Polyline;

    iget-object v1, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v1, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/mapcore/ak;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/amap/api/mapcore/ak;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addText(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 2

    .prologue
    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addTileOverlay(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 2

    .prologue
    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 2

    .prologue
    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    .line 418
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->a()Lcom/amap/api/mapcore/o;

    move-result-object v1

    .line 417
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->b(Lcom/amap/api/mapcore/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2

    .prologue
    .line 461
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    const-string v1, "durationMs must be positive"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/au;->b(ZLjava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    .line 464
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->a()Lcom/amap/api/mapcore/o;

    move-result-object v1

    .line 463
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/mapcore/o;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2

    .prologue
    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    .line 440
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->a()Lcom/amap/api/mapcore/o;

    move-result-object v1

    .line 439
    invoke-interface {v0, v1, p2}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/mapcore/o;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->u()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final clear(Z)V
    .locals 2

    .prologue
    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->g(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    .locals 2

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->q()Lcom/amap/api/maps/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getMapPrintScreen(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V

    .line 1164
    return-void
.end method

.method public final getMapScreenMarkers()Ljava/util/List;
    .locals 2
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
    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->L()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V

    .line 1174
    return-void
.end method

.method public final getMapTextZIndex()I
    .locals 2

    .prologue
    .line 1297
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->Q()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMapType()I
    .locals 2

    .prologue
    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->v()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMaxZoomLevel()F
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->r()F

    move-result v0

    return v0
.end method

.method public final getMinZoomLevel()F
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->s()F

    move-result v0

    return v0
.end method

.method public final getMyLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->y()Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getMyTrafficStyle()Lcom/amap/api/maps/model/MyTrafficStyle;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->d:Lcom/amap/api/maps/model/MyTrafficStyle;

    return-object v0
.end method

.method public final getProjection()Lcom/amap/api/maps/Projection;
    .locals 2

    .prologue
    .line 932
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->c:Lcom/amap/api/maps/Projection;

    if-nez v0, :cond_0

    .line 933
    new-instance v0, Lcom/amap/api/maps/Projection;

    iget-object v1, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    .line 934
    invoke-interface {v1}, Lcom/amap/api/mapcore/aa;->A()Lcom/amap/api/mapcore/al;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/Projection;-><init>(Lcom/amap/api/mapcore/al;)V

    iput-object v0, p0, Lcom/amap/api/maps/AMap;->c:Lcom/amap/api/maps/Projection;

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->c:Lcom/amap/api/maps/Projection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getScalePerPixel()F
    .locals 2

    .prologue
    .line 1184
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->J()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getUiSettings()Lcom/amap/api/maps/UiSettings;
    .locals 2

    .prologue
    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->b:Lcom/amap/api/maps/UiSettings;

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Lcom/amap/api/maps/UiSettings;

    iget-object v1, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    .line 915
    invoke-interface {v1}, Lcom/amap/api/mapcore/aa;->z()Lcom/amap/api/mapcore/ap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/UiSettings;-><init>(Lcom/amap/api/mapcore/ap;)V

    iput-object v0, p0, Lcom/amap/api/maps/AMap;->b:Lcom/amap/api/maps/UiSettings;

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->b:Lcom/amap/api/maps/UiSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isMyLocationEnabled()Z
    .locals 2

    .prologue
    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->x()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isTrafficEnabled()Z
    .locals 2

    .prologue
    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->w()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 2

    .prologue
    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    .line 402
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->a()Lcom/amap/api/mapcore/o;

    move-result-object v1

    .line 401
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/mapcore/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public reloadMap()V
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->W()V

    .line 1320
    return-void
.end method

.method public removecache()V
    .locals 2

    .prologue
    .line 1205
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->T()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    return-void

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 2

    .prologue
    .line 1220
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    return-void

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public runOnDrawFrame()V
    .locals 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 1195
    return-void
.end method

.method public setCustomRenderer(Lcom/amap/api/maps/CustomRenderer;)V
    .locals 2

    .prologue
    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/CustomRenderer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    return-void

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 2

    .prologue
    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setLoadOfflineData(Z)V
    .locals 2

    .prologue
    .line 1283
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->n(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    return-void

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setLocationSource(Lcom/amap/api/maps/LocationSource;)V
    .locals 2

    .prologue
    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/LocationSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMapTextZIndex(I)V
    .locals 2

    .prologue
    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->g(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    return-void

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMapType(I)V
    .locals 2

    .prologue
    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 2

    .prologue
    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->k(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationRotateAngle(F)V
    .locals 2

    .prologue
    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 2

    .prologue
    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/model/MyLocationStyle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    return-void

    .line 872
    :catch_0
    move-exception v0

    .line 873
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationType(I)V
    .locals 2

    .prologue
    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    return-void

    .line 886
    :catch_0
    move-exception v0

    .line 887
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
    .locals 5

    .prologue
    .line 768
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/maps/AMap;->d:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 769
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSmoothColor()I

    move-result v1

    .line 770
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSlowColor()I

    move-result v2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getCongestedColor()I

    move-result v3

    .line 771
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSeriousCongestedColor()I

    move-result v4

    .line 769
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore/aa;->a(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 2

    .prologue
    .line 951
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    return-void

    .line 952
    :catch_0
    move-exception v0

    .line 953
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 2

    .prologue
    .line 1086
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 2

    .prologue
    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    return-void

    .line 966
    :catch_0
    move-exception v0

    .line 967
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 2

    .prologue
    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    return-void

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 2

    .prologue
    .line 1025
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    return-void

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 2

    .prologue
    .line 979
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    return-void

    .line 980
    :catch_0
    move-exception v0

    .line 981
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 2

    .prologue
    .line 1040
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    return-void

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 2

    .prologue
    .line 1071
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    return-void

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 2

    .prologue
    .line 1009
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    return-void

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 2

    .prologue
    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    return-void

    .line 995
    :catch_0
    move-exception v0

    .line 996
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 2

    .prologue
    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    return-void

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPointToCenter(II)V
    .locals 2

    .prologue
    .line 1253
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore/aa;->a(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    return-void

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setTrafficEnabled(Z)V
    .locals 2

    .prologue
    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->h(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    return-void

    .line 729
    :catch_0
    move-exception v0

    .line 730
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public showIndoorMap(Z)V
    .locals 2

    .prologue
    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->j(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 757
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public showMapText(Z)V
    .locals 2

    .prologue
    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->i(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final stopAnimation()V
    .locals 2

    .prologue
    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->t()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
