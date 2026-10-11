.class public final Lcom/dodonew/online/widget/zxing/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x64L

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final OPAQUE:I = 0xff

.field private static final SCANNER_ALPHA:[I


# instance fields
.field private final frameColor:I

.field private i:I

.field private final laserColor:I

.field private lineDrawable:Landroid/graphics/drawable/Drawable;

.field private mRect:Landroid/graphics/Rect;

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I

.field private text:Ljava/lang/String;

.field private final textColor:I

.field private final textPaint:Landroid/graphics/Paint;

.field private textSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput v3, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->i:I

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->textPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->mRect:Landroid/graphics/Rect;

    .line 83
    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->lineDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->maskColor:I

    .line 85
    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->resultColor:I

    .line 86
    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->textColor:I

    .line 87
    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->textSize:F

    .line 88
    const v1, 0x7f060093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->text:Ljava/lang/String;

    .line 89
    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->frameColor:I

    .line 90
    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->laserColor:I

    .line 91
    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->resultPointColor:I

    .line 92
    iput v3, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->scannerAlpha:I

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 94
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 4
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 194
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    monitor-enter v0

    .line 195
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 197
    .local v1, "size":I
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 198
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0xa

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 200
    :cond_0
    monitor-exit v0

    .line 201
    return-void

    .line 200
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 189
    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/ViewfinderView;->invalidate()V

    .line 190
    return-void
.end method

.method public drawViewfinder()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 174
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/ViewfinderView;->invalidate()V

    .line 179
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 99
    .local v8, "frame":Landroid/graphics/Rect;
    if-nez v8, :cond_0

    .line 170
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .line 103
    .local v10, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 106
    .local v9, "height":I
    iget-object v2, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 110
    int-to-float v3, v10

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v10

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 114
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v9

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->text:Ljava/lang/String;

    div-int/lit8 v1, v10, 0x2

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 106
    :cond_1
    iget v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xf

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xf

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 131
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xf

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xf

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xf

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0xf

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 141
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xf

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 143
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0xf

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v1, Lcom/dodonew/online/widget/zxing/ViewfinderView;->SCANNER_ALPHA:[I

    iget v2, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->scannerAlpha:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    iget v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/dodonew/online/widget/zxing/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->scannerAlpha:I

    .line 152
    iget v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->i:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->i:I

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->mRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x6

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->i:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x6

    iget v3, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x6

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x6

    iget v5, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->i:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->lineDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->lineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/ViewfinderView;->invalidate()V

    .line 167
    :goto_2
    const-wide/16 v2, 0x64

    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/dodonew/online/widget/zxing/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0

    .line 162
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->i:I

    goto :goto_2
.end method

.method public recycleLineDrawable()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->lineDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ViewfinderView;->lineDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 214
    :cond_0
    return-void
.end method
