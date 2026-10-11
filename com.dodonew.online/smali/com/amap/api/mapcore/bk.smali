.class Lcom/amap/api/mapcore/bk;
.super Ljava/lang/Object;
.source "TextDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/an;


# static fields
.field private static a:I


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Z

.field private C:Z

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:Lcom/autonavi/amap/mapcore/FPoint;

.field private g:I

.field private h:Landroid/graphics/Bitmap;

.field private i:Ljava/nio/FloatBuffer;

.field private j:Ljava/lang/String;

.field private k:Lcom/amap/api/maps/model/LatLng;

.field private l:F

.field private m:F

.field private n:Z

.field private o:Lcom/amap/api/mapcore/av;

.field private p:Ljava/nio/FloatBuffer;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/graphics/Typeface;

.field private w:F

.field private x:Landroid/graphics/Rect;

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/bk;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/mapcore/av;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/amap/api/mapcore/bk;->b:F

    .line 39
    iput v0, p0, Lcom/amap/api/mapcore/bk;->c:F

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/mapcore/bk;->d:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/amap/api/mapcore/bk;->e:I

    .line 42
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->f:Lcom/autonavi/amap/mapcore/FPoint;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->i:Ljava/nio/FloatBuffer;

    .line 51
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/mapcore/bk;->l:F

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/bk;->m:F

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bk;->n:Z

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->x:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->z:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/amap/api/mapcore/bl;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/bl;-><init>(Lcom/amap/api/mapcore/bk;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->A:Ljava/lang/Runnable;

    .line 92
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bk;->B:Z

    .line 354
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bk;->C:Z

    .line 140
    iput-object p2, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    .line 141
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignX()I

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/bk;->b(II)V

    .line 146
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bk;->n:Z

    .line 147
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->r:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bk;->s:I

    .line 149
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontColor()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bk;->t:I

    .line 150
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontSize()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bk;->u:I

    .line 151
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->q:Ljava/lang/Object;

    .line 152
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bk;->w:F

    .line 153
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->v:Landroid/graphics/Typeface;

    .line 154
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bk;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->j:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getRotate()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/bk;->a(F)V

    .line 156
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->P()V

    .line 157
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bk;->r()Z

    .line 158
    return-void
.end method

.method private P()V
    .locals 7

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/amap/api/mapcore/bk;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 167
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 168
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 171
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/mapcore/bk;->u:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 173
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/mapcore/bk;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 175
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 176
    int-to-float v2, v1

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 177
    iget-object v2, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/amap/api/mapcore/bk;->r:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amap/api/mapcore/bk;->r:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore/bk;->x:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 178
    iget-object v2, p0, Lcom/amap/api/mapcore/bk;->x:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 182
    iget v3, p0, Lcom/amap/api/mapcore/bk;->s:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 183
    iget-object v3, p0, Lcom/amap/api/mapcore/bk;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/mapcore/bk;->x:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    int-to-float v0, v0

    iget-object v5, p0, Lcom/amap/api/mapcore/bk;->y:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 184
    iput-object v1, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    .line 185
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 186
    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->p:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "TextDelegateImp"

    const-string v2, "initBitmap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method private R()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/bk;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 686
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/bk;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 449
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->K()I

    move-result v0

    .line 450
    if-nez v0, :cond_0

    .line 451
    new-array v0, v2, [I

    aput v1, v0, v1

    .line 452
    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 453
    aget v0, v0, v1

    .line 455
    :cond_0
    return v0
.end method

.method private a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .prologue
    const/16 v6, 0x1406

    const/16 v5, 0xbe2

    const/16 v4, 0xde1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 395
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-static {v5}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 400
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 401
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 403
    invoke-static {v4}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 404
    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 405
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 406
    invoke-static {v4, p1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 408
    const/4 v0, 0x3

    invoke-static {v0, v6, v3, p2}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 409
    const/4 v0, 0x2

    invoke-static {v0, v6, v3, p3}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 410
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 412
    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 413
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 414
    invoke-static {v4}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 415
    invoke-static {v5}, Landroid/opengl/GLES10;->glDisable(I)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/aa;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/bk;->f:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, p0, Lcom/amap/api/mapcore/bk;->b:F

    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    .line 373
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/amap/api/mapcore/bk;->l:F

    iget v7, p0, Lcom/amap/api/mapcore/bk;->m:F

    move-object v0, p1

    .line 372
    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/bk;->a(Lcom/amap/api/mapcore/aa;ILcom/autonavi/amap/mapcore/FPoint;FIIFF)[F

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/amap/api/mapcore/bk;->i:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_1

    .line 376
    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->i:Ljava/nio/FloatBuffer;

    .line 381
    :goto_0
    iget v0, p0, Lcom/amap/api/mapcore/bk;->g:I

    if-eqz v0, :cond_0

    .line 382
    iget v0, p0, Lcom/amap/api/mapcore/bk;->g:I

    iget-object v1, p0, Lcom/amap/api/mapcore/bk;->i:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/mapcore/bk;->p:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/mapcore/bk;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 384
    :cond_0
    return-void

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/bk;->i:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->i:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/bk;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->P()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/bk;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bk;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/bk;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->Q()V

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/amap/api/mapcore/bk;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/bk;->a:I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/bk;->a:I

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
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public G()F
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/amap/api/mapcore/bk;->w:F

    return v0
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->G()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 694
    iget-object v1, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result v0

    .line 696
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public I()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    return-object v0
.end method

.method public J()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 594
    iget v0, p0, Lcom/amap/api/mapcore/bk;->s:I

    return v0
.end method

.method public K()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 605
    iget v0, p0, Lcom/amap/api/mapcore/bk;->t:I

    return v0
.end method

.method public L()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 616
    iget v0, p0, Lcom/amap/api/mapcore/bk;->u:I

    return v0
.end method

.method public M()Landroid/graphics/Typeface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->v:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public N()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 666
    iget v0, p0, Lcom/amap/api/mapcore/bk;->d:I

    return v0
.end method

.method public O()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/amap/api/mapcore/bk;->e:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->r:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 87
    iput p1, p0, Lcom/amap/api/mapcore/bk;->c:F

    .line 88
    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/bk;->b:F

    .line 89
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->Q()V

    .line 90
    return-void
.end method

.method public a(FF)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    iput-object p1, p0, Lcom/amap/api/mapcore/bk;->v:Landroid/graphics/Typeface;

    .line 622
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->R()V

    .line 623
    return-void
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 0

    .prologue
    .line 275
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

    .line 238
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bk;->r()Z

    .line 239
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->Q()V

    .line 240
    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 0

    .prologue
    .line 705
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/amap/api/mapcore/bk;->q:Ljava/lang/Object;

    .line 470
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
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
    .line 266
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Lcom/amap/api/mapcore/aa;)V
    .locals 3

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bk;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bk;->C:Z

    if-nez v0, :cond_3

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 426
    iget v0, p0, Lcom/amap/api/mapcore/bk;->g:I

    if-nez v0, :cond_2

    .line 427
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/bk;->a(Ljavax/microedition/khronos/opengles/GL10;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bk;->g:I

    .line 429
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/bk;->g:I

    iget-object v1, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/bk;->b(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;Z)I

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bk;->C:Z

    .line 431
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    :cond_3
    :try_start_1
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/bk;->a(Lcom/amap/api/mapcore/aa;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string v1, "TextDelegateImp"

    const-string v2, "drawMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :catch_1
    move-exception v0

    .line 434
    const-string v1, "TextDelegateImp"

    const-string v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 262
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
    .line 342
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-interface {p1}, Lcom/amap/api/mapcore/ag;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bk;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 316
    iput p1, p0, Lcom/amap/api/mapcore/bk;->w:F

    .line 317
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/av;->h()V

    .line 318
    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 588
    iput p1, p0, Lcom/amap/api/mapcore/bk;->s:I

    .line 589
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->R()V

    .line 590
    return-void
.end method

.method public b(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 632
    iput p1, p0, Lcom/amap/api/mapcore/bk;->d:I

    .line 633
    packed-switch p1, :pswitch_data_0

    .line 644
    :pswitch_0
    iput v0, p0, Lcom/amap/api/mapcore/bk;->l:F

    .line 647
    :goto_0
    iput p2, p0, Lcom/amap/api/mapcore/bk;->e:I

    .line 648
    sparse-switch p2, :sswitch_data_0

    .line 659
    iput v0, p0, Lcom/amap/api/mapcore/bk;->m:F

    .line 661
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->Q()V

    .line 662
    return-void

    .line 635
    :pswitch_1
    iput v0, p0, Lcom/amap/api/mapcore/bk;->l:F

    goto :goto_0

    .line 638
    :pswitch_2
    iput v1, p0, Lcom/amap/api/mapcore/bk;->l:F

    goto :goto_0

    .line 641
    :pswitch_3
    iput v2, p0, Lcom/amap/api/mapcore/bk;->l:F

    goto :goto_0

    .line 650
    :sswitch_0
    iput v0, p0, Lcom/amap/api/mapcore/bk;->m:F

    goto :goto_1

    .line 653
    :sswitch_1
    iput v1, p0, Lcom/amap/api/mapcore/bk;->m:F

    goto :goto_1

    .line 656
    :sswitch_2
    iput v2, p0, Lcom/amap/api/mapcore/bk;->m:F

    goto :goto_1

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 648
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->Q()V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/bk;->n:Z

    .line 213
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->b(Lcom/amap/api/mapcore/ag;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 599
    iput p1, p0, Lcom/amap/api/mapcore/bk;->t:I

    .line 600
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->R()V

    .line 601
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 577
    iput-object p1, p0, Lcom/amap/api/mapcore/bk;->r:Ljava/lang/String;

    .line 578
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->R()V

    .line 579
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bk;->n:Z

    if-ne v0, p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bk;->n:Z

    .line 307
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->Q()V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    iput p1, p0, Lcom/amap/api/mapcore/bk;->u:I

    .line 611
    invoke-direct {p0}, Lcom/amap/api/mapcore/bk;->R()V

    .line 612
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public e()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

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
    .line 512
    return-void
.end method

.method public f()Lcom/autonavi/amap/mapcore/FPoint;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->f:Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public g()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 230
    const-string v0, "Text"

    invoke-static {v0}, Lcom/amap/api/mapcore/bk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->j:Ljava/lang/String;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bk;->n:Z

    return v0
.end method

.method public p()V
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/bk;->B:Z

    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    iget-object v0, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->N()V

    .line 131
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/bk;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "TextDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    const-string v0, "destroy erro"

    const-string v1, "TextDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 7

    .prologue
    .line 363
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    iget-object v1, v0, Lcom/amap/api/mapcore/av;->a:Lcom/amap/api/mapcore/aa;

    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v6, p0, Lcom/amap/api/mapcore/bk;->f:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/aa;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 368
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public s()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public u()F
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/amap/api/mapcore/bk;->c:F

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized w()Ljava/util/ArrayList;
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
    .line 270
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bk;->B:Z

    return v0
.end method

.method public declared-synchronized y()V
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bk;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 101
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bk;->b()Z

    .line 102
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->h:Landroid/graphics/Bitmap;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->p:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->p:Ljava/nio/FloatBuffer;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->i:Ljava/nio/FloatBuffer;

    .line 114
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->k:Lcom/amap/api/maps/model/LatLng;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bk;->q:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_2
    const-string v1, "TextDelegateImp"

    const-string v2, "realdestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    const-string v0, "destroy erro"

    const-string v1, "TextDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/amap/api/mapcore/bk;->o:Lcom/amap/api/mapcore/av;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/av;->c(Lcom/amap/api/mapcore/ag;)V

    .line 508
    return-void
.end method
