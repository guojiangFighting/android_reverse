.class Lcom/amap/api/mapcore/bf;
.super Ljava/lang/Object;
.source "PolylineDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/ak;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:[F

.field private I:[I

.field private J:[I

.field private K:D

.field private a:Lcom/amap/api/mapcore/v;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/nio/FloatBuffer;

.field private j:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private k:Lcom/amap/api/maps/model/LatLngBounds;

.field private l:Ljava/lang/Object;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/v;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->c:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->d:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->e:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->f:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->g:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    .line 45
    iput-object v4, p0, Lcom/amap/api/mapcore/bf;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 46
    iput-object v4, p0, Lcom/amap/api/mapcore/bf;->k:Lcom/amap/api/maps/model/LatLngBounds;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->l:Ljava/lang/Object;

    .line 48
    iput-boolean v3, p0, Lcom/amap/api/mapcore/bf;->m:Z

    .line 49
    iput-boolean v3, p0, Lcom/amap/api/mapcore/bf;->n:Z

    .line 50
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bf;->o:Z

    .line 51
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bf;->p:Z

    .line 52
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bf;->q:Z

    .line 54
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bf;->r:Z

    .line 55
    iput-boolean v3, p0, Lcom/amap/api/mapcore/bf;->s:Z

    .line 56
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bf;->t:Z

    .line 58
    iput v1, p0, Lcom/amap/api/mapcore/bf;->u:I

    .line 59
    iput v1, p0, Lcom/amap/api/mapcore/bf;->v:I

    .line 60
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/mapcore/bf;->w:I

    .line 61
    iput v1, p0, Lcom/amap/api/mapcore/bf;->x:I

    .line 62
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/bf;->y:F

    .line 63
    iput v2, p0, Lcom/amap/api/mapcore/bf;->z:F

    .line 64
    iput v2, p0, Lcom/amap/api/mapcore/bf;->A:F

    .line 69
    iput v2, p0, Lcom/amap/api/mapcore/bf;->F:F

    .line 70
    iput v2, p0, Lcom/amap/api/mapcore/bf;->G:F

    .line 81
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/amap/api/mapcore/bf;->K:D

    .line 122
    iput-object p1, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bf;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v1, "PolylineDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(DDDDDD)D
    .locals 9

    .prologue
    .line 921
    sub-double v0, p9, p5

    sub-double v2, p1, p5

    mul-double/2addr v0, v2

    sub-double v2, p11, p7

    sub-double v4, p3, p7

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 922
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 923
    sub-double v0, p1, p5

    sub-double v2, p1, p5

    mul-double/2addr v0, v2

    sub-double v2, p3, p7

    sub-double v4, p3, p7

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 932
    :goto_0
    return-wide v0

    .line 925
    :cond_0
    sub-double v2, p9, p5

    sub-double v4, p9, p5

    mul-double/2addr v2, v4

    sub-double v4, p11, p7

    sub-double v6, p11, p7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 926
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 927
    sub-double v0, p1, p9

    sub-double v2, p1, p9

    mul-double/2addr v0, v2

    sub-double v2, p3, p11

    sub-double v4, p3, p11

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0

    .line 929
    :cond_1
    div-double/2addr v0, v2

    .line 930
    sub-double v2, p9, p5

    mul-double/2addr v2, v0

    add-double/2addr v2, p5

    .line 931
    sub-double v4, p11, p7

    mul-double/2addr v0, v4

    add-double v0, v0, p7

    .line 932
    sub-double v4, p1, v2

    sub-double v2, p1, v2

    mul-double/2addr v2, v4

    sub-double v4, v0, p3

    sub-double/2addr v0, p3

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)D
    .locals 16

    .prologue
    .line 891
    move-object/from16 v0, p1

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v4, v2

    move-object/from16 v0, p1

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v6, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v8, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v10, v2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v12, v2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v14, v2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/amap/api/mapcore/bf;->a(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 588
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bf;->q:Z

    if-nez v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->J:[I

    move v1, v2

    .line 591
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->J:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->K()I

    move-result v0

    .line 593
    if-nez v0, :cond_3

    .line 594
    new-array v0, v4, [I

    aput v2, v0, v2

    .line 595
    invoke-interface {p1, v4, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 596
    aget v0, v0, v2

    move v3, v0

    .line 598
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 599
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 598
    invoke-static {p1, v3, v0, v4}, Lcom/amap/api/mapcore/util/bk;->b(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;Z)I

    .line 600
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->J:[I

    aput v3, v0, v1

    .line 591
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 602
    :cond_0
    iput-boolean v4, p0, Lcom/amap/api/mapcore/bf;->q:Z

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 605
    :goto_2
    array-length v0, v3

    if-ge v2, v0, :cond_2

    .line 606
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->J:[I

    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    aput v0, v3, v2

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 608
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->H:[F

    array-length v1, v1

    array-length v4, v3

    iget-object v5, p0, Lcom/amap/api/mapcore/bf;->I:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->I:[I

    array-length v6, v2

    iget v7, p0, Lcom/amap/api/mapcore/bf;->F:F

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiTextureID([FIF[II[IIF)V

    .line 612
    return-void

    :cond_3
    move v3, v0

    goto :goto_1
.end method

.method private a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 2

    .prologue
    .line 510
    iget v0, p2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/bf;->G:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v0, v1

    .line 511
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/bf;->G:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/bf;->y:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    .line 563
    iget v1, p0, Lcom/amap/api/mapcore/bf;->u:I

    packed-switch v1, :pswitch_data_0

    .line 585
    :goto_0
    return-void

    .line 565
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/bf;->f(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 568
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/bf;->e(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 571
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/bf;->d(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 574
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/bf;->c(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 577
    :pswitch_4
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/bf;->b(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 580
    :pswitch_5
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/bf;->a(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 8

    .prologue
    .line 615
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 616
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 616
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->H:[F

    array-length v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    .line 620
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/bf;->I:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->I:[I

    array-length v6, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v2, v2, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    .line 621
    invoke-interface {v2}, Lcom/amap/api/mapcore/aa;->b()I

    move-result v7

    move v2, p2

    .line 619
    invoke-static/range {v0 .. v7}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawGradientColorLine([FIF[II[III)V

    .line 622
    return-void
.end method

.method private c(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/FPoint;
    .locals 7

    .prologue
    .line 895
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 896
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v1, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 897
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 898
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v1, v1, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/mapcore/aa;->b(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 900
    return-object v0
.end method

.method private c(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 8

    .prologue
    .line 625
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    .line 626
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    .line 626
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->H:[F

    array-length v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v2, v2, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    .line 630
    invoke-interface {v2}, Lcom/amap/api/mapcore/aa;->b()I

    move-result v3

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    .line 631
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore/bf;->I:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->I:[I

    array-length v7, v2

    move v2, p2

    .line 629
    invoke-static/range {v0 .. v7}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiColor([FIFI[II[II)V

    .line 632
    return-void
.end method

.method private d(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 635
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bf;->q:Z

    if-nez v0, :cond_2

    .line 636
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->K()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bf;->v:I

    .line 637
    iget v0, p0, Lcom/amap/api/mapcore/bf;->v:I

    if-nez v0, :cond_0

    .line 638
    new-array v0, v2, [I

    aput v9, v0, v9

    .line 639
    invoke-interface {p1, v2, v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 640
    aget v0, v0, v9

    iput v0, p0, Lcom/amap/api/mapcore/bf;->v:I

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_1

    .line 643
    iget v0, p0, Lcom/amap/api/mapcore/bf;->v:I

    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/bk;->b(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;Z)I

    .line 645
    :cond_1
    iput-boolean v2, p0, Lcom/amap/api/mapcore/bf;->q:Z

    .line 649
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->d:Ljava/util/List;

    .line 651
    invoke-direct {p0}, Lcom/amap/api/mapcore/bf;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 652
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/bk;->a(Lcom/amap/api/mapcore/aa;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 654
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    :cond_3
    :try_start_2
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/bf;->f(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 661
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->H:[F

    array-length v1, v1

    iget v3, p0, Lcom/amap/api/mapcore/bf;->v:I

    iget v4, p0, Lcom/amap/api/mapcore/bf;->C:F

    iget v5, p0, Lcom/amap/api/mapcore/bf;->D:F

    iget v6, p0, Lcom/amap/api/mapcore/bf;->E:F

    iget v7, p0, Lcom/amap/api/mapcore/bf;->B:F

    iget v8, p0, Lcom/amap/api/mapcore/bf;->F:F

    move v2, p2

    move v10, v9

    move v11, v9

    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V

    .line 664
    return-void

    .line 654
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private e(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 12

    .prologue
    const/4 v9, 0x1

    .line 667
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->H:[F

    array-length v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v2, v2, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    .line 668
    invoke-interface {v2}, Lcom/amap/api/mapcore/aa;->o()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/bf;->C:F

    iget v5, p0, Lcom/amap/api/mapcore/bf;->D:F

    iget v6, p0, Lcom/amap/api/mapcore/bf;->E:F

    iget v7, p0, Lcom/amap/api/mapcore/bf;->B:F

    const/4 v8, 0x0

    const/4 v11, 0x0

    move v2, p2

    move v10, v9

    .line 667
    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V

    .line 670
    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 462
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 465
    const/4 v0, 0x2

    if-ge v5, v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 470
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    :goto_1
    add-int/lit8 v0, v5, -0x1

    if-ge v3, v0, :cond_1

    .line 472
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 473
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/bf;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 474
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 479
    :cond_1
    add-int/lit8 v0, v5, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 482
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->I:[I

    .line 485
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->I:[I

    .line 488
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 489
    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->I:[I

    aput v1, v2, v1

    .line 491
    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->H:[F

    mul-int/lit8 v5, v1, 0x3

    iget v6, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v6, v2, v5

    .line 492
    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->H:[F

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v0, v2, v5

    .line 493
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    aput v5, v0, v2

    .line 494
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 495
    goto :goto_3

    .line 496
    :cond_2
    sget-object v0, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vacuate limit width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/bf;->G:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",zoom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/bf;->A:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", before vacuate point size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", after :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private f(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 12

    .prologue
    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->d:Ljava/util/List;

    .line 676
    invoke-direct {p0}, Lcom/amap/api/mapcore/bf;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/bk;->a(Lcom/amap/api/mapcore/aa;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 679
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    :cond_0
    :try_start_2
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/bf;->f(Ljava/util/List;)V

    .line 684
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->H:[F

    array-length v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v2, v2, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    .line 685
    invoke-interface {v2}, Lcom/amap/api/mapcore/aa;->b()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/bf;->C:F

    iget v5, p0, Lcom/amap/api/mapcore/bf;->D:F

    iget v6, p0, Lcom/amap/api/mapcore/bf;->E:F

    iget v7, p0, Lcom/amap/api/mapcore/bf;->B:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v2, p2

    .line 684
    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 691
    :goto_0
    return-void

    .line 679
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    sget-object v1, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " drawSingleColorLine exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x73

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private g(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1009
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 1010
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    move v4, v2

    .line 1012
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1013
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1014
    if-nez v1, :cond_1

    .line 1015
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    :goto_1
    aput v1, v5, v3

    .line 1024
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    .line 1012
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1017
    :cond_1
    if-eq v0, v4, :cond_0

    .line 1020
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1026
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->I:[I

    .line 1027
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->I:[I

    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->I:[I

    array-length v1, v1

    invoke-static {v5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1028
    return-object v6
.end method

.method private o()V
    .locals 4

    .prologue
    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 444
    iget v0, p0, Lcom/amap/api/mapcore/bf;->x:I

    const/16 v2, 0x1388

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/bf;->A:F

    const/high16 v2, 0x41400000    # 12.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 445
    iget v0, p0, Lcom/amap/api/mapcore/bf;->y:F

    div-float/2addr v0, v3

    iget v2, p0, Lcom/amap/api/mapcore/bf;->A:F

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 446
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v1, v1, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v1}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bf;->G:F

    .line 452
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 446
    goto :goto_0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bf;->G:F

    goto :goto_1
.end method

.method private p()Z
    .locals 27

    .prologue
    .line 694
    const/4 v2, 0x0

    .line 696
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v3, v3, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v3}, Lcom/amap/api/mapcore/aa;->q()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v3

    iget v3, v3, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/amap/api/mapcore/bf;->A:F

    .line 697
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/bf;->o()V

    .line 698
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/bf;->A:F

    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/bf;->u:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 699
    :cond_0
    const/4 v2, 0x0

    .line 735
    :cond_1
    :goto_0
    return v2

    .line 700
    :catch_0
    move-exception v3

    .line 701
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 705
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v3, v3, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    if-eqz v3, :cond_1

    .line 706
    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, -0x64

    const/16 v4, -0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v5, v5, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    .line 707
    invoke-interface {v5}, Lcom/amap/api/mapcore/aa;->k()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v6, v6, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    .line 708
    invoke-interface {v6}, Lcom/amap/api/mapcore/aa;->l()I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/bf;->k:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v0, v3, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v18, v0

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/bf;->k:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v0, v3, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v24, v0

    .line 711
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v3, v3, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v3 .. v8}, Lcom/amap/api/mapcore/aa;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 714
    new-instance v14, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v14}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v9, v3, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v9 .. v14}, Lcom/amap/api/mapcore/aa;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 717
    new-instance v20, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct/range {v20 .. v20}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v15, v3, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    invoke-interface/range {v15 .. v20}, Lcom/amap/api/mapcore/aa;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 720
    new-instance v26, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct/range {v26 .. v26}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v3, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    move-object/from16 v21, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    invoke-interface/range {v21 .. v26}, Lcom/amap/api/mapcore/aa;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 724
    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v14, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v14, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v20

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 725
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v26

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, v26

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 726
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_3

    .line 727
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 729
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 734
    :catch_1
    move-exception v2

    .line 735
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private q()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 877
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 878
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->H:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 879
    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->H:[F

    aget v2, v2, v0

    .line 880
    add-int/lit8 v0, v0, 0x1

    .line 881
    iget-object v3, p0, Lcom/amap/api/mapcore/bf;->H:[F

    aget v3, v3, v0

    .line 882
    add-int/lit8 v0, v0, 0x1

    .line 883
    new-instance v4, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v4, v2, v3}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    .line 885
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 780
    if-nez p1, :cond_0

    move-object v0, v4

    .line 809
    :goto_0
    return-object v0

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v4

    .line 785
    goto :goto_0

    .line 790
    :cond_2
    const/4 v1, 0x0

    move v2, v3

    .line 791
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 792
    if-nez v3, :cond_3

    .line 793
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->e:Ljava/util/List;

    .line 794
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 793
    invoke-static {p1, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    move v1, v2

    .line 791
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 796
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->e:Ljava/util/List;

    .line 797
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 796
    invoke-static {p1, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    .line 798
    cmpl-float v5, v1, v0

    if-lez v5, :cond_5

    move v1, v3

    .line 800
    goto :goto_2

    .line 804
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    const-string v1, "PolylineDelegateImp"

    const-string v2, "getNearestLatLng"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v4

    .line 809
    goto :goto_0

    :cond_5
    move v0, v1

    move v1, v2

    goto :goto_2
.end method

.method a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;DI)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 12

    .prologue
    .line 181
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 182
    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v3, v4

    int-to-double v4, v3

    .line 183
    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    .line 184
    mul-double v8, v6, v6

    mul-double v10, v4, v4

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    .line 185
    move/from16 v0, p6

    int-to-double v10, v0

    mul-double v10, v10, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double v8, v10, v8

    iget v3, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v3

    add-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 186
    iget v3, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v8, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v3, v8

    int-to-double v8, v3

    mul-double/2addr v6, v8

    div-double v4, v6, v4

    iget v3, p3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 188
    return-object v2
.end method

.method public a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    iput p1, p0, Lcom/amap/api/mapcore/bf;->z:F

    .line 361
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->b()V

    .line 362
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 363
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    .line 340
    iget v0, p0, Lcom/amap/api/mapcore/bf;->u:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/bf;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 341
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/bf;->w:I

    .line 342
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/bf;->B:F

    .line 343
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/bf;->C:F

    .line 344
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/bf;->D:F

    .line 345
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/bf;->E:F

    .line 346
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bf;->n:Z

    if-eqz v0, :cond_1

    .line 347
    iput v3, p0, Lcom/amap/api/mapcore/bf;->u:I

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v3}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 351
    :cond_2
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 516
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bf;->n:Z

    .line 517
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/bf;->u:I

    .line 518
    iput-object p1, p0, Lcom/amap/api/mapcore/bf;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 519
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 520
    return-void
.end method

.method a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Ljava/util/List;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;",
            "Lcom/amap/api/maps/model/LatLngBounds$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v18, v2, v4

    .line 241
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 245
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 248
    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    const/16 v20, -0x1

    .line 250
    :goto_0
    new-instance v10, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v10}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v5, v2, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v5 .. v10}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 253
    new-instance v16, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct/range {v16 .. v16}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v11, v2, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v11 .. v16}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 255
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v2, v2, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v3, v2

    invoke-interface/range {v3 .. v8}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 260
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 262
    iget v4, v10, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget v6, v10, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v18

    .line 265
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v18, v4, v6

    move-object/from16 v14, p0

    move-object v15, v10

    move-object/from16 v17, v8

    .line 267
    invoke-virtual/range {v14 .. v20}, Lcom/amap/api/mapcore/bf;->a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;DI)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    .line 270
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/amap/api/mapcore/bf;->a(Ljava/util/List;Ljava/util/List;D)V

    .line 277
    return-void

    .line 248
    :cond_0
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/bf;->e:Ljava/util/List;

    .line 309
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/bf;->b(Ljava/util/List;)V

    .line 311
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bf;->g()V

    .line 312
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    :goto_0
    return-void

    .line 312
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    const-string v1, "PolylineDelegateImp"

    const-string v2, "setPoints"

    .line 316
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 318
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method a(Ljava/util/List;Ljava/util/List;D)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 231
    :cond_0
    return-void

    .line 210
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 212
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v2, 0xa

    if-gt v3, v2, :cond_0

    .line 213
    int-to-float v2, v3

    const/high16 v5, 0x41200000    # 10.0f

    div-float v5, v2, v5

    .line 214
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 215
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    float-to-double v10, v5

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    float-to-double v12, v5

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v10, v2

    mul-double/2addr v8, v10

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    float-to-double v10, v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v5

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    const/4 v2, 0x1

    .line 216
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v12, v2

    mul-double/2addr v10, v12

    mul-double v10, v10, p3

    add-double/2addr v8, v10

    mul-float v7, v5, v5

    const/4 v2, 0x2

    .line 217
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-double v10, v2

    add-double/2addr v8, v10

    .line 218
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    float-to-double v12, v5

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v5

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v12, v2

    mul-double/2addr v10, v12

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    float-to-double v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    const/4 v2, 0x1

    .line 219
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v14, v2

    mul-double/2addr v12, v14

    mul-double v12, v12, p3

    add-double/2addr v10, v12

    mul-float v7, v5, v5

    const/4 v2, 0x2

    .line 220
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-double v12, v2

    add-double/2addr v10, v12

    .line 222
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v5

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    float-to-double v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    mul-double v14, v14, p3

    add-double/2addr v12, v14

    mul-float v2, v5, v5

    float-to-double v14, v2

    add-double/2addr v12, v14

    .line 223
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    mul-double v16, v16, p3

    add-double v14, v14, v16

    mul-float v2, v5, v5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    .line 225
    div-double/2addr v8, v12

    double-to-int v2, v8

    iput v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 226
    div-double v8, v10, v14

    double-to-int v2, v8

    iput v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 228
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    int-to-float v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    move v3, v2

    goto/16 :goto_0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/bf;->y:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/bf;->x:I

    if-lez v0, :cond_2

    .line 530
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bf;->s:Z

    if-eqz v0, :cond_3

    .line 531
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/bf;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 541
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bf;->r:Z

    goto :goto_0

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->i:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->i:Ljava/nio/FloatBuffer;

    .line 536
    :cond_4
    const/4 v1, 0x3

    iget v2, p0, Lcom/amap/api/mapcore/bf;->w:I

    iget-object v3, p0, Lcom/amap/api/mapcore/bf;->i:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/amap/api/mapcore/bf;->y:F

    iget v5, p0, Lcom/amap/api/mapcore/bf;->x:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/t;->a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bf;->m:Z

    .line 373
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 374
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 399
    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->k:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v2, v2, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v2}, Lcom/amap/api/mapcore/aa;->G()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v2

    .line 404
    if-nez v2, :cond_2

    move v0, v1

    .line 405
    goto :goto_0

    .line 407
    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore/bf;->k:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLngBounds;->contains(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/mapcore/bf;->k:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/LatLngBounds;->intersects(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/ai;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-interface {p1}, Lcom/amap/api/mapcore/ai;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bf;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bf;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/v;->c(Ljava/lang/String;)Z

    .line 282
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->J:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->J:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 283
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->J:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v3, p0, Lcom/amap/api/mapcore/bf;->J:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/v;->a(Ljava/lang/Integer;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->J:[I

    .line 288
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/bf;->v:I

    if-lez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget v2, p0, Lcom/amap/api/mapcore/bf;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/v;->a(Ljava/lang/Integer;)V

    .line 290
    iput v1, p0, Lcom/amap/api/mapcore/bf;->v:I

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 293
    return-void
.end method

.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    iput p1, p0, Lcom/amap/api/mapcore/bf;->y:F

    .line 330
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 331
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 132
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v9

    .line 135
    if-eqz p1, :cond_4

    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v7, v0

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 138
    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget-boolean v1, p0, Lcom/amap/api/mapcore/bf;->o:Z

    if-nez v1, :cond_2

    .line 142
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v1, v1, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 144
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v9, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    :cond_1
    :goto_1
    move-object v7, v0

    .line 166
    goto :goto_0

    .line 147
    :cond_2
    if-eqz v7, :cond_1

    .line 148
    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    .line 149
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v1, v1, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    iget-wide v2, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 152
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v9, v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 154
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v1, v1, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 157
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v9, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    goto :goto_1

    .line 160
    :cond_3
    invoke-virtual {p0, v7, v0, v8, v9}, Lcom/amap/api/mapcore/bf;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Ljava/util/List;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V

    goto :goto_1

    .line 168
    :cond_4
    iput-object v8, p0, Lcom/amap/api/mapcore/bf;->c:Ljava/util/List;

    .line 169
    iput v11, p0, Lcom/amap/api/mapcore/bf;->x:I

    .line 170
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 171
    invoke-virtual {v9}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->k:Lcom/amap/api/maps/model/LatLngBounds;

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v11}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 174
    return-void
.end method

.method public b(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bf;->o:Z

    .line 90
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 91
    return-void
.end method

.method public b(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 15

    .prologue
    .line 825
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    array-length v0, v0

    new-array v0, v0, [F

    .line 826
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->H:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/bf;->H:[F

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    .line 828
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 829
    const/4 v0, 0x0

    .line 873
    :goto_0
    return v0

    .line 835
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/bf;->q()Ljava/util/ArrayList;

    move-result-object v3

    .line 836
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 837
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 841
    const/4 v0, 0x0

    goto :goto_0

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/bf;->y:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    float-to-double v4, v0

    .line 846
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget-wide v6, p0, Lcom/amap/api/mapcore/bf;->K:D

    double-to-int v1, v6

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    float-to-double v6, v0

    .line 848
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/bf;->c(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v8

    .line 851
    const/4 v1, 0x0

    .line 852
    const/4 v0, 0x0

    move v14, v0

    move-object v0, v1

    move v1, v14

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    .line 853
    if-nez v1, :cond_3

    .line 854
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    move-object v2, v0

    .line 858
    :goto_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 860
    invoke-direct {p0, v8, v2, v0}, Lcom/amap/api/mapcore/bf;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)D

    move-result-wide v10

    .line 865
    add-double v12, v6, v4

    sub-double v10, v12, v10

    const-wide/16 v12, 0x0

    cmpl-double v2, v10, v12

    if-ltz v2, :cond_4

    .line 866
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 867
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 856
    goto :goto_2

    .line 852
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 870
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 873
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 298
    const-string v0, "Polyline"

    invoke-static {v0}, Lcom/amap/api/mapcore/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->b:Ljava/lang/String;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(F)V
    .locals 2

    .prologue
    .line 954
    iput p1, p0, Lcom/amap/api/mapcore/bf;->F:F

    .line 955
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 956
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 960
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 965
    iput-boolean v2, p0, Lcom/amap/api/mapcore/bf;->n:Z

    .line 966
    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/mapcore/bf;->u:I

    .line 967
    iput-object p1, p0, Lcom/amap/api/mapcore/bf;->f:Ljava/util/List;

    .line 968
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/aa;->e(Z)V

    goto :goto_0

    .line 970
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/bf;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 103
    iget v0, p0, Lcom/amap/api/mapcore/bf;->u:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/bf;->u:I

    if-nez v0, :cond_2

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bf;->p:Z

    .line 105
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/bf;->n:Z

    if-eqz v0, :cond_1

    .line 106
    iput v1, p0, Lcom/amap/api/mapcore/bf;->u:I

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 110
    :cond_2
    return-void
.end method

.method public d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    iget v0, p0, Lcom/amap/api/mapcore/bf;->z:F

    return v0
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 976
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/bf;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->g:Ljava/util/List;

    goto :goto_0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bf;->s:Z

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 86
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 985
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 990
    iput-boolean v2, p0, Lcom/amap/api/mapcore/bf;->n:Z

    .line 991
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/bf;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    .line 992
    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore/bf;->u:I

    .line 993
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/aa;->e(Z)V

    goto :goto_0

    .line 995
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/bf;->a(I)V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 1001
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1002
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bf;->t:Z

    .line 1003
    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/mapcore/bf;->u:I

    .line 1004
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v0, v0, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 1006
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bf;->m:Z

    return v0
.end method

.method public f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 416
    iget-object v2, p0, Lcom/amap/api/mapcore/bf;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 418
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/bf;->r:Z

    .line 420
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/amap/api/mapcore/bf;->H:[F

    .line 421
    iget-object v1, p0, Lcom/amap/api/mapcore/bf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 422
    new-instance v4, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 424
    iget-object v5, p0, Lcom/amap/api/mapcore/bf;->a:Lcom/amap/api/mapcore/v;

    iget-object v5, v5, Lcom/amap/api/mapcore/v;->a:Lcom/amap/api/mapcore/aa;

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-interface {v5, v6, v0, v4}, Lcom/amap/api/mapcore/aa;->b(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 425
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    mul-int/lit8 v5, v1, 0x3

    iget v6, v4, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v6, v0, v5

    .line 426
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    iget v6, v4, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v6, v0, v5

    .line 427
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    aput v6, v0, v5

    .line 428
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 430
    goto :goto_0

    .line 432
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bf;->s:Z

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->i:Ljava/nio/FloatBuffer;

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bf;->x:I

    .line 437
    invoke-direct {p0}, Lcom/amap/api/mapcore/bf;->o()V

    .line 438
    return-void

    .line 432
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    iget v0, p0, Lcom/amap/api/mapcore/bf;->y:F

    return v0
.end method

.method public i()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 355
    iget v0, p0, Lcom/amap/api/mapcore/bf;->w:I

    return v0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 742
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bf;->b()V

    .line 743
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->H:[F

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->i:Ljava/nio/FloatBuffer;

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 751
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 752
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    const-string v1, "PolylineDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 769
    const-string v0, "destroy erro"

    const-string v1, "PolylineDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_2
    :goto_1
    return-void

    .line 755
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_4

    .line 756
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 758
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 759
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->h:Ljava/util/List;

    .line 762
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 763
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bf;->g:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bf;->r:Z

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/amap/api/mapcore/bf;->e:Ljava/util/List;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bf;->o:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bf;->p:Z

    return v0
.end method
