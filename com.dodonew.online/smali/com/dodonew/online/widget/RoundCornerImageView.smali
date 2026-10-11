.class public Lcom/dodonew/online/widget/RoundCornerImageView;
.super Lcom/dodonew/online/widget/BaseImageView;
.source "RoundCornerImageView.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/BaseImageView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/dodonew/online/widget/RoundCornerImageView;->context:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/BaseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object p1, p0, Lcom/dodonew/online/widget/RoundCornerImageView;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/dodonew/online/widget/BaseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object p1, p0, Lcom/dodonew/online/widget/RoundCornerImageView;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static getBitmap(II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 37
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 40
    .local v4, "roundConcerImage":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 48
    .local v3, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    invoke-virtual {v0, v3, v6, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 55
    return-object v4
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/dodonew/online/widget/RoundCornerImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/RoundCornerImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/RoundCornerImageView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
