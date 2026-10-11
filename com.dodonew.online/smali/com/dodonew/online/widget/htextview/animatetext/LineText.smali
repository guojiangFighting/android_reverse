.class public Lcom/dodonew/online/widget/htextview/animatetext/LineText;
.super Lcom/dodonew/online/widget/htextview/animatetext/HText;
.source "LineText.java"


# instance fields
.field ANIMA_DURATION:F

.field private distHeight:F

.field private distWidth:F

.field gap:F

.field linePaint:Landroid/graphics/Paint;

.field mTextHeight:F

.field p1:Landroid/graphics/PointF;

.field p2:Landroid/graphics/PointF;

.field p3:Landroid/graphics/PointF;

.field p4:Landroid/graphics/PointF;

.field p5:Landroid/graphics/PointF;

.field p6:Landroid/graphics/PointF;

.field p7:Landroid/graphics/PointF;

.field p8:Landroid/graphics/PointF;

.field padding:F

.field progress:F

.field xLineLength:I

.field private xLineShort:I

.field private xLineWidth:F

.field private yLineLength:F

.field private yLineShort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;-><init>()V

    .line 18
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->progress:F

    .line 19
    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->ANIMA_DURATION:F

    .line 21
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mTextHeight:F

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p1:Landroid/graphics/PointF;

    .line 27
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p2:Landroid/graphics/PointF;

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p3:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p4:Landroid/graphics/PointF;

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p5:Landroid/graphics/PointF;

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p6:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p7:Landroid/graphics/PointF;

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p8:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method protected animatePrepare(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mTextHeight:F

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->padding:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineWidth:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->padding:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineWidth:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    .line 80
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineLength:I

    .line 81
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->yLineLength:F

    .line 82
    return-void
.end method

.method protected animateStart(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->ANIMA_DURATION:F

    float-to-long v2, v2

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 60
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    new-instance v1, Lcom/dodonew/online/widget/htextview/animatetext/LineText$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/htextview/animatetext/LineText$1;-><init>(Lcom/dodonew/online/widget/htextview/animatetext/LineText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->progress:F

    .line 69
    return-void

    .line 58
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected drawFrame(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 85
    iget v7, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->progress:F

    .line 88
    .local v7, "percent":F
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->gap:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineLength:I

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->gap:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->yLineLength:F

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->gap:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineWidth:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    mul-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 92
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 93
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineLength:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p1:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p1:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p1:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->gap:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineWidth:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    mul-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p2:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->yLineLength:F

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p2:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p2:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p3:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->gap:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 100
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p3:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 101
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p3:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineLength:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p3:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p3:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p3:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p4:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p4:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->gap:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 105
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p4:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p4:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->yLineLength:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p4:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p4:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    iget v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    iget v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->gap:F

    add-float/2addr v0, v1

    sub-float v1, v8, v7

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineShort:I

    .line 110
    iget v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    iget v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->gap:F

    add-float/2addr v0, v1

    sub-float v1, v8, v7

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->yLineShort:I

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p5:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p5:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p5:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineShort:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p5:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p5:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p5:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p6:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p6:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p6:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p6:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->yLineShort:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p6:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p6:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p7:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->gap:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p7:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 122
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p7:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineShort:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p7:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p7:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p7:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p8:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distWidth:F

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 125
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p8:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->distHeight:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->gap:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 126
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p8:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p8:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->yLineShort:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p8:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->p8:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->startX:F

    iget v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->startY:F

    iget-object v6, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 130
    return-void
.end method

.method protected initVariables()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/htextview/util/DisplayUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineWidth:F

    .line 48
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/htextview/util/DisplayUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->padding:F

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->xLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    return-void
.end method
