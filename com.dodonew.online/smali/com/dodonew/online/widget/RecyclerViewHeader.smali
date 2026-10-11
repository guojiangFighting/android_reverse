.class public Lcom/dodonew/online/widget/RecyclerViewHeader;
.super Landroid/widget/RelativeLayout;
.source "RecyclerViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;
    }
.end annotation


# instance fields
.field private mAlreadyAligned:Z

.field private mCurrentScroll:I

.field private mDownScroll:I

.field private mRecycler:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerWantsTouchEvent:Z

.field private mReversed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/RecyclerViewHeader;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/RecyclerViewHeader;

    .prologue
    .line 43
    iget v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mCurrentScroll:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/widget/RecyclerViewHeader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/RecyclerViewHeader;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mCurrentScroll:I

    return p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/RecyclerViewHeader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/RecyclerViewHeader;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mAlreadyAligned:Z

    return v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/RecyclerViewHeader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/RecyclerViewHeader;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mReversed:Z

    return v0
.end method

.method public static fromXml(Landroid/content/Context;I)Lcom/dodonew/online/widget/RecyclerViewHeader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutRes"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 61
    new-instance v0, Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/RecyclerViewHeader;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "header":Lcom/dodonew/online/widget/RecyclerViewHeader;
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    return-object v0
.end method

.method private isLayoutManagerReversed(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 3
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "reversed":Z
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 114
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_1

    .line 115
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 116
    .restart local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_0

    .line 117
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getReverseLayout()Z

    move-result v1

    goto :goto_0
.end method

.method private setupAlignment(Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v9, -0x1

    .line 123
    iget-boolean v8, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mAlreadyAligned:Z

    if-nez v8, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/dodonew/online/widget/RecyclerViewHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 127
    .local v0, "currentParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, -0x2

    .line 128
    .local v7, "width":I
    const/4 v3, -0x2

    .line 129
    .local v3, "height":I
    iget-boolean v8, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mReversed:Z

    if-eqz v8, :cond_1

    const/16 v8, 0x50

    :goto_0
    or-int/lit8 v2, v8, 0x1

    .line 130
    .local v2, "gravity":I
    if-eqz v0, :cond_2

    .line 131
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/RecyclerViewHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .local v5, "newHeaderParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 133
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 134
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 138
    :goto_1
    invoke-virtual {p0, v5}, Lcom/dodonew/online/widget/RecyclerViewHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 142
    .local v6, "newRootParent":Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 144
    .local v1, "currentParent":Landroid/view/ViewParent;
    instance-of v8, v1, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    move-object v8, v1

    .line 145
    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .local v4, "indexWithinParent":I
    move-object v8, v1

    .line 147
    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 148
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v8}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {v6, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "currentParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 154
    .end local v0    # "currentParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "gravity":I
    .end local v3    # "height":I
    .end local v4    # "indexWithinParent":I
    .end local v5    # "newHeaderParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "newRootParent":Landroid/widget/FrameLayout;
    .end local v7    # "width":I
    :cond_0
    return-void

    .line 129
    .restart local v0    # "currentParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "height":I
    .restart local v7    # "width":I
    :cond_1
    const/16 v8, 0x30

    goto :goto_0

    .line 136
    .restart local v2    # "gravity":I
    :cond_2
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v5    # "newHeaderParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_1
.end method

.method private setupHeader(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/dodonew/online/widget/RecyclerViewHeader$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/RecyclerViewHeader$1;-><init>(Lcom/dodonew/online/widget/RecyclerViewHeader;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 167
    invoke-virtual {p0}, Lcom/dodonew/online/widget/RecyclerViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/widget/RecyclerViewHeader$2;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/widget/RecyclerViewHeader$2;-><init>(Lcom/dodonew/online/widget/RecyclerViewHeader;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 188
    return-void
.end method

.method private validateRecycler(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "headerAlreadyAligned"    # Z

    .prologue
    const/4 v4, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 192
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-nez v0, :cond_0

    .line 193
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Be sure to call RecyclerViewHeader constructor after setting your RecyclerView\'s LayoutManager."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/support/v7/widget/LinearLayoutManager;

    if-eq v2, v3, :cond_1

    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/support/v7/widget/GridLayoutManager;

    if-eq v2, v3, :cond_1

    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-nez v2, :cond_1

    .line 197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Currently RecyclerViewHeader supports only LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_1
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    .line 201
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 202
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Currently RecyclerViewHeader supports only VERTICAL orientation LayoutManagers."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_2
    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_3

    .line 205
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 206
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Currently RecyclerViewHeader supports only VERTICAL orientation StaggeredGridLayoutManagers."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_3
    if-nez p2, :cond_4

    .line 211
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 212
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-nez v2, :cond_4

    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-nez v2, :cond_4

    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-nez v2, :cond_4

    .line 216
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Currently, NOT already aligned RecyclerViewHeader can only be used for RecyclerView with a parent of one of types: LinearLayout, FrameLayout, RelativeLayout."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_4
    return-void
.end method


# virtual methods
.method public attachTo(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dodonew/online/widget/RecyclerViewHeader;->attachTo(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 88
    return-void
.end method

.method public attachTo(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "headerAlreadyAligned"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/RecyclerViewHeader;->validateRecycler(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 103
    iput-object p1, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 104
    iput-boolean p2, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mAlreadyAligned:Z

    .line 105
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/RecyclerViewHeader;->isLayoutManagerReversed(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mReversed:Z

    .line 107
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/RecyclerViewHeader;->setupAlignment(Landroid/support/v7/widget/RecyclerView;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/RecyclerViewHeader;->setupHeader(Landroid/support/v7/widget/RecyclerView;)V

    .line 109
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mRecyclerWantsTouchEvent:Z

    .line 225
    iget-boolean v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mRecyclerWantsTouchEvent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mCurrentScroll:I

    iput v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mDownScroll:I

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mRecyclerWantsTouchEvent:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mRecyclerWantsTouchEvent:Z

    if-eqz v0, :cond_0

    .line 234
    iget v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mCurrentScroll:I

    iget v1, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mDownScroll:I

    sub-int v9, v0, v1

    .line 236
    .local v9, "scrollDiff":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v7, v9

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 236
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 238
    .local v8, "recyclerEvent":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 239
    const/4 v0, 0x0

    .line 241
    .end local v8    # "recyclerEvent":Landroid/view/MotionEvent;
    .end local v9    # "scrollDiff":I
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
