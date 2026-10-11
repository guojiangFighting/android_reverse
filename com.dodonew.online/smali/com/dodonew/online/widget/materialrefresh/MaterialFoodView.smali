.class public Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;
.super Landroid/widget/FrameLayout;
.source "MaterialFoodView.java"

# interfaces
.implements Lcom/dodonew/online/widget/materialrefresh/MaterialHeadListener;


# instance fields
.field private circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

.field private isShowArrow:Z

.field private isShowProgressBg:Z

.field private listener:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadListener;

.field private materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

.field private progressBg:I

.field private progressSize:I

.field private progressStokeWidth:I

.field private progressTextColor:I

.field private progressValue:I

.field private progressValueMax:I

.field private progress_colors:[I

.field private textType:I

.field private waveColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0, p2, p3}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->init(Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;)Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    .prologue
    .line 10
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressValue:I

    return v0
.end method


# virtual methods
.method public getWaveColor()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->waveColor:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setClipToPadding(Z)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 108
    new-instance v1, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    .line 109
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->waveColor:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->setColor(I)V

    .line 110
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->addView(Landroid/view/View;)V

    .line 112
    new-instance v1, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    .line 113
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressSize:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/Util;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/materialrefresh/Util;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progress_colors:[I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setColorSchemeColors([I)V

    .line 117
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressStokeWidth:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setProgressStokeWidth(I)V

    .line 118
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget-boolean v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->isShowArrow:Z

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setShowArrow(Z)V

    .line 119
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->textType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setShowProgressText(Z)V

    .line 120
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressTextColor:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setTextColor(I)V

    .line 121
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressValue:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setProgress(I)V

    .line 122
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressValueMax:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setMax(I)V

    .line 123
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget-boolean v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->isShowProgressBg:Z

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setCircleBackgroundEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressBg:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setProgressBackGroundColor(I)V

    .line 125
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->addView(Landroid/view/View;)V

    .line 127
    return-void

    .line 119
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBegin(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->onBegin(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->onBegin(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 153
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 156
    :cond_1
    return-void
.end method

.method public onComlete(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->onComlete(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->onComlete(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 144
    :cond_1
    return-void
.end method

.method public onPull(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
    .param p2, "fraction"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 160
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {v1, p1, p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->onPull(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v1, p1, p2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->onPull(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V

    .line 165
    invoke-static {v2, p2}, Lcom/dodonew/online/widget/materialrefresh/Util;->limitValue(FF)F

    move-result v0

    .line 166
    .local v0, "a":F
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 167
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 168
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 170
    .end local v0    # "a":F
    :cond_1
    return-void
.end method

.method public onRefreshing(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->onRefreshing(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->onRefreshing(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 186
    :cond_1
    return-void
.end method

.method public onRelease(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V
    .locals 0
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
    .param p2, "fraction"    # F

    .prologue
    .line 175
    return-void
.end method

.method public setIsProgressBg(Z)V
    .locals 0
    .param p1, "isShowProgressBg"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->isShowProgressBg:Z

    .line 66
    return-void
.end method

.method public setProgressBg(I)V
    .locals 0
    .param p1, "progressBg"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressBg:I

    .line 62
    return-void
.end method

.method public setProgressColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progress_colors:[I

    .line 74
    return-void
.end method

.method public setProgressSize(I)V
    .locals 0
    .param p1, "progressSize"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressSize:I

    .line 58
    return-void
.end method

.method public setProgressStokeWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressStokeWidth:I

    .line 99
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressTextColor:I

    .line 70
    return-void
.end method

.method public setProgressValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressValue:I

    .line 82
    new-instance v0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView$1;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;)V

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public setProgressValueMax(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->progressValueMax:I

    .line 95
    return-void
.end method

.method public setTextType(I)V
    .locals 0
    .param p1, "textType"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->textType:I

    .line 78
    return-void
.end method

.method public setWaveColor(I)V
    .locals 2
    .param p1, "waveColor"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->waveColor:I

    .line 51
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->waveColor:I

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->setColor(I)V

    .line 54
    :cond_0
    return-void
.end method

.method public showProgressArrow(Z)V
    .locals 0
    .param p1, "isShowArrow"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->isShowArrow:Z

    .line 103
    return-void
.end method
