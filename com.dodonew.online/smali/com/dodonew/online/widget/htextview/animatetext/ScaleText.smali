.class public Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;
.super Lcom/dodonew/online/widget/htextview/animatetext/HText;
.source "ScaleText.java"


# instance fields
.field charTime:F

.field private duration:J

.field mostCount:F

.field private progress:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;-><init>()V

    .line 14
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mostCount:F

    .line 15
    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->charTime:F

    return-void
.end method

.method static synthetic access$002(Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;F)F
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;
    .param p1, "x1"    # F

    .prologue
    .line 12
    iput p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->progress:F

    return p1
.end method


# virtual methods
.method protected animatePrepare(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    return-void
.end method

.method protected animateStart(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 24
    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 25
    .local v0, "n":I
    if-gtz v0, :cond_0

    move v0, v2

    .line 27
    :cond_0
    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->charTime:F

    iget v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->charTime:F

    iget v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mostCount:F

    div-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-long v4, v3

    iput-wide v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->duration:J

    .line 29
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    iget-wide v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->duration:J

    long-to-float v4, v4

    aput v4, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->duration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 30
    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    new-instance v2, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText$1;

    invoke-direct {v2, p0}, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText$1;-><init>(Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 38
    return-void
.end method

.method public drawFrame(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->startX:F

    move/from16 v19, v0

    .line 46
    .local v19, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->oldStartX:F

    move/from16 v20, v0

    .line 48
    .local v20, "oldOffset":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 50
    .local v18, "maxLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v2, v0, :cond_9

    .line 53
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 55
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->progress:F

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->duration:J

    long-to-float v6, v6

    div-float v21, v5, v6

    .line 56
    .local v21, "percent":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->differentList:Ljava/util/List;

    invoke-static {v2, v5}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->needMove(ILjava/util/List;)I

    move-result v3

    .line 57
    .local v3, "move":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    .line 58
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mTextSize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v21, v5

    .line 62
    .local v4, "p":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 63
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->startX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->oldStartX:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->gaps:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->oldGaps:[F

    invoke-static/range {v2 .. v8}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->getOffset(IIFFF[F[F)F

    move-result v9

    .line 64
    .local v9, "distX":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->startY:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 71
    .end local v4    # "p":F
    .end local v9    # "distX":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->oldGaps:[F

    aget v5, v5, v2

    add-float v20, v20, v5

    .line 75
    .end local v3    # "move":I
    .end local v21    # "percent":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 77
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->differentList:Ljava/util/List;

    invoke-static {v2, v5}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->stayHere(ILjava/util/List;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 79
    const/high16 v5, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->charTime:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->progress:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->charTime:F

    int-to-float v8, v2

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mostCount:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v17, v0

    .line 80
    .local v17, "alpha":I
    const/16 v5, 0xff

    move/from16 v0, v17

    if-le v0, v5, :cond_2

    const/16 v17, 0xff

    .line 81
    :cond_2
    if-gez v17, :cond_3

    const/16 v17, 0x0

    .line 83
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mTextSize:F

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->charTime:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->progress:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->charTime:F

    int-to-float v8, v2

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mostCount:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float v22, v5, v6

    .line 84
    .local v22, "size":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mTextSize:F

    cmpl-float v5, v22, v5

    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mTextSize:F

    move/from16 v22, v0

    .line 85
    :cond_4
    const/4 v5, 0x0

    cmpg-float v5, v22, v5

    if-gez v5, :cond_5

    const/16 v22, 0x0

    .line 87
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 91
    .local v23, "width":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->gaps:[F

    aget v5, v5, v2

    sub-float v5, v5, v23

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v14, v19, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->startY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 94
    .end local v17    # "alpha":I
    .end local v22    # "size":F
    .end local v23    # "width":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->gaps:[F

    aget v5, v5, v2

    add-float v19, v19, v5

    .line 50
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 66
    .restart local v3    # "move":I
    .restart local v21    # "percent":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v6, v21

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mTextSize:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, v21

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldPaint:Landroid/graphics/Paint;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 69
    .restart local v23    # "width":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->oldGaps:[F

    aget v5, v5, v2

    sub-float v5, v5, v23

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v14, v20, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->startY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 97
    .end local v3    # "move":I
    .end local v21    # "percent":F
    .end local v23    # "width":F
    :cond_9
    return-void
.end method

.method protected initVariables()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
