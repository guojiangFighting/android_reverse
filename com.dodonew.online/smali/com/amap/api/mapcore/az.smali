.class Lcom/amap/api/mapcore/az;
.super Ljava/lang/Object;
.source "MarkerDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/ag;


# static fields
.field private static a:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/amap/api/mapcore/av;

.field private D:Ljava/nio/FloatBuffer;

.field private E:Ljava/lang/Object;

.field private F:Z

.field private G:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:I

.field private L:I

.field private M:Z

.field private N:I

.field private O:I

.field private P:J

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:F

.field private f:F

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/autonavi/amap/mapcore/FPoint;

.field private o:[F

.field private p:[I

.field private q:F

.field private r:Z

.field private s:Ljava/nio/FloatBuffer;

.field private t:Ljava/lang/String;

.field private u:Lcom/amap/api/maps/model/LatLng;

.field private v:Lcom/amap/api/maps/model/LatLng;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/az;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/av;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->b:Z

    .line 39
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->c:Z

    .line 40
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->d:Z

    .line 41
    iput v3, p0, Lcom/amap/api/mapcore/az;->e:F

    .line 42
    iput v3, p0, Lcom/amap/api/mapcore/az;->f:F

    .line 43
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->g:Z

    .line 44
    iput v1, p0, Lcom/amap/api/mapcore/az;->h:I

    iput v1, p0, Lcom/amap/api/mapcore/az;->i:I

    .line 45
    iput v1, p0, Lcom/amap/api/mapcore/az;->j:I

    iput v1, p0, Lcom/amap/api/mapcore/az;->k:I

    .line 47
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    .line 49
    iput-object v4, p0, Lcom/amap/api/mapcore/az;->p:[I

    .line 50
    iput v3, p0, Lcom/amap/api/mapcore/az;->q:F

    .line 68
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->r:Z

    .line 121
    iput-object v4, p0, Lcom/amap/api/mapcore/az;->s:Ljava/nio/FloatBuffer;

    .line 129
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/mapcore/az;->y:F

    .line 130
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/az;->z:F

    .line 131
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->A:Z

    .line 132
    iput-boolean v2, p0, Lcom/amap/api/mapcore/az;->B:Z

    .line 136
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->F:Z

    .line 138
    iput-object v4, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->H:Z

    .line 584
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->I:Z

    .line 769
    iput-boolean v2, p0, Lcom/amap/api/mapcore/az;->J:Z

    .line 773
    iput v1, p0, Lcom/amap/api/mapcore/az;->K:I

    .line 777
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/mapcore/az;->L:I

    .line 778
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->M:Z

    .line 781
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/az;->P:J

    .line 163
    iput-object p2, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    .line 164
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    .line 165
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 166
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->isGps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->H:Z

    .line 167
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->H:Z

    if-eqz v0, :cond_1

    .line 171
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 172
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    .line 170
    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/dx;->a(DD)[D

    move-result-object v0

    .line 173
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore/az;->v:Lcom/amap/api/maps/model/LatLng;

    .line 174
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v0, p0, Lcom/amap/api/mapcore/az;->l:I

    .line 185
    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/mapcore/az;->m:I

    .line 186
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/az;->y:F

    .line 187
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/az;->z:F

    .line 188
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetX()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/az;->h:I

    .line 189
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/az;->i:I

    .line 190
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/az;->L:I

    .line 191
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/az;->q:F

    .line 192
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->r()Z

    .line 194
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/az;->b(Ljava/util/ArrayList;)V

    .line 196
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->B:Z

    .line 197
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->x:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->w:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->A:Z

    .line 200
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->t:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->isPerspective()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->F:Z

    .line 202
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->isFlat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->g:Z

    .line 203
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v2, "MarkerDelegateImp"

    const-string v3, "create"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->v:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_0
.end method

.method private M()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 330
    :cond_0
    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 757
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->K()I

    move-result v0

    .line 758
    if-nez v0, :cond_0

    .line 759
    new-array v0, v2, [I

    aput v1, v0, v1

    .line 760
    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 761
    aget v0, v0, v1

    .line 763
    :cond_0
    return v0
.end method

.method private a(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 8

    .prologue
    .line 631
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iget v2, p0, Lcom/amap/api/mapcore/az;->e:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 632
    float-to-double v2, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 633
    float-to-double v2, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    double-to-int v0, v0

    iput v0, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 634
    return-void
.end method

.method private a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .prologue
    const/16 v6, 0x1406

    const/16 v5, 0xbe2

    const/16 v4, 0xde1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 645
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    invoke-static {v5}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 650
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 651
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 653
    invoke-static {v4}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 654
    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 655
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 656
    invoke-static {v4, p1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 658
    const/4 v0, 0x3

    invoke-static {v0, v6, v3, p2}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 659
    const/4 v0, 0x2

    invoke-static {v0, v6, v3, p3}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 660
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 662
    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 663
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 664
    invoke-static {v4}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 665
    invoke-static {v5}, Landroid/opengl/GLES10;->glDisable(I)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/aa;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 602
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->g:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, p0, Lcom/amap/api/mapcore/az;->e:F

    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->J()I

    move-result v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->K()I

    move-result v5

    iget v6, p0, Lcom/amap/api/mapcore/az;->y:F

    iget v7, p0, Lcom/amap/api/mapcore/az;->z:F

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/bk;->a(Lcom/amap/api/mapcore/aa;ILcom/autonavi/amap/mapcore/FPoint;FIIFF)[F

    move-result-object v1

    .line 603
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->o:[F

    .line 604
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->s:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_4

    .line 605
    invoke-static {v1}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->s:Ljava/nio/FloatBuffer;

    .line 610
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 611
    iget v0, p0, Lcom/amap/api/mapcore/az;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/az;->K:I

    .line 612
    iget v0, p0, Lcom/amap/api/mapcore/az;->L:I

    iget-object v1, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    .line 614
    iget v1, p0, Lcom/amap/api/mapcore/az;->K:I

    if-lt v1, v0, :cond_0

    .line 615
    iput v8, p0, Lcom/amap/api/mapcore/az;->K:I

    .line 617
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/az;->K:I

    iget v1, p0, Lcom/amap/api/mapcore/az;->L:I

    div-int/2addr v0, v1

    .line 619
    iget-boolean v1, p0, Lcom/amap/api/mapcore/az;->J:Z

    if-nez v1, :cond_1

    .line 620
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/az;->p:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/az;->p:[I

    array-length v1, v1

    if-lez v1, :cond_2

    .line 624
    iget-object v1, p0, Lcom/amap/api/mapcore/az;->p:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    rem-int/2addr v0, v2

    aget v0, v1, v0

    iget-object v1, p0, Lcom/amap/api/mapcore/az;->s:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/mapcore/az;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 628
    :cond_2
    return-void

    :cond_3
    move v1, v8

    .line 602
    goto :goto_0

    .line 607
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->s:Ljava/nio/FloatBuffer;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bk;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->s:Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/amap/api/mapcore/az;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/az;->a:I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/az;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->g:Z

    return v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lcom/amap/api/mapcore/az;->h:I

    return v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 882
    iget v0, p0, Lcom/amap/api/mapcore/az;->i:I

    return v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/amap/api/mapcore/az;->j:I

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/amap/api/mapcore/az;->k:I

    return v0
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->M:Z

    return v0
.end method

.method public G()F
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcom/amap/api/mapcore/az;->q:F

    return v0
.end method

.method public H()Z
    .locals 7

    .prologue
    .line 944
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->j()Landroid/graphics/Rect;

    move-result-object v0

    .line 945
    iget-boolean v1, p0, Lcom/amap/api/mapcore/az;->M:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 946
    :cond_0
    const/4 v0, 0x1

    .line 955
    :goto_0
    return v0

    .line 949
    :cond_1
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 950
    iget-boolean v1, p0, Lcom/amap/api/mapcore/az;->H:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/az;->v:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_3

    .line 951
    iget-object v1, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v1, v1, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    iget-object v2, p0, Lcom/amap/api/mapcore/az;->v:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/az;->v:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 955
    :cond_2
    :goto_1
    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0

    .line 952
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_2

    .line 953
    iget-object v1, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v1, v1, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    iget-object v2, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_1
.end method

.method public I()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 4

    .prologue
    .line 971
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 972
    iget-boolean v1, p0, Lcom/amap/api/mapcore/az;->M:Z

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v1, v1, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    iget v2, p0, Lcom/amap/api/mapcore/az;->N:I

    iget v3, p0, Lcom/amap/api/mapcore/az;->O:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/mapcore/aa;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 976
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, p0, Lcom/amap/api/mapcore/az;->l:I

    iget v2, p0, Lcom/amap/api/mapcore/az;->m:I

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    goto :goto_0
.end method

.method public J()I
    .locals 1

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->L()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 218
    :goto_0
    return v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public K()I
    .locals 1

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->L()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 226
    :goto_0
    return v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized L()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->a()V

    .line 478
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :goto_0
    monitor-exit p0

    return-object v0

    .line 479
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 481
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->L()Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    :try_start_2
    const-string v1, "MarkerDelegateImp"

    const-string v2, "getBitmapDescriptor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 488
    const/4 v0, 0x0

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a()V
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 59
    iput p1, p0, Lcom/amap/api/mapcore/az;->f:F

    .line 60
    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/az;->e:F

    .line 61
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->e(Lcom/amap/api/mapcore/ag;)V

    .line 63
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->d(Lcom/amap/api/mapcore/ag;)V

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    .line 66
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/amap/api/mapcore/az;->y:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/az;->z:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 550
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/az;->y:F

    .line 551
    iput p2, p0, Lcom/amap/api/mapcore/az;->z:F

    .line 552
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->e(Lcom/amap/api/mapcore/ag;)V

    .line 554
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->d(Lcom/amap/api/mapcore/ag;)V

    .line 556
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 790
    if-gt p1, v0, :cond_0

    .line 791
    iput v0, p0, Lcom/amap/api/mapcore/az;->L:I

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/az;->L:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 893
    iput p1, p0, Lcom/amap/api/mapcore/az;->N:I

    .line 894
    iput p2, p0, Lcom/amap/api/mapcore/az;->O:I

    .line 895
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->M:Z

    .line 897
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->r()Z

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    iget-boolean v2, p0, Lcom/amap/api/mapcore/az;->g:Z

    if-eqz v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, p0, Lcom/amap/api/mapcore/az;->e:F

    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->J()I

    move-result v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->K()I

    move-result v5

    iget v6, p0, Lcom/amap/api/mapcore/az;->y:F

    iget v7, p0, Lcom/amap/api/mapcore/az;->z:F

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/bk;->a(Lcom/amap/api/mapcore/aa;ILcom/autonavi/amap/mapcore/FPoint;FIIFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->o:[F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    .line 906
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->l()V

    .line 909
    :cond_0
    return-void

    .line 899
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 901
    const-string v1, "MarkerDelegateImp"

    const-string v2, "setPositionByPixels"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 3

    .prologue
    .line 449
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 452
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 453
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->I:Z

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->b:Z

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->p:[I

    .line 458
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    .line 462
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->e(Lcom/amap/api/mapcore/ag;)V

    .line 464
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->d(Lcom/amap/api/mapcore/ag;)V

    .line 466
    :cond_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    :try_start_2
    const-string v1, "MarkerDelegateImp"

    const-string v2, "setIcon"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "\u975e\u6cd5\u5750\u6807\u503c latlng is null"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    const-string v1, "setPosition"

    const-string v2, "Marker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_0
    return-void

    .line 359
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    .line 360
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 361
    iget-boolean v1, p0, Lcom/amap/api/mapcore/az;->H:Z

    if-eqz v1, :cond_1

    .line 363
    :try_start_0
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/dx;->a(DD)[D

    move-result-object v1

    .line 365
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore/az;->v:Lcom/amap/api/maps/model/LatLng;

    .line 366
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_1
    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/amap/api/mapcore/az;->l:I

    .line 374
    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/mapcore/az;->m:I

    .line 375
    iput-boolean v8, p0, Lcom/amap/api/mapcore/az;->M:Z

    .line 376
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->r()Z

    .line 377
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    goto :goto_0

    .line 367
    :catch_0
    move-exception v1

    .line 368
    iput-object p1, p0, Lcom/amap/api/mapcore/az;->v:Lcom/amap/api/maps/model/LatLng;

    goto :goto_1

    .line 371
    :cond_1
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_1
.end method

.method public a(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 960
    iput-boolean v6, p0, Lcom/amap/api/mapcore/az;->M:Z

    .line 961
    iget v0, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v0, p0, Lcom/amap/api/mapcore/az;->l:I

    .line 962
    iget v0, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/mapcore/az;->m:I

    .line 963
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 964
    iget v1, p0, Lcom/amap/api/mapcore/az;->l:I

    iget v2, p0, Lcom/amap/api/mapcore/az;->m:I

    invoke-static {v1, v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 965
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iput-object v1, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    .line 966
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/az;->l:I

    iget v2, p0, Lcom/amap/api/mapcore/az;->m:I

    iget-object v3, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 967
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/amap/api/mapcore/az;->E:Ljava/lang/Object;

    .line 800
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/amap/api/mapcore/az;->w:Ljava/lang/String;

    .line 383
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    .line 384
    return-void
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 414
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/az;->b(Ljava/util/ArrayList;)V

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->I:Z

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->b:Z

    .line 417
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    .line 421
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->p:[I

    .line 422
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->e(Lcom/amap/api/mapcore/ag;)V

    .line 424
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->d(Lcom/amap/api/mapcore/ag;)V

    .line 426
    :cond_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    :try_start_2
    const-string v1, "MarkerDelegateImp"

    const-string v2, "setIcons"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Lcom/amap/api/mapcore/aa;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 670
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->M:Z

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->L()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 754
    :cond_1
    :goto_0
    return-void

    .line 675
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->I:Z

    if-nez v0, :cond_8

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    .line 678
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->p:[I

    .line 680
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_6

    move v3, v4

    .line 681
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 682
    if-eqz v3, :cond_3

    .line 683
    iget-object v1, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/av;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v1

    .line 685
    :cond_3
    if-nez v1, :cond_5

    .line 686
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 687
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_5

    .line 688
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/az;->a(Ljavax/microedition/khronos/opengles/GL10;)I

    move-result v1

    .line 689
    if-eqz v3, :cond_4

    .line 690
    iget-object v7, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    new-instance v8, Lcom/amap/api/mapcore/bd;

    invoke-direct {v8, v0, v1}, Lcom/amap/api/mapcore/bd;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    invoke-virtual {v7, v8}, Lcom/amap/api/mapcore/av;->a(Lcom/amap/api/mapcore/bd;)V

    .line 693
    :cond_4
    const/4 v0, 0x0

    invoke-static {p1, v1, v6, v0}, Lcom/amap/api/mapcore/util/bk;->b(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;Z)I

    :cond_5
    move v0, v1

    .line 696
    iget-object v1, p0, Lcom/amap/api/mapcore/az;->p:[I

    aput v0, v1, v2

    .line 697
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    .line 698
    goto :goto_2

    :cond_6
    move v3, v1

    .line 680
    goto :goto_1

    .line 699
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->J:Z

    .line 704
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->I:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 715
    :cond_8
    :try_start_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->b:Z

    if-nez v0, :cond_a

    .line 716
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_9

    .line 719
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->L()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 720
    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v1

    .line 724
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v2

    .line 726
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 727
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 728
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 729
    int-to-float v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 730
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    aput v0, v2, v1

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    .line 733
    :cond_9
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->r()Z

    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/az;->P:J

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->b:Z

    .line 738
    :cond_a
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->M:Z

    if-eqz v0, :cond_b

    .line 739
    iget v0, p0, Lcom/amap/api/mapcore/az;->N:I

    iget v1, p0, Lcom/amap/api/mapcore/az;->O:I

    iget-object v2, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {p2, v0, v1, v2}, Lcom/amap/api/mapcore/aa;->a(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 741
    :cond_b
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/az;->a(Lcom/amap/api/mapcore/aa;)V

    .line 742
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->d:Z

    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->i()V

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/az;->P:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->d:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 750
    :catch_0
    move-exception v0

    .line 751
    const-string v1, "MarkerDelegateImp"

    const-string v2, "drawMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 702
    :cond_c
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->J:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 706
    :catch_1
    move-exception v0

    .line 707
    const-string v1, "MarkerDelegateImp"

    const-string v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/amap/api/mapcore/az;->A:Z

    .line 405
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    .line 406
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/ag;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    :cond_0
    const/4 v0, 0x1

    .line 576
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 933
    iput p1, p0, Lcom/amap/api/mapcore/az;->q:F

    .line 934
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->h()V

    .line 935
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/amap/api/mapcore/az;->x:Ljava/lang/String;

    .line 394
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    .line 395
    return-void
.end method

.method public declared-synchronized b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->a()V

    .line 153
    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 155
    if-eqz v0, :cond_0

    .line 156
    iget-object v2, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/amap/api/mapcore/az;->c:Z

    .line 518
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->M:Z

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->d:Z

    .line 521
    :cond_0
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 312
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->B:Z

    .line 316
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->b(Lcom/amap/api/mapcore/ag;)Z

    move-result v0

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/az;->p:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/az;->p:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v3, p0, Lcom/amap/api/mapcore/az;->p:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/av;->a(Ljava/lang/Integer;)V

    .line 320
    iget-object v2, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v3, p0, Lcom/amap/api/mapcore/az;->p:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/av;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 323
    :cond_1
    monitor-exit p0

    return v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->B:Z

    if-ne v0, p1, :cond_0

    .line 539
    :goto_0
    return-void

    .line 534
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/az;->B:Z

    .line 535
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->e(Lcom/amap/api/mapcore/ag;)V

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->J:Z

    return v0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 257
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->o:[F

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 305
    :goto_0
    return-object v0

    .line 262
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    .line 263
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->J()I

    move-result v2

    .line 264
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->K()I

    move-result v3

    .line 265
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 266
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 267
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v6, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v0, v6, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 269
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->g:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->o:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/az;->o:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v0, v2, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 271
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {v0, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 273
    iget-object v2, p0, Lcom/amap/api/mapcore/az;->o:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/amap/api/mapcore/az;->o:[F

    const/4 v6, 0x4

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 274
    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->union(II)V

    .line 275
    iget-object v2, p0, Lcom/amap/api/mapcore/az;->o:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    iget-object v3, p0, Lcom/amap/api/mapcore/az;->o:[F

    const/4 v6, 0x7

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 276
    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->union(II)V

    .line 277
    iget-object v2, p0, Lcom/amap/api/mapcore/az;->o:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    iget-object v3, p0, Lcom/amap/api/mapcore/az;->o:[F

    const/16 v6, 0xa

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 278
    iget v1, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->union(II)V

    .line 298
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/az;->j:I

    .line 299
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/az;->k:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string v1, "MarkerDelegateImp"

    const-string v2, "getRect"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    .line 280
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/amap/api/mapcore/az;->y:F

    neg-float v0, v0

    int-to-float v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/az;->z:F

    sub-float/2addr v1, v11

    int-to-float v6, v3

    mul-float/2addr v1, v6

    invoke-direct {p0, v0, v1, v5}, Lcom/amap/api/mapcore/az;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v6

    iget v6, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v7, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v7

    iget v7, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v8, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v9, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v8, v9

    invoke-direct {v0, v1, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 285
    iget v1, p0, Lcom/amap/api/mapcore/az;->y:F

    neg-float v1, v1

    int-to-float v6, v2

    mul-float/2addr v1, v6

    iget v6, p0, Lcom/amap/api/mapcore/az;->z:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-direct {p0, v1, v6, v5}, Lcom/amap/api/mapcore/az;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 287
    iget v1, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v6

    iget v6, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v7, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->union(II)V

    .line 289
    iget v1, p0, Lcom/amap/api/mapcore/az;->y:F

    sub-float v1, v11, v1

    int-to-float v6, v2

    mul-float/2addr v1, v6

    iget v6, p0, Lcom/amap/api/mapcore/az;->z:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-direct {p0, v1, v6, v5}, Lcom/amap/api/mapcore/az;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 291
    iget v1, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v6

    iget v6, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v7, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->union(II)V

    .line 293
    iget v1, p0, Lcom/amap/api/mapcore/az;->y:F

    sub-float v1, v11, v1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/amap/api/mapcore/az;->z:F

    sub-float/2addr v2, v11

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-direct {p0, v1, v2, v5}, Lcom/amap/api/mapcore/az;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 295
    iget v1, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v2

    iget v2, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->union(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 809
    iput-boolean p1, p0, Lcom/amap/api/mapcore/az;->F:Z

    .line 810
    return-void
.end method

.method public e()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v0, :cond_0

    .line 335
    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 336
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 337
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->r()Z

    .line 338
    iget-object v2, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v2, v2, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    iget-object v3, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v4, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-interface {v2, v3, v4, v0}, Lcom/amap/api/mapcore/aa;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 339
    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v2, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 340
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 342
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0
.end method

.method public e(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 853
    iput-boolean p1, p0, Lcom/amap/api/mapcore/az;->g:Z

    .line 854
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    .line 855
    return-void
.end method

.method public f()Lcom/autonavi/amap/mapcore/FPoint;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public g()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->M:Z

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/az;->N:I

    iget v2, p0, Lcom/amap/api/mapcore/az;->O:I

    iget-object v3, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 839
    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 840
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    iget v2, p0, Lcom/amap/api/mapcore/az;->N:I

    iget v3, p0, Lcom/amap/api/mapcore/az;->O:I

    invoke-interface {v0, v2, v3, v1}, Lcom/amap/api/mapcore/aa;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 841
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 843
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->H:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/az;->v:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 348
    const-string v0, "Marker"

    invoke-static {v0}, Lcom/amap/api/mapcore/az;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->t:Ljava/lang/String;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->t:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->w:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->x:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->A:Z

    return v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->B:Z

    if-nez v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->d(Lcom/amap/api/mapcore/ag;)V

    .line 503
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->e(Lcom/amap/api/mapcore/ag;)V

    .line 510
    invoke-direct {p0}, Lcom/amap/api/mapcore/az;->M()V

    .line 511
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->c:Z

    .line 513
    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/az;->d:Z

    .line 514
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->c:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->B:Z

    return v0
.end method

.method public p()V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/az;->r:Z

    .line 107
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->b()Z

    .line 108
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->N()V

    .line 111
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "MarkerDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    const-string v0, "destroy erro"

    const-string v1, "MarkerDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    return-void
.end method

.method public q()I
    .locals 1

    .prologue
    .line 581
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 4

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->M:Z

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/az;->N:I

    iget v2, p0, Lcom/amap/api/mapcore/az;->O:I

    iget-object v3, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 598
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/az;->l:I

    iget v2, p0, Lcom/amap/api/mapcore/az;->m:I

    iget-object v3, p0, Lcom/amap/api/mapcore/az;->n:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    goto :goto_0
.end method

.method public s()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->E:Ljava/lang/Object;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->F:Z

    return v0
.end method

.method public u()F
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Lcom/amap/api/mapcore/az;->f:F

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lcom/amap/api/mapcore/az;->L:I

    return v0
.end method

.method public declared-synchronized w()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 438
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    .line 442
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->r:Z

    return v0
.end method

.method public declared-synchronized y()V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/az;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 77
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/az;->b()Z

    .line 78
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 80
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    :try_start_2
    const-string v1, "MarkerDelegateImp"

    const-string v2, "realdestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    const-string v0, "destroy erro"

    const-string v1, "MarkerDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/amap/api/mapcore/az;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->D:Ljava/nio/FloatBuffer;

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->s:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->s:Ljava/nio/FloatBuffer;

    .line 92
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->u:Lcom/amap/api/maps/model/LatLng;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->E:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/az;->p:[I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z()V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/amap/api/mapcore/az;->C:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->c(Lcom/amap/api/mapcore/ag;)V

    .line 849
    return-void
.end method
