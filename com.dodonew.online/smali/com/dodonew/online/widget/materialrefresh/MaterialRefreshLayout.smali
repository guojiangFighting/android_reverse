.class public Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
.super Landroid/widget/FrameLayout;
.source "MaterialRefreshLayout.java"


# static fields
.field public static final Tag:Ljava/lang/String; = "cjj_log"


# instance fields
.field private BIG_PROGRESS_SIZE:I

.field private DEFAULT_HEAD_HEIGHT:I

.field private DEFAULT_PROGRESS_SIZE:I

.field private DEFAULT_WAVE_HEIGHT:I

.field private HIGHER_WAVE_HEIGHT:I

.field private PROGRESS_STOKE_WIDTH:I

.field private colorSchemeColors:[I

.field private colorsId:I

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private hIGHER_HEAD_HEIGHT:I

.field private headHeight:F

.field private isLoadMore:Z

.field private isLoadMoreing:Z

.field private isOverlay:Z

.field protected isRefreshing:Z

.field private isShowWave:Z

.field private mChildView:Landroid/view/View;

.field private mCurrentY:F

.field protected mHeadHeight:F

.field protected mHeadLayout:Landroid/widget/FrameLayout;

.field private mTouchY:F

.field protected mWaveHeight:F

.field private materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

.field private materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

.field private progressBg:I

.field private progressMax:I

.field private progressSize:I

.field private progressSizeType:I

.field private progressTextColor:I

.field private progressValue:I

.field private refreshListener:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;

.field private showArrow:Z

.field private showProgressBg:Z

.field private textType:I

.field private waveColor:I

.field private waveHeight:F

.field private waveType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/16 v0, 0x8c

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->DEFAULT_WAVE_HEIGHT:I

    .line 38
    const/16 v0, 0xb4

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->HIGHER_WAVE_HEIGHT:I

    .line 40
    const/16 v0, 0x46

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->DEFAULT_HEAD_HEIGHT:I

    .line 42
    const/16 v0, 0x64

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    .line 44
    const/16 v0, 0x32

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->DEFAULT_PROGRESS_SIZE:I

    .line 46
    const/16 v0, 0x3c

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->BIG_PROGRESS_SIZE:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->PROGRESS_STOKE_WIDTH:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressSize:I

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isLoadMoreing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isLoadMoreing:Z

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defstyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->getChildCount()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 119
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can only have one child widget"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 125
    sget-object v1, Lcom/dodonew/online/R$styleable;->MaterialRefreshLayout:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, "t":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isOverlay:Z

    .line 128
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->waveType:I

    .line 129
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->waveType:I

    if-nez v1, :cond_2

    .line 130
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->DEFAULT_HEAD_HEIGHT:I

    int-to-float v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->headHeight:F

    .line 131
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->DEFAULT_WAVE_HEIGHT:I

    int-to-float v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->waveHeight:F

    .line 132
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->DEFAULT_HEAD_HEIGHT:I

    sput v1, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->DefaulHeadHeight:I

    .line 133
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->DEFAULT_WAVE_HEIGHT:I

    sput v1, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->DefaulWaveHeight:I

    .line 140
    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->waveColor:I

    .line 141
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isShowWave:Z

    .line 144
    const/4 v1, 0x4

    const v2, 0x7f0b0001

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->colorsId:I

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->colorsId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->colorSchemeColors:[I

    .line 146
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->showArrow:Z

    .line 147
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->textType:I

    .line 148
    const/16 v1, 0xe

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressTextColor:I

    .line 149
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressValue:I

    .line 150
    const/16 v1, 0xc

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressMax:I

    .line 151
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->showProgressBg:Z

    .line 152
    const/4 v1, 0x6

    const v2, -0x50506

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressBg:I

    .line 153
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressSizeType:I

    .line 154
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressSizeType:I

    if-nez v1, :cond_3

    .line 155
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->DEFAULT_PROGRESS_SIZE:I

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressSize:I

    .line 159
    :goto_2
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isLoadMore:Z

    .line 160
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 135
    :cond_2
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    int-to-float v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->headHeight:F

    .line 136
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->HIGHER_WAVE_HEIGHT:I

    int-to-float v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->waveHeight:F

    .line 137
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    sput v1, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->DefaulHeadHeight:I

    .line 138
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->HIGHER_WAVE_HEIGHT:I

    sput v1, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->DefaulWaveHeight:I

    goto/16 :goto_1

    .line 157
    :cond_3
    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->BIG_PROGRESS_SIZE:I

    iput v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressSize:I

    goto :goto_2
.end method

.method private soveLoadMoreLogic()V
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isLoadMoreing:Z

    .line 256
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->onBegin(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 259
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->onRefreshing(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->refreshListener:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->refreshListener:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 264
    :cond_1
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 3

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isRefreshing:Z

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->updateListener()V

    .line 328
    iget-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isOverlay:Z

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadHeight:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 330
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadHeight:F

    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->createAnimatorTranslationY(Landroid/view/View;FLandroid/widget/FrameLayout;)V

    goto :goto_0
.end method

.method public autoRefreshLoadMore()V
    .locals 2

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isLoadMore:Z

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->soveLoadMoreLogic()V

    .line 344
    return-void

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must  setLoadMore ture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canChildScrollDown()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 439
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v4

    .line 442
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v2, v5, :cond_5

    .line 443
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-eqz v2, :cond_3

    .line 444
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 445
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 446
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 447
    .local v1, "lastChildBottom":I
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v5, v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_2

    move v2, v3

    :goto_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 453
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    .end local v1    # "lastChildBottom":I
    :cond_3
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-lez v2, :cond_0

    :cond_4
    move v4, v3

    goto :goto_0

    .line 456
    :cond_5
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    goto :goto_0
.end method

.method public canChildScrollUp()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 413
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v2

    .line 416
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_6

    .line 417
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_4

    .line 418
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 419
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 420
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 421
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_3

    :cond_2
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 423
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_4
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-lez v3, :cond_0

    :cond_5
    move v2, v1

    goto :goto_0

    .line 426
    :cond_6
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    goto :goto_0
.end method

.method public createAnimatorTranslationY(Landroid/view/View;FLandroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "h"    # F
    .param p3, "fl"    # Landroid/widget/FrameLayout;

    .prologue
    .line 393
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 394
    .local v0, "viewPropertyAnimatorCompat":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 395
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 396
    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 397
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 398
    new-instance v1, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$1;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;Landroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 406
    return-void
.end method

.method public finishRefresh()V
    .locals 1

    .prologue
    .line 490
    new-instance v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$2;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method

.method public finishRefreshLoadMore()V
    .locals 1

    .prologue
    .line 499
    new-instance v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$3;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 509
    return-void
.end method

.method public finishRefreshing()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 468
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 470
    .local v0, "viewPropertyAnimatorCompat":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 471
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->y(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 472
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 473
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 474
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 476
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    invoke-virtual {v1, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->onComlete(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->refreshListener:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;

    if-eqz v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->refreshListener:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 484
    .end local v0    # "viewPropertyAnimatorCompat":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_1
    iput-boolean v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isRefreshing:Z

    .line 485
    iput v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressValue:I

    .line 486
    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setProgressValue(I)V

    .line 487
    return-void
.end method

.method public isBottom()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 431
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 435
    :goto_0
    return v0

    .line 434
    :cond_0
    const-string v1, "yang"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dddd   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 166
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 168
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "headViewLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x30

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iput-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    .line 177
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {p0, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    .line 181
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->waveHeight:F

    invoke-static {v0, v4}, Lcom/dodonew/online/widget/materialrefresh/Util;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setWaveHeight(F)V

    .line 186
    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->headHeight:F

    invoke-static {v0, v4}, Lcom/dodonew/online/widget/materialrefresh/Util;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setHeaderHeight(F)V

    .line 188
    new-instance v4, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    invoke-direct {v4, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    .line 189
    iget-object v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget-boolean v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isShowWave:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->waveColor:I

    :goto_1
    invoke-virtual {v6, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setWaveColor(I)V

    .line 190
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget-boolean v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->showArrow:Z

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->showProgressArrow(Z)V

    .line 191
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressSize:I

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setProgressSize(I)V

    .line 192
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget-object v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->colorSchemeColors:[I

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setProgressColors([I)V

    .line 193
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->PROGRESS_STOKE_WIDTH:I

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setProgressStokeWidth(I)V

    .line 194
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->textType:I

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setTextType(I)V

    .line 195
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressTextColor:I

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setProgressTextColor(I)V

    .line 196
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressValue:I

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setProgressValue(I)V

    .line 197
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressMax:I

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setProgressValueMax(I)V

    .line 198
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget-boolean v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->showProgressBg:Z

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setIsProgressBg(Z)V

    .line 199
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    iget v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressBg:I

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setProgressBg(I)V

    .line 200
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setHeaderView(Landroid/view/View;)V

    .line 202
    iget-boolean v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isLoadMore:Z

    if-eqz v4, :cond_0

    .line 203
    new-instance v4, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    invoke-direct {v4, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    .line 204
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    int-to-float v4, v4

    invoke-static {v0, v4}, Lcom/dodonew/online/widget/materialrefresh/Util;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 205
    .local v3, "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x50

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 206
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    invoke-virtual {v4, v3}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    iget-boolean v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->showArrow:Z

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->showProgressArrow(Z)V

    .line 208
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressSize:I

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setProgressSize(I)V

    .line 209
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    iget-object v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->colorSchemeColors:[I

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setProgressColors([I)V

    .line 210
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->PROGRESS_STOKE_WIDTH:I

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setProgressStokeWidth(I)V

    .line 211
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->textType:I

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setTextType(I)V

    .line 212
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressValue:I

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setProgressValue(I)V

    .line 213
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressMax:I

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setProgressValueMax(I)V

    .line 214
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    iget-boolean v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->showProgressBg:Z

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setIsProgressBg(Z)V

    .line 215
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressBg:I

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setProgressBg(I)V

    .line 216
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setVisibility(I)V

    .line 217
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setFooderView(Landroid/view/View;)V

    goto/16 :goto_0

    .end local v3    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v4, v5

    .line 189
    goto/16 :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 229
    iget-boolean v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isRefreshing:Z

    if-eqz v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v2

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 251
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 232
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mTouchY:F

    .line 233
    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mTouchY:F

    iput v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mCurrentY:F

    goto :goto_1

    .line 236
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 237
    .local v0, "currentY":F
    iget v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mTouchY:F

    sub-float v1, v0, v3

    .line 238
    .local v1, "dy":F
    cmpl-float v3, v1, v4

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->canChildScrollUp()Z

    move-result v3

    if-nez v3, :cond_3

    .line 239
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    invoke-virtual {v3, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->onBegin(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    goto :goto_0

    .line 243
    :cond_3
    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->canChildScrollDown()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isLoadMore:Z

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialFoodView:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isLoadMoreing:Z

    if-nez v2, :cond_4

    .line 245
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->soveLoadMoreLogic()V

    .line 247
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 225
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 268
    iget-boolean v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isRefreshing:Z

    if-eqz v4, :cond_1

    .line 269
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 321
    :cond_0
    :goto_0
    return v3

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 321
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 274
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mCurrentY:F

    .line 275
    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mCurrentY:F

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mTouchY:F

    sub-float v0, v4, v5

    .line 276
    .local v0, "dy":F
    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mWaveHeight:F

    mul-float/2addr v4, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 277
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 278
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mWaveHeight:F

    div-float v5, v0, v5

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v0

    div-float v2, v4, v6

    .line 280
    .local v2, "offsetY":F
    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadHeight:F

    div-float v1, v2, v4

    .line 281
    .local v1, "fraction":F
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, v2

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 282
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 284
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    if-eqz v4, :cond_2

    .line 285
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    invoke-virtual {v4, p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->onPull(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;F)V

    .line 288
    :cond_2
    iget-boolean v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isOverlay:Z

    if-nez v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    .line 295
    .end local v0    # "dy":F
    .end local v1    # "fraction":F
    .end local v2    # "offsetY":F
    :pswitch_1
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 296
    iget-boolean v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isOverlay:Z

    if-eqz v4, :cond_4

    .line 297
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadHeight:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 299
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->updateListener()V

    .line 301
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadHeight:F

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->requestLayout()V

    goto/16 :goto_0

    .line 305
    :cond_3
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 306
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->requestLayout()V

    goto/16 :goto_0

    .line 310
    :cond_4
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadHeight:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    .line 311
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadHeight:F

    iget-object v6, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v5, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->createAnimatorTranslationY(Landroid/view/View;FLandroid/widget/FrameLayout;)V

    .line 312
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->updateListener()V

    goto/16 :goto_0

    .line 314
    :cond_5
    iget-object v4, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    iget-object v5, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v7, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->createAnimatorTranslationY(Landroid/view/View;FLandroid/widget/FrameLayout;)V

    goto/16 :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFooderView(Landroid/view/View;)V
    .locals 0
    .param p1, "fooderView"    # Landroid/view/View;

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->addView(Landroid/view/View;)V

    .line 522
    return-void
.end method

.method public setHeaderHeight(F)V
    .locals 0
    .param p1, "headHeight"    # F

    .prologue
    .line 530
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadHeight:F

    .line 531
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 512
    new-instance v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$4;

    invoke-direct {v0, p0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$4;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 518
    return-void
.end method

.method public setIsOverLay(Z)V
    .locals 0
    .param p1, "isOverLay"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isOverlay:Z

    .line 385
    return-void
.end method

.method public setLoadMore(Z)V
    .locals 0
    .param p1, "isLoadMore"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isLoadMore:Z

    .line 361
    return-void
.end method

.method public setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V
    .locals 0
    .param p1, "refreshListener"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->refreshListener:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;

    .line 535
    return-void
.end method

.method public setProgressColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 364
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->colorSchemeColors:[I

    .line 365
    return-void
.end method

.method public setProgressValue(I)V
    .locals 1
    .param p1, "progressValue"    # I

    .prologue
    .line 388
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->progressValue:I

    .line 389
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->setProgressValue(I)V

    .line 390
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0
    .param p1, "showArrow"    # Z

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->showArrow:Z

    .line 369
    return-void
.end method

.method public setShowProgressBg(Z)V
    .locals 0
    .param p1, "showProgressBg"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->showProgressBg:Z

    .line 373
    return-void
.end method

.method public setWaveColor(I)V
    .locals 0
    .param p1, "waveColor"    # I

    .prologue
    .line 376
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->waveColor:I

    .line 377
    return-void
.end method

.method public setWaveHeight(F)V
    .locals 0
    .param p1, "waveHeight"    # F

    .prologue
    .line 526
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mWaveHeight:F

    .line 527
    return-void
.end method

.method public setWaveHigher()V
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->headHeight:F

    .line 462
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->HIGHER_WAVE_HEIGHT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->waveHeight:F

    .line 463
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    sput v0, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->DefaulHeadHeight:I

    .line 464
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->HIGHER_WAVE_HEIGHT:I

    sput v0, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->DefaulWaveHeight:I

    .line 465
    return-void
.end method

.method public setWaveShow(Z)V
    .locals 0
    .param p1, "isShowWave"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isShowWave:Z

    .line 381
    return-void
.end method

.method public updateListener()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->isRefreshing:Z

    .line 349
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->materialHeadView:Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialHeadView;->onRefreshing(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->refreshListener:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->refreshListener:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 357
    :cond_1
    return-void
.end method
