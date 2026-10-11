.class public Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;
.super Landroid/widget/ImageView;
.source "CircleProgressBar.java"

# interfaces
.implements Lcom/dodonew/online/widget/materialrefresh/MaterialHeadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;
    }
.end annotation


# static fields
.field public static final DEFAULT_CIRCLE_BG_LIGHT:I = -0x50506

.field private static final DEFAULT_CIRCLE_DIAMETER:I = 0x28

.field public static final DEFAULT_TEXT_SIZE:I = 0x9

.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final STROKE_WIDTH_LARGE:I = 0x3

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mArrowHeight:I

.field private mArrowWidth:I

.field private mBackGroundColor:I

.field private mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

.field private mCircleBackgroundEnabled:Z

.field private mColors:[I

.field private mDiameter:I

.field private mIfDrawText:Z

.field private mInnerRadius:I

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMax:I

.field private mProgress:I

.field private mProgressColor:I

.field public mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

.field private mProgressStokeWidth:I

.field private mShadowRadius:I

.field private mShowArrow:Z

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    aput v1, v0, v2

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mColors:[I

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    aput v1, v0, v2

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mColors:[I

    .line 89
    invoke-direct {p0, p1, p2, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mColors:[I

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method private elevationSupported()Z
    .locals 2

    .prologue
    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v4, -0x50506

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 101
    sget-object v3, Lcom/dodonew/online/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 106
    .local v1, "density":F
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mBackGroundColor:I

    .line 109
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressColor:I

    .line 111
    new-array v3, v5, [I

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressColor:I

    aput v4, v3, v6

    iput-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mColors:[I

    .line 113
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mInnerRadius:I

    .line 116
    const/4 v3, 0x3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressStokeWidth:I

    .line 118
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mArrowWidth:I

    .line 120
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mArrowHeight:I

    .line 122
    const/16 v3, 0xa

    const/high16 v4, 0x41100000    # 9.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextSize:I

    .line 124
    const/16 v3, 0xb

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextColor:I

    .line 127
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mShowArrow:Z

    .line 128
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mCircleBackgroundEnabled:Z

    .line 131
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgress:I

    .line 132
    const/16 v3, 0x9

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mMax:I

    .line 133
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 134
    .local v2, "textVisible":I
    if-eq v2, v5, :cond_0

    .line 135
    iput-boolean v5, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mIfDrawText:Z

    .line 138
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 139
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    new-instance v3, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    .line 145
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-super {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    return-void
.end method


# virtual methods
.method public circleBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mCircleBackgroundEnabled:Z

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgress:I

    return v0
.end method

.method public getProgressStokeWidth()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressStokeWidth:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public isShowArrow()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mShowArrow:Z

    return v0
.end method

.method public isShowProgressText()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mIfDrawText:Z

    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 279
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 282
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 271
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 274
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 386
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->stop()V

    .line 388
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setVisible(ZZ)Z

    .line 390
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 388
    goto :goto_0
.end method

.method public onBegin(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 414
    return-void
.end method

.method public onComlete(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 1
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->stop()V

    .line 407
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setVisibility(I)V

    .line 408
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 395
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->stop()V

    .line 397
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v0, v1, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setVisible(ZZ)Z

    .line 399
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    iget-boolean v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mIfDrawText:Z

    if-eqz v3, :cond_0

    .line 233
    const-string v3, "%s%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgress:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextSize:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    sub-int v1, v3, v4

    .line 235
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextSize:I

    div-int/lit8 v4, v4, 0x4

    add-int v2, v3, v4

    .line 236
    .local v2, "y":I
    int-to-float v3, v1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 238
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 182
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 184
    .local v2, "density":F
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mDiameter:I

    .line 185
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mDiameter:I

    if-gtz v3, :cond_0

    .line 186
    float-to-int v3, v2

    mul-int/lit8 v3, v3, 0x28

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mDiameter:I

    .line 188
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mCircleBackgroundEnabled:Z

    if-eqz v3, :cond_1

    .line 189
    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v2

    float-to-int v0, v3

    move/from16 v17, v0

    .line 190
    .local v17, "shadowYOffset":I
    const/4 v3, 0x0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    move/from16 v16, v0

    .line 191
    .local v16, "shadowXOffset":I
    const/high16 v3, 0x40600000    # 3.5f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mShadowRadius:I

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->elevationSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    .line 195
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v2

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 206
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mBackGroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    .end local v16    # "shadowXOffset":I
    .end local v17    # "shadowYOffset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mBackGroundColor:I

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mColors:[I

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mDiameter:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mDiameter:I

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mInnerRadius:I

    if-gtz v8, :cond_5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mDiameter:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressStokeWidth:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x4

    int-to-double v8, v8

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressStokeWidth:I

    int-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mArrowWidth:I

    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressStokeWidth:I

    mul-int/lit8 v12, v12, 0x4

    int-to-float v12, v12

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mArrowHeight:I

    if-gez v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressStokeWidth:I

    mul-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    :goto_3
    invoke-virtual/range {v3 .. v13}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->isShowArrow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->showArrowOnFirstStart(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setArrowScale(F)V

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->showArrow(Z)V

    .line 221
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    const/4 v4, 0x0

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 227
    :cond_3
    return-void

    .line 197
    .restart local v16    # "shadowXOffset":I
    .restart local v17    # "shadowYOffset":I
    :cond_4
    new-instance v14, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mShadowRadius:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mDiameter:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mShadowRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v4}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;-><init>(Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;II)V

    .line 198
    .local v14, "oval":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    .line 199
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mShadowRadius:I

    int-to-float v4, v4

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    const/high16 v7, 0x1e000000

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 202
    move-object/from16 v0, p0

    iget v15, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mShadowRadius:I

    .line 204
    .local v15, "padding":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v15, v15, v15}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setPadding(IIII)V

    goto/16 :goto_0

    .line 211
    .end local v14    # "oval":Landroid/graphics/drawable/shapes/OvalShape;
    .end local v15    # "padding":I
    .end local v16    # "shadowXOffset":I
    .end local v17    # "shadowYOffset":I
    :cond_5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mInnerRadius:I

    int-to-double v8, v8

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mArrowWidth:I

    int-to-float v12, v12

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mArrowHeight:I

    int-to-float v13, v13

    goto/16 :goto_3
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 165
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->elevationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setMeasuredDimension(II)V

    .line 169
    :cond_0
    return-void
.end method

.method public onPull(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V
    .locals 1
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
    .param p2, "fraction"    # F

    .prologue
    .line 419
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 420
    return-void
.end method

.method public onRefreshing(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 1
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->start()V

    .line 433
    :cond_0
    return-void
.end method

.method public onRelease(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V
    .locals 0
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
    .param p2, "fraction"    # F

    .prologue
    .line 425
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 266
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3
    .param p1, "colorRes"    # I

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 321
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setCircleBackgroundEnabled(Z)V
    .locals 0
    .param p1, "enableCircleBackground"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mCircleBackgroundEnabled:Z

    .line 360
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 309
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mColors:[I

    .line 310
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressDrawable:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 313
    :cond_0
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 294
    .local v2, "res":Landroid/content/res/Resources;
    array-length v3, p1

    new-array v0, v3, [I

    .line 295
    .local v0, "colorRes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 296
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setColorSchemeColors([I)V

    .line 299
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 262
    return-void
.end method

.method public final setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 243
    return-void
.end method

.method public final setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 258
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mMax:I

    .line 339
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getMax()I

    move-result v0

    if-lez v0, :cond_0

    .line 347
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgress:I

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->invalidate()V

    .line 350
    const-string v0, "cjj_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress------->>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method

.method public setProgressBackGroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mBackGroundColor:I

    .line 151
    return-void
.end method

.method public setProgressStokeWidth(I)V
    .locals 2
    .param p1, "mProgressStokeWidth"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 177
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mProgressStokeWidth:I

    .line 178
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0
    .param p1, "showArrow"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mShowArrow:Z

    .line 252
    return-void
.end method

.method public setShowProgressText(Z)V
    .locals 0
    .param p1, "mIfDrawText"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mIfDrawText:Z

    .line 331
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->mTextColor:I

    .line 156
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    return-void
.end method
