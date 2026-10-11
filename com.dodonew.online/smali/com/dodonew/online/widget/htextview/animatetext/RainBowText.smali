.class public Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;
.super Lcom/dodonew/online/widget/htextview/animatetext/HText;
.source "RainBowText.java"


# instance fields
.field private dx:I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mTextWidth:I

.field private mTranslate:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;-><init>()V

    return-void
.end method


# virtual methods
.method protected animatePrepare(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTextWidth:I

    .line 37
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/dodonew/online/widget/htextview/util/DisplayUtils;->dp2Px(I)I

    move-result v0

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTextWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTextWidth:I

    .line 38
    iget v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTextWidth:I

    if-lez v0, :cond_0

    .line 39
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTextWidth:I

    int-to-float v3, v2

    const/4 v2, 0x7

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 41
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 43
    :cond_0
    return-void

    .line 39
    :array_0
    .array-data 4
        -0xd4de
        -0x80de
        -0x1200de
        -0xdd00de
        -0xdd0b01
        -0xddc601
        -0xabff09
    .end array-data
.end method

.method protected animateStart(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->invalidate()V

    .line 32
    return-void
.end method

.method protected drawFrame(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 48
    iget v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTranslate:F

    iget v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->dx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTranslate:F

    .line 49
    iget v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTranslate:F

    iget v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTextWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 50
    iget v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTextWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTranslate:F

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mTranslate:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 53
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mLinearGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 54
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->startX:F

    iget v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->startY:F

    iget-object v6, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/dodonew/online/widget/htextview/HTextView;->postInvalidateDelayed(J)V

    .line 57
    :cond_1
    return-void
.end method

.method protected initVariables()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->mMatrix:Landroid/graphics/Matrix;

    .line 25
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/dodonew/online/widget/htextview/util/DisplayUtils;->dp2Px(I)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;->dx:I

    .line 26
    return-void
.end method
