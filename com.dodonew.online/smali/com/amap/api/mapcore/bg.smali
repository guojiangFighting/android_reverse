.class Lcom/amap/api/mapcore/bg;
.super Ljava/lang/Object;
.source "PopupOverlay.java"

# interfaces
.implements Lcom/amap/api/mapcore/ag;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Ljava/nio/FloatBuffer;

.field private e:Ljava/lang/String;

.field private f:Lcom/autonavi/amap/mapcore/FPoint;

.field private g:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private h:Z

.field private i:Ljava/nio/FloatBuffer;

.field private j:Ljava/lang/Object;

.field private k:I

.field private l:Lcom/amap/api/mapcore/aa;

.field private m:Lcom/autonavi/amap/mapcore/MapProjection;

.field private n:F

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/aa;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bg;->a:Z

    .line 25
    iput v1, p0, Lcom/amap/api/mapcore/bg;->b:I

    iput v1, p0, Lcom/amap/api/mapcore/bg;->c:I

    .line 62
    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->d:Ljava/nio/FloatBuffer;

    .line 69
    iput-boolean v2, p0, Lcom/amap/api/mapcore/bg;->h:Z

    .line 73
    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    .line 74
    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->m:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 76
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/mapcore/bg;->n:F

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/bg;->o:F

    .line 309
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bg;->q:Z

    .line 465
    iput-boolean v2, p0, Lcom/amap/api/mapcore/bg;->r:Z

    .line 469
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/mapcore/bg;->s:I

    .line 89
    iput-object p2, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    .line 90
    invoke-interface {p2}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->m:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 91
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/bg;->b(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 92
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetX()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bg;->b:I

    .line 93
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bg;->c:I

    .line 94
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bg;->h:Z

    .line 95
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->e:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->r()Z

    .line 97
    return-void
.end method

.method private M()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 167
    :cond_0
    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .prologue
    const/16 v6, 0x1406

    const/16 v5, 0xbe2

    const/16 v4, 0xde1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 384
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 388
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 389
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 391
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 392
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 393
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 394
    invoke-interface {p1, v4, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 396
    const/4 v0, 0x3

    invoke-interface {p1, v0, v6, v3, p3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 397
    const/4 v0, 0x2

    invoke-interface {p1, v0, v6, v3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 398
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-interface {p1, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 400
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 401
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 402
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 403
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->K()I

    move-result v0

    .line 454
    if-nez v0, :cond_0

    .line 455
    new-array v0, v2, [I

    aput v1, v0, v1

    .line 456
    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 457
    aget v0, v0, v1

    .line 459
    :cond_0
    return v0
.end method

.method private b(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/bg;->k:I

    .line 84
    iput-object p1, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/amap/api/mapcore/bg;->b:I

    return v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/amap/api/mapcore/bg;->c:I

    return v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public G()F
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method public I()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return-object v0
.end method

.method public J()I
    .locals 1

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->L()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public K()I
    .locals 1

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->L()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public L()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public a(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/amap/api/mapcore/bg;->n:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/bg;->o:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/bg;->n:F

    .line 281
    iput p2, p0, Lcom/amap/api/mapcore/bg;->o:F

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 478
    if-gt p1, v0, :cond_0

    .line 479
    iput v0, p0, Lcom/amap/api/mapcore/bg;->s:I

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/bg;->s:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bg;->q:Z

    .line 233
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->i:Ljava/nio/FloatBuffer;

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/bg;->M()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore/FPoint;)V
    .locals 1

    .prologue
    .line 183
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->f:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/FPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/bg;->f:Lcom/autonavi/amap/mapcore/FPoint;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/amap/api/mapcore/bg;->j:Ljava/lang/Object;

    .line 488
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 218
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 408
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bg;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->f:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->L()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bg;->q:Z

    if-nez v0, :cond_4

    .line 414
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/bg;->k:I

    if-eqz v0, :cond_2

    .line 415
    const/4 v0, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/amap/api/mapcore/bg;->k:I

    aput v4, v2, v3

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 416
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    iget v2, p0, Lcom/amap/api/mapcore/bg;->k:I

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/aa;->f(I)V

    .line 418
    :cond_2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/bg;->b(Ljavax/microedition/khronos/opengles/GL10;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bg;->k:I

    .line 419
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_4

    .line 420
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 422
    iget v2, p0, Lcom/amap/api/mapcore/bg;->k:I

    invoke-static {p1, v2, v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I

    .line 424
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bg;->q:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 435
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->k()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v2}, Lcom/amap/api/mapcore/aa;->l()I

    move-result v2

    invoke-interface {p1, v7, v7, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 436
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 437
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 438
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->k()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->l()I

    move-result v0

    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p1

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 440
    iget v0, p0, Lcom/amap/api/mapcore/bg;->k:I

    iget-object v1, p0, Lcom/amap/api/mapcore/bg;->d:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/mapcore/bg;->i:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amap/api/mapcore/bg;->a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 441
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bg;->p:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->a()V

    .line 443
    iput-boolean v7, p0, Lcom/amap/api/mapcore/bg;->p:Z

    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    const-string v1, "PopupOverlay"

    const-string v2, "drawMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Lcom/amap/api/mapcore/aa;)V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 214
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
    .line 297
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public b(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    iput p1, p0, Lcom/amap/api/mapcore/bg;->b:I

    .line 557
    iput p2, p0, Lcom/amap/api/mapcore/bg;->c:I

    .line 558
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 612
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/amap/api/mapcore/bg;->M()V

    .line 157
    iget v0, p0, Lcom/amap/api/mapcore/bg;->k:I

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    iget v1, p0, Lcom/amap/api/mapcore/bg;->k:I

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->f(I)V

    .line 160
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bg;->h:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bg;->p:Z

    .line 268
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bg;->h:Z

    .line 269
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bg;->r:Z

    return v0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 497
    return-void
.end method

.method public e()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/amap/api/mapcore/bg;->M()V

    .line 526
    return-void
.end method

.method public f()Lcom/autonavi/amap/mapcore/FPoint;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->f:Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public g()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 177
    const-string v0, "PopupOverlay"

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->e:Ljava/lang/String;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bg;->h:Z

    return v0
.end method

.method public p()V
    .locals 0

    .prologue
    .line 541
    return-void
.end method

.method public q()I
    .locals 1

    .prologue
    .line 306
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 317
    iget-object v2, p0, Lcom/amap/api/mapcore/bg;->f:Lcom/autonavi/amap/mapcore/FPoint;

    if-nez v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 321
    iget-object v3, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v3}, Lcom/amap/api/mapcore/aa;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/mapcore/bg;->f:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v5, p0, Lcom/amap/api/mapcore/bg;->f:Lcom/autonavi/amap/mapcore/FPoint;

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v3, v4, v5, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 322
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->J()I

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->K()I

    move-result v4

    .line 324
    iget v5, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, p0, Lcom/amap/api/mapcore/bg;->b:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Lcom/amap/api/mapcore/bg;->n:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, p0, Lcom/amap/api/mapcore/bg;->c:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    int-to-float v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lcom/amap/api/mapcore/bg;->o:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 329
    sub-int v6, v5, v3

    iget-object v7, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v7}, Lcom/amap/api/mapcore/aa;->k()I

    move-result v7

    if-gt v6, v7, :cond_0

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    if-lt v5, v3, :cond_0

    neg-int v3, v4

    mul-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_0

    sub-int v3, v2, v4

    iget-object v4, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    .line 330
    invoke-interface {v4}, Lcom/amap/api/mapcore/aa;->l()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 336
    iget-object v3, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v3, :cond_0

    .line 339
    iget-object v3, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v3

    .line 340
    iget-object v4, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v4

    .line 342
    iget-object v6, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v6}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 343
    iget-object v7, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v7}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 344
    int-to-float v8, v3

    int-to-float v7, v7

    div-float v7, v8, v7

    .line 345
    int-to-float v8, v4

    int-to-float v6, v6

    div-float v6, v8, v6

    .line 346
    iget-object v8, p0, Lcom/amap/api/mapcore/bg;->i:Ljava/nio/FloatBuffer;

    if-nez v8, :cond_2

    .line 347
    const/16 v8, 0x8

    new-array v8, v8, [F

    aput v9, v8, v0

    aput v6, v8, v1

    aput v7, v8, v10

    aput v6, v8, v11

    const/4 v6, 0x4

    aput v7, v8, v6

    const/4 v6, 0x5

    aput v9, v8, v6

    const/4 v6, 0x6

    aput v9, v8, v6

    const/4 v6, 0x7

    aput v9, v8, v6

    invoke-static {v8}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/amap/api/mapcore/bg;->i:Ljava/nio/FloatBuffer;

    .line 351
    :cond_2
    const/16 v6, 0xc

    new-array v6, v6, [F

    .line 352
    int-to-float v7, v5

    aput v7, v6, v0

    .line 354
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->l()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v6, v1

    .line 355
    aput v9, v6, v10

    .line 356
    add-int v0, v5, v3

    int-to-float v0, v0

    aput v0, v6, v11

    .line 357
    const/4 v0, 0x4

    iget-object v7, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v7}, Lcom/amap/api/mapcore/aa;->l()I

    move-result v7

    sub-int/2addr v7, v2

    int-to-float v7, v7

    aput v7, v6, v0

    .line 358
    const/4 v0, 0x5

    aput v9, v6, v0

    .line 359
    const/4 v0, 0x6

    add-int/2addr v3, v5

    int-to-float v3, v3

    aput v3, v6, v0

    .line 360
    const/4 v0, 0x7

    iget-object v3, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v3}, Lcom/amap/api/mapcore/aa;->l()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v6, v0

    .line 361
    const/16 v0, 0x8

    aput v9, v6, v0

    .line 362
    const/16 v0, 0x9

    int-to-float v3, v5

    aput v3, v6, v0

    .line 364
    const/16 v0, 0xa

    iget-object v3, p0, Lcom/amap/api/mapcore/bg;->l:Lcom/amap/api/mapcore/aa;

    invoke-interface {v3}, Lcom/amap/api/mapcore/aa;->l()I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v2, v4

    int-to-float v2, v2

    aput v2, v6, v0

    .line 365
    const/16 v0, 0xb

    aput v9, v6, v0

    .line 366
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->d:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_3

    .line 367
    invoke-static {v6}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->d:Ljava/nio/FloatBuffer;

    :goto_1
    move v0, v1

    .line 372
    goto/16 :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->d:Ljava/nio/FloatBuffer;

    invoke-static {v6, v0}, Lcom/amap/api/mapcore/util/bk;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->d:Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method public s()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public u()F
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/amap/api/mapcore/bg;->s:I

    return v0
.end method

.method public w()Ljava/util/ArrayList;
    .locals 1
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
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bg;->a:Z

    return v0
.end method

.method public y()V
    .locals 3

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bg;->a:Z

    if-eqz v0, :cond_3

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bg;->b()Z

    .line 35
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->i:Ljava/nio/FloatBuffer;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->d:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore/bg;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->d:Ljava/nio/FloatBuffer;

    .line 51
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->f:Lcom/autonavi/amap/mapcore/FPoint;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bg;->j:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/bg;->k:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_3
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "PopupOverlay"

    const-string v2, "realDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    const-string v0, "destroy erro"

    const-string v1, "MarkerDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public z()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method
