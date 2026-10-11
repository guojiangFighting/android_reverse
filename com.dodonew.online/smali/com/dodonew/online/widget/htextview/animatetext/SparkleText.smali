.class public Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;
.super Lcom/dodonew/online/widget/htextview/animatetext/HText;
.source "SparkleText.java"


# instance fields
.field private backPaint:Landroid/graphics/Paint;

.field charTime:F

.field mostCount:I

.field progress:F

.field private sparkBitmap:Landroid/graphics/Bitmap;

.field upDistance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;-><init>()V

    .line 21
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->progress:F

    .line 23
    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->charTime:F

    .line 24
    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mostCount:I

    .line 26
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->upDistance:F

    return-void
.end method

.method private drawSparkle(Landroid/graphics/Canvas;FFF)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offset"    # F
    .param p3, "startY"    # F
    .param p4, "width"    # F

    .prologue
    .line 120
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 121
    .local v1, "random":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 122
    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->getRandomSpark(Ljava/util/Random;)Landroid/graphics/Bitmap;

    move-result-object v2

    float-to-double v4, p2

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    float-to-double v8, p4

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    float-to-double v4, p3

    .line 123
    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v6

    iget v8, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->upDistance:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mPaint:Landroid/graphics/Paint;

    .line 122
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method private getRandomSpark(Ljava/util/Random;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 128
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 129
    .local v0, "dstWidth":I
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->sparkBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected animatePrepare(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->upDistance:F

    .line 65
    return-void
.end method

.method protected animateStart(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    .line 43
    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 44
    .local v2, "n":I
    if-gtz v2, :cond_0

    move v2, v4

    .line 47
    :cond_0
    iget v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->charTime:F

    iget v6, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->charTime:F

    iget v7, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mostCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-long v0, v5

    .line 49
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

    .line 50
    .local v3, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText$1;

    invoke-direct {v4, p0}, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText$1;-><init>(Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    return-void
.end method

.method protected drawFrame(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->startX:F

    .line 69
    .local v7, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->oldStartX:F

    move/from16 v20, v0

    .line 71
    .local v20, "oldOffset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 72
    .local v24, "maxLength":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->progress:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->charTime:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->charTime:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mostCount:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v25, v3, v4

    .line 74
    .local v25, "percent":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_2

    .line 81
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->differentList:Ljava/util/List;

    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->stayHere(ILjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mText:Ljava/lang/CharSequence;

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

    .line 84
    .local v27, "width":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mText:Ljava/lang/CharSequence;

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

    iget v8, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->startY:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 85
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v25, v3

    if-gez v3, :cond_0

    .line 86
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->startY:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v25

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->upDistance:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v7, v3, v2}, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->drawSparkle(Landroid/graphics/Canvas;FFF)V

    .line 89
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->startY:F

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v25

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->upDistance:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->startY:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float v8, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->gaps:[F

    aget v3, v3, v23

    add-float v9, v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->startY:F

    const v4, 0x3f99999a    # 1.2f

    mul-float v10, v3, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    .end local v27    # "width":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->gaps:[F

    aget v3, v3, v23

    add-float/2addr v7, v3

    .line 94
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_4

    .line 96
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->progress:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->charTime:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->charTime:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mostCount:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v26, v3, v4

    .line 98
    .local v26, "pp":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->differentList:Ljava/util/List;

    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->needMove(ILjava/util/List;)I

    move-result v9

    .line 100
    .local v9, "move":I
    const/4 v3, -0x1

    if-eq v9, v3, :cond_5

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mOldPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v10, v26, v3

    .line 103
    .local v10, "p":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v10, v3

    if-lez v3, :cond_3

    const/high16 v10, 0x3f800000    # 1.0f

    .line 104
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->startX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->oldStartX:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->gaps:[F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->oldGaps:[F

    move/from16 v8, v23

    invoke-static/range {v8 .. v14}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->getOffset(IIFFF[F[F)F

    move-result v15

    .line 105
    .local v15, "distX":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mOldText:Ljava/lang/CharSequence;

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

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->startY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 113
    .end local v15    # "distX":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->oldGaps:[F

    aget v3, v3, v23

    add-float v20, v20, v3

    .line 77
    .end local v9    # "move":I
    .end local v10    # "p":F
    .end local v26    # "pp":F
    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 108
    .restart local v9    # "move":I
    .restart local v26    # "pp":F
    :cond_5
    const/high16 v3, 0x40600000    # 3.5f

    mul-float v10, v26, v3

    .line 109
    .restart local v10    # "p":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v10, v3

    if-lez v3, :cond_6

    const/high16 v10, 0x3f800000    # 1.0f

    .line 110
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mOldPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v10

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mOldText:Ljava/lang/CharSequence;

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

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->startY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v16, p1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 117
    .end local v9    # "move":I
    .end local v10    # "p":F
    .end local v26    # "pp":F
    :cond_7
    return-void
.end method

.method protected initVariables()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->backPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->backPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->backPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020115

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;->sparkBitmap:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method
