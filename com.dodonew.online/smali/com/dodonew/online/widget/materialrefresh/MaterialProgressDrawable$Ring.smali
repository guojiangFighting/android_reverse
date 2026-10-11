.class Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 398
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 399
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 402
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 403
    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 404
    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 405
    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRotation:F

    .line 406
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 407
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 426
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 428
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 429
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 430
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 433
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 434
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 476
    iget-boolean v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v3, :cond_1

    .line 477
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v3, :cond_2

    .line 478
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 479
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 486
    :goto_0
    iget-wide v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v0, v4

    .line 487
    .local v0, "x":F
    iget-wide v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 493
    .local v1, "y":F
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 494
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 495
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v10

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v10

    sub-float v4, v0, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 498
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 500
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mColors:[I

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    cmpg-float v3, p3, v2

    if-gez v3, :cond_0

    move p3, v2

    .end local p3    # "sweepAngle":F
    :cond_0
    add-float v3, p2, p3

    sub-float v2, v3, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 503
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 502
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 504
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 506
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_1
    return-void

    .line 481
    .restart local p3    # "sweepAngle":F
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method private invalidateSelf()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v5, 0x43b40000    # 360.0f

    .line 455
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 456
    .local v1, "arcBounds":Landroid/graphics/RectF;
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 457
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStrokeInset:F

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v1, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 459
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v4

    mul-float v2, v0, v5

    .line 460
    .local v2, "startAngle":F
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mEndTrim:F

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v4

    mul-float v6, v0, v5

    .line 461
    .local v6, "endAngle":F
    sub-float v3, v6, v2

    .line 462
    .local v3, "sweepAngle":F
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mColors:[I

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 465
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 467
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v4, 0xff

    if-ge v0, v4, :cond_0

    .line 468
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mAlpha:I

    rsub-int v4, v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 470
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v7, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 473
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public getCenterRadius()D
    .locals 2

    .prologue
    .line 626
    iget-wide v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-wide v0
.end method

.method public getEndTrim()F
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method public getInsets()F
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRotation:F

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method public getStartingEndTrim()F
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method public getStartingRotation()F
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method public getStartingStartTrim()F
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method public goToNextColor()V
    .locals 2

    .prologue
    .line 532
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 533
    return-void
.end method

.method public resetOriginals()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 678
    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 679
    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 680
    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 681
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 682
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 683
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 684
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 551
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mAlpha:I

    .line 552
    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 447
    float-to-int v0, p1

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowWidth:I

    .line 448
    float-to-int v0, p2

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowHeight:I

    .line 449
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 651
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 652
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 653
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 655
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 437
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    .line 438
    return-void
.end method

.method public setCenterRadius(D)V
    .locals 1
    .param p1, "centerRadius"    # D

    .prologue
    .line 634
    iput-wide p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    .line 635
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 537
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 538
    return-void
.end method

.method public setColorIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 524
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 525
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 514
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mColors:[I

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 517
    return-void
.end method

.method public setEndTrim(F)V
    .locals 0
    .param p1, "endTrim"    # F

    .prologue
    .line 594
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 595
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 596
    return-void
.end method

.method public setInsets(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 610
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v1, v2

    .line 612
    .local v1, "minEdge":F
    iget-wide v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 613
    :cond_0
    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 617
    .local v0, "insets":F
    :goto_0
    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 618
    return-void

    .line 615
    .end local v0    # "insets":F
    :cond_1
    div-float v2, v1, v6

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .restart local v0    # "insets":F
    goto :goto_0
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 605
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRotation:F

    .line 606
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 607
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eq v0, p1, :cond_0

    .line 642
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 643
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 645
    :cond_0
    return-void
.end method

.method public setStartTrim(F)V
    .locals 0
    .param p1, "startTrim"    # F

    .prologue
    .line 575
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 576
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 577
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 563
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 564
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 565
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 566
    return-void
.end method

.method public storeOriginals()V
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 670
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 671
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 672
    return-void
.end method
