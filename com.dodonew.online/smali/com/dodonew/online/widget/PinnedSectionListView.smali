.class public Lcom/dodonew/online/widget/PinnedSectionListView;
.super Landroid/widget/ListView;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;,
        Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSectionListAdapter;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

.field mRecycleSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

.field private mSectionsDistanceY:I

.field private mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private final mTouchPoint:Landroid/graphics/PointF;

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTarget:Landroid/view/View;

.field mTranslateY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 89
    new-instance v0, Lcom/dodonew/online/widget/PinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/PinnedSectionListView$1;-><init>(Lcom/dodonew/online/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 132
    new-instance v0, Lcom/dodonew/online/widget/PinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/PinnedSectionListView$2;-><init>(Lcom/dodonew/online/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 145
    invoke-direct {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->initView()V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 89
    new-instance v0, Lcom/dodonew/online/widget/PinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/PinnedSectionListView$1;-><init>(Lcom/dodonew/online/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 132
    new-instance v0, Lcom/dodonew/online/widget/PinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/PinnedSectionListView$2;-><init>(Lcom/dodonew/online/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 150
    invoke-direct {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->initView()V

    .line 151
    return-void
.end method

.method private clearTouchTarget()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    iput-object v1, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 495
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 497
    iput-object v1, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 499
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchSlop:I

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/PinnedSectionListView;->initShadow(Z)V

    .line 157
    return-void
.end method

.method public static isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z
    .locals 1
    .param p0, "adapter"    # Landroid/widget/ListAdapter;
    .param p1, "viewType"    # I

    .prologue
    .line 518
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 519
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 521
    .restart local p0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    check-cast p0, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSectionListAdapter;

    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {p0, p1}, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result v0

    return v0
.end method

.method private isPinnedViewTouched(Landroid/view/View;FF)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 481
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 485
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 487
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTranslateY:I

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 488
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 489
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 490
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private performPinnedItemClick()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 502
    iget-object v3, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    if-nez v3, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v1

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 505
    .local v0, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget v4, v4, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->position:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    iget-object v3, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v2, v3, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 507
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/PinnedSectionListView;->playSoundEffect(I)V

    .line 508
    if-eqz v2, :cond_2

    .line 509
    invoke-virtual {v2, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 511
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget v3, v1, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->position:I

    iget-object v1, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-wide v4, v1, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->id:J

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v1, v6

    .line 512
    goto :goto_0
.end method


# virtual methods
.method createPinnedShadow(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 190
    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mRecycleSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    .line 191
    .local v5, "pinnedShadow":Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mRecycleSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    .line 194
    if-nez v5, :cond_0

    new-instance v5, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    .end local v5    # "pinnedShadow":Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;
    invoke-direct {v5}, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;-><init>()V

    .line 196
    .restart local v5    # "pinnedShadow":Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v9, v5, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-interface {v8, p1, v9, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 199
    .local v6, "pinnedView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 200
    .local v3, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 202
    .restart local v3    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    :cond_1
    iget v8, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 206
    .local v0, "heightMode":I
    iget v8, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 208
    .local v1, "heightSize":I
    if-nez v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getListPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getListPaddingBottom()I

    move-result v9

    sub-int v4, v8, v9

    .line 211
    .local v4, "maxHeight":I
    if-le v1, v4, :cond_3

    move v1, v4

    .line 214
    :cond_3
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getListPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getListPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 215
    .local v7, "ws":I
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 216
    .local v2, "hs":I
    invoke-virtual {v6, v7, v2}, Landroid/view/View;->measure(II)V

    .line 217
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6, v10, v10, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 218
    iput v10, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTranslateY:I

    .line 221
    iput-object v6, v5, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 222
    iput p1, v5, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->position:I

    .line 223
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->id:J

    .line 226
    iput-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    .line 227
    return-void
.end method

.method destroyPinnedShadow()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mRecycleSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    .line 236
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 391
    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    if-eqz v4, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getListPaddingLeft()I

    move-result v1

    .line 395
    .local v1, "pLeft":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getListPaddingTop()I

    move-result v2

    .line 396
    .local v2, "pTop":I
    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v3, v4, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 399
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 401
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 402
    :goto_0
    add-int v0, v5, v4

    .line 403
    .local v0, "clipHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 405
    int-to-float v4, v1

    iget v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v4, v6, v7}, Lcom/dodonew/online/widget/PinnedSectionListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 408
    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mSectionsDistanceY:I

    if-lez v4, :cond_0

    .line 409
    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v5, v5, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v6, v6, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 410
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v7, v7, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 411
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v8, v8, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 412
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v8, v9

    .line 409
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 413
    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 416
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 418
    .end local v0    # "clipHeight":I
    .end local v1    # "pLeft":I
    .end local v2    # "pTop":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 401
    .restart local v1    # "pLeft":I
    .restart local v2    # "pTop":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_2
    iget v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowHeight:I

    iget v6, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mSectionsDistanceY:I

    .line 402
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 426
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 427
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 429
    .local v0, "action":I
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v5, v5, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 432
    invoke-direct {p0, v5, v2, v3}, Lcom/dodonew/online/widget/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 435
    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v5, v5, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    iput-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 436
    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v2, v5, Landroid/graphics/PointF;->x:F

    .line 437
    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v3, v5, Landroid/graphics/PointF;->y:F

    .line 440
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 443
    :cond_0
    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 444
    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-direct {p0, v5, v2, v3}, Lcom/dodonew/online/widget/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 448
    :cond_1
    if-ne v0, v4, :cond_3

    .line 449
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 450
    invoke-direct {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->performPinnedItemClick()Z

    .line 451
    invoke-direct {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->clearTouchTarget()V

    .line 477
    :cond_2
    :goto_0
    return v4

    .line 453
    :cond_3
    if-ne v0, v7, :cond_4

    .line 454
    invoke-direct {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    .line 456
    :cond_4
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 457
    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 460
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 461
    .local v1, "event":Landroid/view/MotionEvent;
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 462
    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 463
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 466
    iget-object v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v5}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 467
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 468
    invoke-direct {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    .line 477
    .end local v1    # "event":Landroid/view/MotionEvent;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method ensureShadowForPosition(III)V
    .locals 7
    .param p1, "sectionPosition"    # I
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 240
    const/4 v4, 0x2

    if-ge p3, v4, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget v4, v4, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->position:I

    if-eq v4, p1, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 250
    :cond_2
    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    if-nez v4, :cond_3

    .line 251
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/PinnedSectionListView;->createPinnedShadow(I)V

    .line 255
    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 256
    .local v1, "nextPosition":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 257
    sub-int v4, v1, p2

    sub-int v4, p3, v4

    invoke-virtual {p0, v1, v4}, Lcom/dodonew/online/widget/PinnedSectionListView;->findFirstVisibleSectionPosition(II)I

    move-result v2

    .line 259
    .local v2, "nextSectionPosition":I
    const/4 v4, -0x1

    if-le v2, v4, :cond_5

    .line 260
    sub-int v4, v2, p2

    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 261
    .local v3, "nextSectionView":Landroid/view/View;
    iget-object v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getPaddingTop()I

    move-result v5

    add-int v0, v4, v5

    .line 262
    .local v0, "bottom":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mSectionsDistanceY:I

    .line 263
    iget v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mSectionsDistanceY:I

    if-gez v4, :cond_4

    .line 265
    iget v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mSectionsDistanceY:I

    iput v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    .line 268
    :cond_4
    iput v6, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    .line 272
    .end local v0    # "bottom":I
    .end local v3    # "nextSectionView":Landroid/view/View;
    :cond_5
    iput v6, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mTranslateY:I

    .line 273
    const v4, 0x7fffffff

    iput v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mSectionsDistanceY:I

    goto :goto_0
.end method

.method findCurrentSectionPosition(I)I
    .locals 9
    .param p1, "fromPosition"    # I

    .prologue
    const/4 v7, -0x1

    .line 298
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 300
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-lt p1, v8, :cond_1

    move v2, v7

    .line 318
    :cond_0
    :goto_0
    return v2

    .line 302
    :cond_1
    instance-of v8, v0, Landroid/widget/SectionIndexer;

    if-eqz v8, :cond_2

    move-object v1, v0

    .line 304
    check-cast v1, Landroid/widget/SectionIndexer;

    .line 305
    .local v1, "indexer":Landroid/widget/SectionIndexer;
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    .line 306
    .local v4, "sectionPosition":I
    invoke-interface {v1, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    .line 307
    .local v2, "itemPosition":I
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 308
    .local v5, "typeView":I
    invoke-static {v0, v5}, Lcom/dodonew/online/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 314
    .end local v1    # "indexer":Landroid/widget/SectionIndexer;
    .end local v2    # "itemPosition":I
    .end local v4    # "sectionPosition":I
    .end local v5    # "typeView":I
    :cond_2
    move v3, p1

    .local v3, "position":I
    :goto_1
    if-ltz v3, :cond_4

    .line 315
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 316
    .local v6, "viewType":I
    invoke-static {v0, v6}, Lcom/dodonew/online/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v3

    goto :goto_0

    .line 314
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v6    # "viewType":I
    :cond_4
    move v2, v7

    .line 318
    goto :goto_0
.end method

.method findFirstVisibleSectionPosition(II)I
    .locals 7
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .prologue
    const/4 v5, -0x1

    .line 280
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 282
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 283
    .local v1, "adapterDataCount":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v6

    if-lt v6, v1, :cond_1

    move v3, v5

    .line 294
    :cond_0
    :goto_0
    return v3

    .line 285
    :cond_1
    add-int v6, p1, p2

    if-lt v6, v1, :cond_2

    .line 286
    sub-int p2, v1, p1

    .line 289
    :cond_2
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_1
    if-ge v2, p2, :cond_3

    .line 290
    add-int v3, p1, v2

    .line 291
    .local v3, "position":I
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    .line 292
    .local v4, "viewType":I
    invoke-static {v0, v4}, Lcom/dodonew/online/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "position":I
    .end local v4    # "viewType":I
    :cond_3
    move v3, v5

    .line 294
    goto :goto_0
.end method

.method public initShadow(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 172
    if-eqz p1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const-string v3, "#ffa0a0a0"

    .line 175
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "#50a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "#00a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 176
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowHeight:I

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 181
    iput v4, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowHeight:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 377
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 378
    iget-object v2, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    if-eqz v2, :cond_0

    .line 379
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 380
    .local v0, "parentWidth":I
    iget-object v2, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 381
    .local v1, "shadowWidth":I
    if-eq v0, v1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->recreatePinnedShadow()V

    .line 385
    .end local v0    # "parentWidth":I
    .end local v1    # "shadowWidth":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    new-instance v0, Lcom/dodonew/online/widget/PinnedSectionListView$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/PinnedSectionListView$3;-><init>(Lcom/dodonew/online/widget/PinnedSectionListView;)V

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/PinnedSectionListView;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void
.end method

.method recreatePinnedShadow()V
    .locals 4

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 323
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 324
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getFirstVisiblePosition()I

    move-result v1

    .line 326
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v2

    .line 327
    .local v2, "sectionPosition":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 331
    .end local v1    # "firstVisiblePosition":I
    .end local v2    # "sectionPosition":I
    :cond_0
    :goto_0
    return-void

    .line 329
    .restart local v1    # "firstVisiblePosition":I
    .restart local v2    # "sectionPosition":I
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v3

    sub-int/2addr v3, v1

    .line 328
    invoke-virtual {p0, v2, v1, v3}, Lcom/dodonew/online/widget/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 366
    .local v0, "oldAdapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 367
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 370
    :cond_1
    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/dodonew/online/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 372
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 373
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-ne p1, v0, :cond_0

    .line 336
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0
.end method

.method public setShadowVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/PinnedSectionListView;->initShadow(Z)V

    .line 163
    iget-object v1, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mPinnedSection:Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;

    iget-object v0, v1, Lcom/dodonew/online/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 165
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/dodonew/online/widget/PinnedSectionListView;->invalidate(IIII)V

    .line 167
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
