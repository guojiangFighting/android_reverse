.class public Lcom/dodonew/online/widget/htextview/animatetext/BurnText;
.super Ljava/lang/Object;
.source "BurnText.java"

# interfaces
.implements Lcom/dodonew/online/widget/htextview/animatetext/IHText;


# instance fields
.field backPaint:Landroid/graphics/Paint;

.field charTime:F

.field private differentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;",
            ">;"
        }
    .end annotation
.end field

.field private gaps:[F

.field mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

.field private mOldText:Ljava/lang/CharSequence;

.field private mText:Ljava/lang/CharSequence;

.field private metrics:Landroid/util/DisplayMetrics;

.field mostCount:I

.field private oldGaps:[F

.field oldPaint:Landroid/graphics/Paint;

.field private oldStartX:F

.field paint:Landroid/graphics/Paint;

.field progress:F

.field private sparkBitmap:Landroid/graphics/Bitmap;

.field private startX:F

.field private startY:F

.field textColor:I

.field private textSize:F

.field upDistance:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->progress:F

    .line 31
    const v0, 0x459c4000    # 5000.0f

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->charTime:F

    .line 32
    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mostCount:I

    .line 34
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->upDistance:F

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->textColor:I

    .line 38
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->gaps:[F

    .line 39
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldGaps:[F

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->differentList:Ljava/util/List;

    .line 45
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldStartX:F

    .line 46
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startX:F

    .line 47
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startY:F

    return-void
.end method

.method private calc()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 172
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getTextSize()F

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->textSize:F

    .line 173
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->textSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->gaps:[F

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->textSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldGaps:[F

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    iput v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldStartX:F

    .line 187
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    iput v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startX:F

    .line 188
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startY:F

    .line 190
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->differentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 191
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->differentList:Ljava/util/List;

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mOldText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->diff(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 194
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->upDistance:F

    .line 196
    return-void
.end method

.method private drawSparkle(Landroid/graphics/Canvas;FFF)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offset"    # F
    .param p3, "startY"    # F
    .param p4, "width"    # F

    .prologue
    .line 160
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 161
    .local v1, "random":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 162
    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->getRandomSpark(Ljava/util/Random;)Landroid/graphics/Bitmap;

    move-result-object v2

    float-to-double v4, p2

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    float-to-double v8, p4

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    float-to-double v4, p3

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v6

    iget v8, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->upDistance:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method private getRandomSpark(Ljava/util/Random;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 167
    const/16 v1, 0x16

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x14

    .line 168
    .local v0, "dstWidth":I
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->sparkBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public animateText(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    .line 85
    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mOldText:Ljava/lang/CharSequence;

    .line 86
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    .line 88
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->calc()V

    .line 90
    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 91
    .local v2, "n":I
    if-gtz v2, :cond_0

    move v2, v4

    .line 94
    :cond_0
    iget v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->charTime:F

    iget v6, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->charTime:F

    iget v7, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mostCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-long v0, v5

    .line 96
    .local v0, "duration":J
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    long-to-float v6, v0

    aput v6, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 97
    .local v3, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/dodonew/online/widget/htextview/animatetext/BurnText$1;

    invoke-direct {v4, p0}, Lcom/dodonew/online/widget/htextview/animatetext/BurnText$1;-><init>(Lcom/dodonew/online/widget/htextview/animatetext/BurnText;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 104
    return-void
.end method

.method public init(Lcom/dodonew/online/widget/htextview/HTextView;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "hTextView"    # Lcom/dodonew/online/widget/htextview/HTextView;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 51
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mOldText:Ljava/lang/CharSequence;

    .line 56
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    .line 57
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->backPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->backPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->backPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->metrics:Landroid/util/DisplayMetrics;

    .line 69
    invoke-virtual {p1}, Lcom/dodonew/online/widget/htextview/HTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 71
    .local v0, "windowManger":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 73
    invoke-virtual {p1}, Lcom/dodonew/online/widget/htextview/HTextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->textSize:F

    .line 75
    invoke-virtual {p1}, Lcom/dodonew/online/widget/htextview/HTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020087

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->sparkBitmap:Landroid/graphics/Bitmap;

    .line 76
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startX:F

    .line 108
    .local v7, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldStartX:F

    move/from16 v20, v0

    .line 110
    .local v20, "oldOffset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 111
    .local v24, "maxLength":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->progress:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->charTime:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->charTime:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mostCount:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v25, v3, v4

    .line 113
    .local v25, "percent":F
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->differentList:Ljava/util/List;

    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->stayHere(ILjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->textSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    move/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v27

    .line 123
    .local v27, "width":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    move/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startY:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->paint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 124
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startY:F

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v25

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->upDistance:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startY:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float v8, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->gaps:[F

    aget v3, v3, v23

    add-float v9, v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startY:F

    const v4, 0x3f99999a    # 1.2f

    mul-float v10, v3, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 125
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v25, v3

    if-gez v3, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startY:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v25

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->upDistance:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v7, v3, v2}, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->drawSparkle(Landroid/graphics/Canvas;FFF)V

    .line 130
    .end local v27    # "width":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->gaps:[F

    aget v3, v3, v23

    add-float/2addr v7, v3

    .line 133
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_3

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 136
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->progress:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->charTime:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->charTime:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mostCount:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v26, v3, v4

    .line 138
    .local v26, "pp":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->textSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->differentList:Ljava/util/List;

    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->needMove(ILjava/util/List;)I

    move-result v9

    .line 140
    .local v9, "move":I
    const/4 v3, -0x1

    if-eq v9, v3, :cond_4

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    const/high16 v3, 0x40e00000    # 7.0f

    mul-float v10, v26, v3

    .line 143
    .local v10, "p":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v10, v3

    if-lez v3, :cond_2

    const/high16 v10, 0x3f800000    # 1.0f

    .line 144
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldStartX:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->gaps:[F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldGaps:[F

    move/from16 v8, v23

    invoke-static/range {v8 .. v14}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->getOffset(IIFFF[F[F)F

    move-result v15

    .line 145
    .local v15, "distX":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mOldText:Ljava/lang/CharSequence;

    move/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 153
    .end local v15    # "distX":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldGaps:[F

    aget v3, v3, v23

    add-float v20, v20, v3

    .line 113
    .end local v9    # "move":I
    .end local v10    # "p":F
    .end local v26    # "pp":F
    :cond_3
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 148
    .restart local v9    # "move":I
    .restart local v26    # "pp":F
    :cond_4
    const/high16 v3, 0x40600000    # 3.5f

    mul-float v10, v26, v3

    .line 149
    .restart local v10    # "p":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v10, v3

    if-lez v3, :cond_5

    const/high16 v10, 0x3f800000    # 1.0f

    .line 150
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v10

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mOldText:Ljava/lang/CharSequence;

    move/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->startY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->oldPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v16, p1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 157
    .end local v9    # "move":I
    .end local v10    # "p":F
    .end local v26    # "pp":F
    :cond_6
    return-void
.end method

.method public reset(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->progress:F

    .line 80
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->calc()V

    .line 81
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/BurnText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->invalidate()V

    .line 82
    return-void
.end method
