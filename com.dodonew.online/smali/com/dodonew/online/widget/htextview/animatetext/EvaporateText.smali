.class public Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;
.super Lcom/dodonew/online/widget/htextview/animatetext/HText;
.source "EvaporateText.java"


# instance fields
.field charTime:F

.field private mTextHeight:I

.field mostCount:I

.field private progress:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;-><init>()V

    .line 15
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->charTime:F

    .line 16
    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mostCount:I

    return-void
.end method

.method static synthetic access$002(Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;F)F
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;
    .param p1, "x1"    # F

    .prologue
    .line 13
    iput p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->progress:F

    return p1
.end method


# virtual methods
.method protected animatePrepare(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mTextHeight:I

    .line 47
    return-void
.end method

.method protected animateStart(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    .line 25
    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 26
    .local v2, "n":I
    if-gtz v2, :cond_0

    move v2, v4

    .line 29
    :cond_0
    iget v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->charTime:F

    iget v6, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->charTime:F

    iget v7, p0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mostCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-long v0, v5

    .line 31
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

    .line 32
    .local v3, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    new-instance v4, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText$1;

    invoke-direct {v4, p0}, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText$1;-><init>(Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 40
    return-void
.end method

.method protected drawFrame(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 51
    return-void
.end method

.method protected initVariables()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->startX:F

    move/from16 v18, v0

    .line 55
    .local v18, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->oldStartX:F

    move/from16 v19, v0

    .line 57
    .local v19, "oldOffset":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 59
    .local v17, "maxLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v1, v0, :cond_7

    .line 62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 64
    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->progress:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->charTime:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->charTime:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mostCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    div-float v20, v4, v5

    .line 66
    .local v20, "pp":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mTextSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->differentList:Ljava/util/List;

    invoke-static {v1, v4}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->needMove(ILjava/util/List;)I

    move-result v2

    .line 68
    .local v2, "move":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 69
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v20, v4

    .line 71
    .local v3, "p":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 72
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->startX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->oldStartX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->gaps:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->oldGaps:[F

    invoke-static/range {v1 .. v7}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->getOffset(IIFFF[F[F)F

    move-result v8

    .line 73
    .local v8, "distX":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->startY:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 80
    .end local v3    # "p":F
    .end local v8    # "distX":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->oldGaps:[F

    aget v4, v4, v1

    add-float v19, v19, v4

    .line 84
    .end local v2    # "move":I
    .end local v20    # "pp":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->differentList:Ljava/util/List;

    invoke-static {v1, v4}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->stayHere(ILjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 88
    const/high16 v4, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->charTime:F

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->progress:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->charTime:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mostCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v16, v0

    .line 89
    .local v16, "alpha":I
    const/16 v4, 0xff

    move/from16 v0, v16

    if-le v0, v4, :cond_2

    const/16 v16, 0xff

    .line 90
    :cond_2
    if-gez v16, :cond_3

    const/16 v16, 0x0

    .line 93
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mTextSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->progress:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->charTime:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->charTime:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mostCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    div-float v20, v4, v5

    .line 96
    .restart local v20    # "pp":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mTextHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->startY:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mTextHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v20

    sub-float v14, v4, v5

    .line 98
    .local v14, "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mPaint:Landroid/graphics/Paint;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    .line 99
    .local v21, "width":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->gaps:[F

    aget v4, v4, v1

    sub-float v4, v4, v21

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v13, v18, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 102
    .end local v14    # "y":F
    .end local v16    # "alpha":I
    .end local v20    # "pp":F
    .end local v21    # "width":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->gaps:[F

    aget v4, v4, v1

    add-float v18, v18, v4

    .line 59
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 75
    .restart local v2    # "move":I
    .restart local v20    # "pp":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v5, v20

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->startY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mTextHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v20

    sub-float v14, v4, v5

    .line 77
    .restart local v14    # "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldPaint:Landroid/graphics/Paint;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    .line 78
    .restart local v21    # "width":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->oldGaps:[F

    aget v4, v4, v1

    sub-float v4, v4, v21

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v13, v19, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 105
    .end local v2    # "move":I
    .end local v14    # "y":F
    .end local v20    # "pp":F
    .end local v21    # "width":F
    :cond_7
    return-void
.end method
