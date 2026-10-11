.class public Lcom/dodonew/online/widget/GifView;
.super Landroid/view/View;
.source "GifView.java"


# static fields
.field private static final DEFAULT_MOVIEW_DURATION:I = 0x3e8


# instance fields
.field private mCurrentAnimationTime:I

.field private mLeft:F

.field private mMeasuredMovieHeight:I

.field private mMeasuredMovieWidth:I

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieResourceId:I

.field private mMovieStart:J

.field private volatile mPaused:Z

.field private mScale:F

.field private mTop:F

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/dodonew/online/widget/GifView;->mCurrentAnimationTime:I

    .line 45
    iput-boolean v0, p0, Lcom/dodonew/online/widget/GifView;->mPaused:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/GifView;->mVisible:Z

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/dodonew/online/widget/GifView;->setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method private drawMovieFrame(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/dodonew/online/widget/GifView;->mCurrentAnimationTime:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 245
    iget v0, p0, Lcom/dodonew/online/widget/GifView;->mScale:F

    iget v1, p0, Lcom/dodonew/online/widget/GifView;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 246
    iget-object v0, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/dodonew/online/widget/GifView;->mLeft:F

    iget v2, p0, Lcom/dodonew/online/widget/GifView;->mScale:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/dodonew/online/widget/GifView;->mTop:F

    iget v3, p0, Lcom/dodonew/online/widget/GifView;->mScale:F

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 248
    return-void
.end method

.method private invalidateView()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/dodonew/online/widget/GifView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->postInvalidateOnAnimation()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->invalidate()V

    goto :goto_0
.end method

.method private setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v5, v1}, Lcom/dodonew/online/widget/GifView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 73
    :cond_0
    sget-object v1, Lcom/dodonew/online/R$styleable;->GifView:[I

    const v2, 0x7f090191

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/GifView;->mMovieResourceId:I

    .line 77
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/GifView;->mPaused:Z

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    iget v1, p0, Lcom/dodonew/online/widget/GifView;->mMovieResourceId:I

    if-eq v1, v3, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/dodonew/online/widget/GifView;->mMovieResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    .line 84
    :cond_1
    return-void
.end method

.method private updateAnimationTime()V
    .locals 8

    .prologue
    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 224
    .local v2, "now":J
    iget-wide v4, p0, Lcom/dodonew/online/widget/GifView;->mMovieStart:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 225
    iput-wide v2, p0, Lcom/dodonew/online/widget/GifView;->mMovieStart:J

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v0

    .line 230
    .local v0, "dur":I
    if-nez v0, :cond_1

    .line 231
    const/16 v0, 0x3e8

    .line 234
    :cond_1
    iget-wide v4, p0, Lcom/dodonew/online/widget/GifView;->mMovieStart:J

    sub-long v4, v2, v4

    int-to-long v6, v0

    rem-long/2addr v4, v6

    long-to-int v1, v4

    iput v1, p0, Lcom/dodonew/online/widget/GifView;->mCurrentAnimationTime:I

    .line 235
    return-void
.end method


# virtual methods
.method public getMovie()Landroid/graphics/Movie;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/dodonew/online/widget/GifView;->mPaused:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    .line 191
    iget-boolean v0, p0, Lcom/dodonew/online/widget/GifView;->mPaused:Z

    if-nez v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/dodonew/online/widget/GifView;->updateAnimationTime()V

    .line 193
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/GifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    .line 194
    invoke-direct {p0}, Lcom/dodonew/online/widget/GifView;->invalidateView()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/GifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 177
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 182
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/dodonew/online/widget/GifView;->mMeasuredMovieWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/dodonew/online/widget/GifView;->mLeft:F

    .line 183
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/dodonew/online/widget/GifView;->mMeasuredMovieHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/dodonew/online/widget/GifView;->mTop:F

    .line 185
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dodonew/online/widget/GifView;->mVisible:Z

    .line 186
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 127
    iget-object v8, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v8, :cond_2

    .line 128
    iget-object v8, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->width()I

    move-result v5

    .line 129
    .local v5, "movieWidth":I
    iget-object v8, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->height()I

    move-result v4

    .line 134
    .local v4, "movieHeight":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 135
    .local v6, "scaleH":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 137
    .local v3, "measureModeWidth":I
    if-eqz v3, :cond_0

    .line 138
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 139
    .local v1, "maximumWidth":I
    if-le v5, v1, :cond_0

    .line 140
    int-to-float v8, v5

    int-to-float v9, v1

    div-float v6, v8, v9

    .line 147
    .end local v1    # "maximumWidth":I
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    .line 148
    .local v7, "scaleW":F
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 150
    .local v2, "measureModeHeight":I
    if-eqz v2, :cond_1

    .line 151
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 152
    .local v0, "maximumHeight":I
    if-le v4, v0, :cond_1

    .line 153
    int-to-float v8, v4

    int-to-float v9, v0

    div-float v7, v8, v9

    .line 160
    .end local v0    # "maximumHeight":I
    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/dodonew/online/widget/GifView;->mScale:F

    .line 162
    int-to-float v8, v5

    iget v9, p0, Lcom/dodonew/online/widget/GifView;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/dodonew/online/widget/GifView;->mMeasuredMovieWidth:I

    .line 163
    int-to-float v8, v4

    iget v9, p0, Lcom/dodonew/online/widget/GifView;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/dodonew/online/widget/GifView;->mMeasuredMovieHeight:I

    .line 165
    iget v8, p0, Lcom/dodonew/online/widget/GifView;->mMeasuredMovieWidth:I

    iget v9, p0, Lcom/dodonew/online/widget/GifView;->mMeasuredMovieHeight:I

    invoke-virtual {p0, v8, v9}, Lcom/dodonew/online/widget/GifView;->setMeasuredDimension(II)V

    .line 173
    .end local v2    # "measureModeHeight":I
    .end local v3    # "measureModeWidth":I
    .end local v4    # "movieHeight":I
    .end local v5    # "movieWidth":I
    .end local v6    # "scaleH":F
    .end local v7    # "scaleW":F
    :goto_0
    return-void

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/dodonew/online/widget/GifView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 253
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 254
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/dodonew/online/widget/GifView;->mVisible:Z

    .line 255
    invoke-direct {p0}, Lcom/dodonew/online/widget/GifView;->invalidateView()V

    .line 256
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 261
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 262
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dodonew/online/widget/GifView;->mVisible:Z

    .line 263
    invoke-direct {p0}, Lcom/dodonew/online/widget/GifView;->invalidateView()V

    .line 264
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 269
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dodonew/online/widget/GifView;->mVisible:Z

    .line 270
    invoke-direct {p0}, Lcom/dodonew/online/widget/GifView;->invalidateView()V

    .line 271
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMovie(Landroid/graphics/Movie;)V
    .locals 0
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    .line 94
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->requestLayout()V

    .line 95
    return-void
.end method

.method public setMovieResource(I)V
    .locals 2
    .param p1, "movieResId"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/dodonew/online/widget/GifView;->mMovieResourceId:I

    .line 88
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/GifView;->mMovieResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/GifView;->mMovie:Landroid/graphics/Movie;

    .line 89
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->requestLayout()V

    .line 90
    return-void
.end method

.method public setMovieTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/dodonew/online/widget/GifView;->mCurrentAnimationTime:I

    .line 103
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->invalidate()V

    .line 104
    return-void
.end method

.method public setPaused(Z)V
    .locals 4
    .param p1, "paused"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/dodonew/online/widget/GifView;->mPaused:Z

    .line 113
    if-nez p1, :cond_0

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/dodonew/online/widget/GifView;->mCurrentAnimationTime:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dodonew/online/widget/GifView;->mMovieStart:J

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/GifView;->invalidate()V

    .line 118
    return-void
.end method
