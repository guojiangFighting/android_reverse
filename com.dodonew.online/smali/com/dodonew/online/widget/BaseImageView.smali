.class public abstract Lcom/dodonew/online/widget/BaseImageView;
.super Landroid/widget/ImageView;
.source "BaseImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sXfermode:Landroid/graphics/Xfermode;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mWeakBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-class v0, Lcom/dodonew/online/widget/BaseImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/BaseImageView;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/dodonew/online/widget/BaseImageView;->sXfermode:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/BaseImageView;->sharedConstructor(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/BaseImageView;->sharedConstructor(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/BaseImageView;->sharedConstructor(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private sharedConstructor(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dodonew/online/widget/BaseImageView;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mPaint:Landroid/graphics/Paint;

    .line 51
    return-void
.end method


# virtual methods
.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    .line 55
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 57
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 63
    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseImageView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseImageView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v11

    .line 66
    .local v11, "i":I
    :try_start_0
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v7, v0

    .line 68
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 70
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseImageView;->getWidth()I

    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 72
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 74
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .local v8, "bitmapCanvas":Landroid/graphics/Canvas;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseImageView;->getHeight()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 85
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/dodonew/online/widget/BaseImageView;->sXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dodonew/online/widget/BaseImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    .line 97
    .end local v8    # "bitmapCanvas":Landroid/graphics/Canvas;
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v7, :cond_5

    .line 98
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dodonew/online/widget/BaseImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 111
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "i":I
    :goto_1
    return-void

    .restart local v11    # "i":I
    :cond_4
    move-object v7, v5

    .line 66
    goto :goto_0

    .line 106
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 103
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    .line 104
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    .line 109
    .end local v11    # "i":I
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method
