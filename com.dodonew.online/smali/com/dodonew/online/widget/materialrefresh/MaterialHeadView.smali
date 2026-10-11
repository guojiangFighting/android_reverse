.class public Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;
.super Landroid/widget/FrameLayout;
.source "MaterialHeadView.java"

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

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-virtual {p0, p2, p3}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->init(Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;)Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    .prologue
    .line 10
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressValue:I

    return v0
.end method


# virtual methods
.method public getWaveColor()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->waveColor:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setClipToPadding(Z)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 119
    new-instance v1, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    .line 120
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->waveColor:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->setColor(I)V

    .line 121
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->addView(Landroid/view/View;)V

    .line 123
    new-instance v1, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    .line 124
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressSize:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/Util;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/materialrefresh/Util;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 126
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progress_colors:[I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setColorSchemeColors([I)V

    .line 128
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressStokeWidth:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setProgressStokeWidth(I)V

    .line 129
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget-boolean v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->isShowArrow:Z

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setShowArrow(Z)V

    .line 130
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->textType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setShowProgressText(Z)V

    .line 131
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressTextColor:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setTextColor(I)V

    .line 132
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressValue:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setProgress(I)V

    .line 133
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressValueMax:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setMax(I)V

    .line 134
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget-boolean v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->isShowProgressBg:Z

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setCircleBackgroundEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressBg:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setProgressBackGroundColor(I)V

    .line 136
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->addView(Landroid/view/View;)V

    .line 138
    return-void

    .line 130
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBegin(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 1
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->onBegin(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->onBegin(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 168
    :cond_1
    return-void
.end method

.method public onComlete(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->onComlete(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->onComlete(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 150
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 151
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 152
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 156
    :cond_1
    return-void
.end method

.method public onPull(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
    .param p2, "fraction"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 172
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {v1, p1, p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->onPull(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v1, p1, p2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->onPull(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V

    .line 179
    invoke-static {v2, p2}, Lcom/dodonew/online/widget/materialrefresh/Util;->limitValue(FF)F

    move-result v0

    .line 180
    .local v0, "a":F
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 181
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 182
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 184
    .end local v0    # "a":F
    :cond_1
    return-void
.end method

.method public onRefreshing(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->onRefreshing(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->onRefreshing(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 202
    :cond_1
    return-void
.end method

.method public onRelease(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V
    .locals 0
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
    .param p2, "fraction"    # F

    .prologue
    .line 189
    return-void
.end method

.method public setIsProgressBg(Z)V
    .locals 0
    .param p1, "isShowProgressBg"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->isShowProgressBg:Z

    .line 70
    return-void
.end method

.method public setProgressBg(I)V
    .locals 0
    .param p1, "progressBg"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressBg:I

    .line 65
    return-void
.end method

.method public setProgressColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progress_colors:[I

    .line 80
    return-void
.end method

.method public setProgressSize(I)V
    .locals 0
    .param p1, "progressSize"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressSize:I

    .line 60
    return-void
.end method

.method public setProgressStokeWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressStokeWidth:I

    .line 109
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressTextColor:I

    .line 75
    return-void
.end method

.method public setProgressValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressValue:I

    .line 90
    new-instance v0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView$1;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;)V

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public setProgressValueMax(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->progressValueMax:I

    .line 104
    return-void
.end method

.method public setTextType(I)V
    .locals 0
    .param p1, "textType"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->textType:I

    .line 85
    return-void
.end method

.method public setWaveColor(I)V
    .locals 2
    .param p1, "waveColor"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->waveColor:I

    .line 51
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->materialWaveView:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->waveColor:I

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->setColor(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public showProgressArrow(Z)V
    .locals 0
    .param p1, "isShowArrow"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->isShowArrow:Z

    .line 114
    return-void
.end method
