.class public Lcom/dodonew/online/widget/htextview/animatetext/FallText;
.super Lcom/dodonew/online/widget/htextview/animatetext/HText;
.source "FallText.java"


# instance fields
.field private charTime:F

.field private interpolator:Landroid/view/animation/OvershootInterpolator;

.field private mTextHeight:F

.field private mostCount:I

.field private progress:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;-><init>()V

    .line 18
    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->charTime:F

    .line 19
    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mostCount:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mTextHeight:F

    return-void
.end method

.method static synthetic access$002(Lcom/dodonew/online/widget/htextview/animatetext/FallText;F)F
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/htextview/animatetext/FallText;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->progress:F

    return p1
.end method


# virtual methods
.method protected animatePrepare(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mTextHeight:F

    .line 52
    return-void
.end method

.method protected animateStart(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    .line 30
    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 31
    .local v2, "n":I
    if-gtz v2, :cond_0

    move v2, v4

    .line 34
    :cond_0
    iget v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->charTime:F

    iget v6, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->charTime:F

    iget v7, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mostCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-long v0, v5

    .line 36
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

    .line 37
    .local v3, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    new-instance v4, Lcom/dodonew/online/widget/htextview/animatetext/FallText$1;

    invoke-direct {v4, p0}, Lcom/dodonew/online/widget/htextview/animatetext/FallText$1;-><init>(Lcom/dodonew/online/widget/htextview/animatetext/FallText;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 46
    return-void
.end method

.method protected drawFrame(Landroid/graphics/Canvas;)V
    .locals 37
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->startX:F

    move/from16 v30, v0

    .line 57
    .local v30, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->oldStartX:F

    move/from16 v31, v0

    .line 59
    .local v31, "oldOffset":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 61
    .local v29, "maxLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, v29

    if-ge v2, v0, :cond_c

    .line 64
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 66
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->progress:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->charTime:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->charTime:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mostCount:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v33, v5, v6

    .line 68
    .local v33, "percent":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mTextSize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->differentList:Ljava/util/List;

    invoke-static {v2, v5}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->needMove(ILjava/util/List;)I

    move-result v3

    .line 70
    .local v3, "move":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    .line 71
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v33, v5

    .line 73
    .local v4, "p":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 74
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->startX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->oldStartX:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->gaps:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->oldGaps:[F

    invoke-static/range {v2 .. v8}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->getOffset(IIFFF[F[F)F

    move-result v9

    .line 75
    .local v9, "distX":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldText:Ljava/lang/CharSequence;

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

    iget v10, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->startY:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 115
    .end local v9    # "distX":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->oldGaps:[F

    aget v5, v5, v2

    add-float v31, v31, v5

    .line 119
    .end local v3    # "move":I
    .end local v4    # "p":F
    .end local v33    # "percent":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->differentList:Ljava/util/List;

    invoke-static {v2, v5}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->stayHere(ILjava/util/List;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 123
    const/high16 v5, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->charTime:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->progress:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->charTime:F

    int-to-float v8, v2

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mostCount:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v23, v0

    .line 124
    .local v23, "alpha":I
    const/16 v5, 0xff

    move/from16 v0, v23

    if-le v0, v5, :cond_2

    const/16 v23, 0xff

    .line 125
    :cond_2
    if-gez v23, :cond_3

    const/16 v23, 0x0

    .line 127
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mTextSize:F

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->charTime:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->progress:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->charTime:F

    int-to-float v8, v2

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mostCount:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float v34, v5, v6

    .line 128
    .local v34, "size":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mTextSize:F

    cmpl-float v5, v34, v5

    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mTextSize:F

    move/from16 v34, v0

    .line 129
    :cond_4
    const/4 v5, 0x0

    cmpg-float v5, v34, v5

    if-gez v5, :cond_5

    const/16 v34, 0x0

    .line 131
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mText:Ljava/lang/CharSequence;

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

    move-result v35

    .line 134
    .local v35, "width":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->gaps:[F

    aget v5, v5, v2

    sub-float v5, v5, v35

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v20, v30, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->startY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v16, p1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 137
    .end local v23    # "alpha":I
    .end local v34    # "size":F
    .end local v35    # "width":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->gaps:[F

    aget v5, v5, v2

    add-float v30, v30, v5

    .line 61
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 78
    .restart local v3    # "move":I
    .restart local v33    # "percent":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->oldGaps:[F

    aget v5, v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v26, v31, v5

    .line 80
    .local v26, "centerX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldPaint:Landroid/graphics/Paint;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldText:Ljava/lang/CharSequence;

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

    move-result v35

    .line 82
    .restart local v35    # "width":F
    const v5, 0x3fb33333    # 1.4f

    mul-float v4, v33, v5

    .line 83
    .restart local v4    # "p":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_9

    const/high16 v4, 0x3f800000    # 1.0f

    .line 85
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->interpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v5, v4}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v4

    .line 86
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    float-to-double v6, v5

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v6, v10

    .line 87
    .local v24, "angle":D
    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_a

    .line 88
    float-to-double v6, v4

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    add-double v24, v6, v10

    .line 90
    :cond_a
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v35, v5

    float-to-double v6, v5

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v6, v10

    double-to-float v5, v6

    add-float v27, v26, v5

    .line 91
    .local v27, "disX":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->startY:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v35, v6

    float-to-double v6, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v6, v10

    double-to-float v6, v6

    add-float v28, v5, v6

    .line 92
    .local v28, "disY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 94
    .local v12, "path":Landroid/graphics/Path;
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 98
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v26

    sub-float v5, v5, v27

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->startY:F

    mul-float/2addr v6, v7

    sub-float v6, v6, v28

    invoke-virtual {v12, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    move/from16 v0, v33

    float-to-double v6, v0

    const-wide v10, 0x3fe6666666666666L    # 0.7

    cmpg-double v5, v6, v10

    if-gtz v5, :cond_b

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 104
    :cond_b
    move/from16 v0, v33

    float-to-double v6, v0

    const-wide v10, 0x3fe6666666666666L    # 0.7

    sub-double/2addr v6, v10

    const-wide v10, 0x3fd3333340000000L    # 0.30000001192092896

    div-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v32, v0

    .line 105
    .local v32, "p2":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v6, v32

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mTextHeight:F

    mul-float v36, v32, v5

    .line 107
    .local v36, "y":F
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/dodonew/online/widget/htextview/util/HLog;->i(Ljava/lang/Object;)V

    .line 108
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 109
    .local v15, "path2":Landroid/graphics/Path;
    add-float v5, v28, v36

    move/from16 v0, v27

    invoke-virtual {v15, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 110
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v26

    sub-float v5, v5, v27

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->startY:F

    mul-float/2addr v6, v7

    sub-float v6, v6, v28

    add-float v6, v6, v36

    invoke-virtual {v15, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mOldPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 140
    .end local v3    # "move":I
    .end local v4    # "p":F
    .end local v12    # "path":Landroid/graphics/Path;
    .end local v15    # "path2":Landroid/graphics/Path;
    .end local v24    # "angle":D
    .end local v26    # "centerX":F
    .end local v27    # "disX":F
    .end local v28    # "disY":F
    .end local v32    # "p2":F
    .end local v33    # "percent":F
    .end local v35    # "width":F
    .end local v36    # "y":F
    :cond_c
    return-void
.end method

.method protected initVariables()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->interpolator:Landroid/view/animation/OvershootInterpolator;

    .line 27
    return-void
.end method
