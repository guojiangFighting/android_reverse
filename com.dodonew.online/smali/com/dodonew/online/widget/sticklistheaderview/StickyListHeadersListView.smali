.class public Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
.super Landroid/widget/FrameLayout;
.source "StickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;,
        Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;,
        Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;,
        Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;,
        Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderChangedListener;,
        Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;,
        Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

.field private mAreHeadersSticky:Z

.field private mClippingToPadding:Z

.field private mDataSetObserver:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDownY:F

.field private mHeader:Landroid/view/View;

.field private mHeaderId:Ljava/lang/Long;

.field private mHeaderOffset:Ljava/lang/Integer;

.field private mHeaderOwnsTouch:Z

.field private mHeaderPosition:Ljava/lang/Integer;

.field private mIsDrawingListUnderStickyHeader:Z

.field private mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

.field private mOnHeaderClickListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;

.field private mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnStickyHeaderChangedListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderChangedListener;

.field private mOnStickyHeaderOffsetChangedListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mStickyHeaderTopOffset:I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const v0, 0x7f0100e0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 94
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mClippingToPadding:Z

    .line 95
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    .line 96
    const/4 v4, 0x0

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mStickyHeaderTopOffset:I

    .line 97
    const/4 v4, 0x0

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingLeft:I

    .line 98
    const/4 v4, 0x0

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    .line 99
    const/4 v4, 0x0

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingRight:I

    .line 100
    const/4 v4, 0x0

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingBottom:I

    .line 127
    invoke-virtual {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mTouchSlop:F

    .line 130
    new-instance v4, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-direct {v4, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    .line 133
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 134
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getDividerHeight()I

    move-result v4

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDividerHeight:I

    .line 135
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setDividerHeight(I)V

    .line 138
    if-eqz p2, :cond_5

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/dodonew/online/R$styleable;->StickyListHeadersListView:[I

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v5, p3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 144
    .local v2, "padding":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingLeft:I

    .line 145
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    .line 146
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingRight:I

    .line 147
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingBottom:I

    .line 149
    iget v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingLeft:I

    iget v5, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    iget v6, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingRight:I

    iget v7, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingBottom:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setPadding(IIII)V

    .line 153
    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mClippingToPadding:Z

    .line 154
    const/4 v4, 0x1

    invoke-super {p0, v4}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 155
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    iget-boolean v5, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mClippingToPadding:Z

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setClipToPadding(Z)V

    .line 158
    const/4 v4, 0x6

    const/16 v5, 0x200

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 159
    .local v3, "scrollBars":I
    iget-object v5, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v4}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setVerticalScrollBarEnabled(Z)V

    .line 160
    iget-object v5, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setHorizontalScrollBarEnabled(Z)V

    .line 163
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    .line 164
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setOverScrollMode(I)V

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    .line 169
    invoke-virtual {v6}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 168
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setFadingEdgeLength(I)V

    .line 170
    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 171
    .local v1, "fadingEdge":I
    const/16 v4, 0x1000

    if-ne v1, v4, :cond_8

    .line 172
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setVerticalFadingEdgeEnabled(Z)V

    .line 173
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setHorizontalFadingEdgeEnabled(Z)V

    .line 181
    :goto_2
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    .line 182
    invoke-virtual {v6}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getCacheColorHint()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 181
    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setCacheColorHint(I)V

    .line 183
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 184
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/16 v5, 0x11

    iget-object v6, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    .line 185
    invoke-virtual {v6}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChoiceMode()I

    move-result v6

    .line 184
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setChoiceMode(I)V

    .line 187
    :cond_1
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setDrawSelectorOnTop(Z)V

    .line 188
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/16 v5, 0x12

    iget-object v6, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    .line 189
    invoke-virtual {v6}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->isFastScrollEnabled()Z

    move-result v6

    .line 188
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setFastScrollEnabled(Z)V

    .line 190
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    .line 191
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    .line 193
    invoke-virtual {v6}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->isFastScrollAlwaysVisible()Z

    move-result v6

    .line 191
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setFastScrollAlwaysVisible(Z)V

    .line 196
    :cond_2
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setScrollBarStyle(I)V

    .line 198
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 199
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_3
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    .line 203
    invoke-virtual {v6}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->isScrollingCacheEnabled()Z

    move-result v6

    .line 202
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setScrollingCacheEnabled(Z)V

    .line 205
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 209
    :cond_4
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setStackFromBottom(Z)V

    .line 211
    const/16 v4, 0x10

    iget v5, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDividerHeight:I

    .line 214
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setTranscriptMode(I)V

    .line 218
    const/16 v4, 0x17

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 219
    const/16 v4, 0x18

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "fadingEdge":I
    .end local v2    # "padding":I
    .end local v3    # "scrollBars":I
    :cond_5
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    new-instance v5, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperViewListLifeCycleListener;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;)V

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setLifeCycleListener(Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList$LifeCycleListener;)V

    .line 229
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    new-instance v5, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$WrapperListScrollListener;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;)V

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 231
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->addView(Landroid/view/View;)V

    .line 232
    return-void

    .line 159
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "padding":I
    .restart local v3    # "scrollBars":I
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 160
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 174
    .restart local v1    # "fadingEdge":I
    :cond_8
    const/16 v4, 0x2000

    if-ne v1, v4, :cond_9

    .line 175
    :try_start_1
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setVerticalFadingEdgeEnabled(Z)V

    .line 176
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setHorizontalFadingEdgeEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 223
    .end local v1    # "fadingEdge":I
    .end local v2    # "padding":I
    .end local v3    # "scrollBars":I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4

    .line 178
    .restart local v1    # "fadingEdge":I
    .restart local v2    # "padding":I
    .restart local v3    # "scrollBars":I
    :cond_9
    :try_start_2
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setVerticalFadingEdgeEnabled(Z)V

    .line 179
    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setHorizontalFadingEdgeEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic access$1000(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mClippingToPadding:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1200(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # J

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # J

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->clearHeader()V

    return-void
.end method

.method static synthetic access$700(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->updateOrClearHeader(I)V

    return-void
.end method

.method private clearHeader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->removeView(Landroid/view/View;)V

    .line 291
    iput-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 292
    iput-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    .line 293
    iput-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 294
    iput-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 297
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setTopClippingLength(I)V

    .line 298
    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 300
    :cond_0
    return-void
.end method

.method private ensureHeaderHasCorrectLayoutParams(Landroid/view/View;)V
    .locals 4
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 242
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 243
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 244
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_0

    .line 246
    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private isStartOfSection(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 562
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureHeader(Landroid/view/View;)V
    .locals 6
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 253
    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingRight:I

    sub-int v2, v3, v4

    .line 255
    .local v2, "width":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 257
    .local v1, "parentWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 259
    .local v0, "parentHeightMeasureSpec":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->measureChild(Landroid/view/View;II)V

    .line 262
    .end local v0    # "parentHeightMeasureSpec":I
    .end local v1    # "parentWidthMeasureSpec":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method private requireSdkVersion(I)Z
    .locals 3
    .param p1, "versionCode"    # I

    .prologue
    .line 682
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p1, :cond_0

    .line 683
    const-string v0, "StickyListHeaders"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api lvl must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to call this method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v0, 0x0

    .line 686
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setHeaderOffet(I)V
    .locals 4
    .param p1, "offset"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 443
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 444
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 445
    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 451
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnStickyHeaderOffsetChangedListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnStickyHeaderOffsetChangedListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;

    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    neg-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;->onStickyHeaderOffsetChanged(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Landroid/view/View;I)V

    .line 455
    :cond_1
    return-void

    .line 447
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 448
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 449
    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private stickyHeaderTop()I
    .locals 2

    .prologue
    .line 580
    iget v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mStickyHeaderTopOffset:I

    iget-boolean v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private swapHeader(Landroid/view/View;)V
    .locals 2
    .param p1, "newHeader"    # Landroid/view/View;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->removeView(Landroid/view/View;)V

    .line 390
    :cond_0
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 391
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->addView(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    new-instance v1, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 403
    return-void
.end method

.method private updateHeader(I)V
    .locals 14
    .param p1, "headerPosition"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 338
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 339
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v10

    .line 340
    .local v10, "headerId":J
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_5

    .line 341
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    .line 342
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 343
    .local v8, "header":Landroid/view/View;
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eq v0, v8, :cond_3

    .line 344
    if-nez v8, :cond_2

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_2
    invoke-direct {p0, v8}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->swapHeader(Landroid/view/View;)V

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->ensureHeaderHasCorrectLayoutParams(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->measureHeader(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnStickyHeaderChangedListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderChangedListener;

    if-eqz v0, :cond_4

    .line 352
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnStickyHeaderChangedListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderChangedListener;

    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderChangedListener;->onStickyHeaderChanged(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Landroid/view/View;IJ)V

    .line 357
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 361
    .end local v8    # "header":Landroid/view/View;
    .end local v10    # "headerId":J
    :cond_5
    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->stickyHeaderTop()I

    move-result v9

    .line 366
    .local v9, "headerOffset":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_7

    .line 367
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, v12}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 368
    .local v6, "child":Landroid/view/View;
    instance-of v0, v6, Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;

    if-eqz v0, :cond_9

    move-object v0, v6

    check-cast v0, Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v7, 0x1

    .line 369
    .local v7, "doesChildHaveHeader":Z
    :goto_1
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, v6}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->containsFooterView(Landroid/view/View;)Z

    move-result v13

    .line 370
    .local v13, "isChildFooter":Z
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->stickyHeaderTop()I

    move-result v1

    if-lt v0, v1, :cond_a

    if-nez v7, :cond_6

    if-eqz v13, :cond_a

    .line 371
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 376
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "doesChildHaveHeader":Z
    .end local v13    # "isChildFooter":Z
    :cond_7
    invoke-direct {p0, v9}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setHeaderOffet(I)V

    .line 378
    iget-boolean v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_8

    .line 379
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 380
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 379
    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setTopClippingLength(I)V

    .line 383
    :cond_8
    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 384
    return-void

    .line 368
    .restart local v6    # "child":Landroid/view/View;
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    .line 366
    .restart local v7    # "doesChildHaveHeader":Z
    .restart local v13    # "isChildFooter":Z
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private updateHeaderVisibilities()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 408
    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->stickyHeaderTop()I

    move-result v4

    .line 409
    .local v4, "top":I
    iget-object v6, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v6}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChildCount()I

    move-result v1

    .line 410
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 413
    iget-object v6, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v6, v3}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "child":Landroid/view/View;
    instance-of v6, v0, Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;

    if-nez v6, :cond_1

    .line 410
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 419
    check-cast v5, Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;

    .line 420
    .local v5, "wrapperViewChild":Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;
    invoke-virtual {v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;->hasHeader()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 425
    iget-object v2, v5, Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;->mHeader:Landroid/view/View;

    .line 426
    .local v2, "childHeader":Landroid/view/View;
    invoke-virtual {v5}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;->getTop()I

    move-result v6

    if-ge v6, v4, :cond_2

    .line 427
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_0

    .line 428
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 431
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 432
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 436
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childHeader":Landroid/view/View;
    .end local v5    # "wrapperViewChild":Lcom/dodonew/online/widget/sticklistheaderview/WrapperView;
    :cond_3
    return-void
.end method

.method private updateOrClearHeader(I)V
    .locals 10
    .param p1, "firstVisiblePosition"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 303
    iget-object v8, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-nez v8, :cond_1

    move v0, v6

    .line 304
    .local v0, "adapterCount":I
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v8, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-nez v8, :cond_2

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 303
    .end local v0    # "adapterCount":I
    :cond_1
    iget-object v8, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-virtual {v8}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->getCount()I

    move-result v0

    goto :goto_0

    .line 308
    .restart local v0    # "adapterCount":I
    :cond_2
    iget-object v8, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v8}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getHeaderViewsCount()I

    move-result v4

    .line 309
    .local v4, "headerViewCount":I
    sub-int v3, p1, v4

    .line 310
    .local v3, "headerPosition":I
    iget-object v8, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v8}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChildCount()I

    move-result v8

    if-lez v8, :cond_3

    .line 311
    iget-object v8, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v8, v6}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 312
    .local v2, "firstItem":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->stickyHeaderTop()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 313
    add-int/lit8 v3, v3, 0x1

    .line 320
    .end local v2    # "firstItem":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v8}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_7

    move v1, v7

    .line 321
    .local v1, "doesListHaveChildren":Z
    :goto_2
    if-eqz v1, :cond_8

    iget-object v8, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    .line 322
    invoke-virtual {v8}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getFirstVisiblePosition()I

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    .line 323
    invoke-virtual {v8, v6}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->stickyHeaderTop()I

    move-result v9

    if-lt v8, v9, :cond_8

    move v5, v7

    .line 324
    .local v5, "isFirstViewBelowTop":Z
    :goto_3
    add-int/lit8 v8, v0, -0x1

    if-gt v3, v8, :cond_4

    if-gez v3, :cond_5

    :cond_4
    move v6, v7

    .line 326
    .local v6, "isHeaderPositionOutsideAdapterRange":Z
    :cond_5
    if-eqz v1, :cond_6

    if-nez v6, :cond_6

    if-eqz v5, :cond_9

    .line 327
    :cond_6
    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->clearHeader()V

    goto :goto_1

    .end local v1    # "doesListHaveChildren":Z
    .end local v5    # "isFirstViewBelowTop":Z
    .end local v6    # "isHeaderPositionOutsideAdapterRange":Z
    :cond_7
    move v1, v6

    .line 320
    goto :goto_2

    .restart local v1    # "doesListHaveChildren":Z
    :cond_8
    move v5, v6

    .line 323
    goto :goto_3

    .line 331
    .restart local v5    # "isFirstViewBelowTop":Z
    .restart local v6    # "isHeaderPositionOutsideAdapterRange":Z
    :cond_9
    invoke-direct {p0, v3}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->updateHeader(I)V

    goto :goto_1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 800
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->addFooterView(Landroid/view/View;)V

    .line 801
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 796
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 797
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->addHeaderView(Landroid/view/View;)V

    .line 785
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 780
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 781
    return-void
.end method

.method public areHeadersSticky()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAreHeadersSticky:Z

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1
    .param p1, "direction"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 284
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 460
    .local v8, "action":I
    if-nez v8, :cond_0

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDownY:F

    .line 462
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDownY:F

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOwnsTouch:Z

    .line 466
    :cond_0
    iget-boolean v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOwnsTouch:Z

    if-eqz v0, :cond_4

    .line 467
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 487
    .local v11, "handled":Z
    :goto_1
    return v11

    .end local v11    # "handled":Z
    :cond_1
    move v0, v12

    .line 462
    goto :goto_0

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 471
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 472
    .local v9, "cancelEvent":Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 473
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 474
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 477
    .end local v9    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 478
    .local v10, "downEvent":Landroid/view/MotionEvent;
    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 479
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, v10}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 480
    .restart local v11    # "handled":Z
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 481
    iput-boolean v12, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeaderOwnsTouch:Z

    goto :goto_1

    .line 484
    .end local v10    # "downEvent":Landroid/view/MotionEvent;
    .end local v11    # "handled":Z
    :cond_4
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .restart local v11    # "handled":Z
    goto :goto_1
.end method

.method public getAdapter()Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    iget-object v0, v0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->mDelegate:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;

    goto :goto_0
.end method

.method public getAreHeadersSticky()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->areHeadersSticky()Z

    move-result v0

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 954
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getCheckedItemCount()I

    move-result v0

    .line 957
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 962
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getCheckedItemIds()[J

    move-result-object v0

    .line 965
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 975
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getCount()I

    move-result v0

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDividerHeight:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getEmptyView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getFooterViewsCount()I

    move-result v0

    return v0
.end method

.method public getHeaderOverlap(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 566
    invoke-virtual {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->isStartOfSection(I)Z

    move-result v1

    .line 567
    .local v1, "isStartOfSection":Z
    if-nez v1, :cond_1

    .line 568
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v2, p1, v3, v4}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 569
    .local v0, "header":Landroid/view/View;
    if-nez v0, :cond_0

    .line 570
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "header may not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 572
    :cond_0
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->ensureHeaderHasCorrectLayoutParams(Landroid/view/View;)V

    .line 573
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->measureHeader(Landroid/view/View;)V

    .line 574
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 576
    .end local v0    # "header":Landroid/view/View;
    :cond_1
    return v2
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 983
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemIdAtPosition(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 987
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getItemIdAtPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getListChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getListChildCount()I
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getOverScrollMode()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 842
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getOverScrollMode()I

    move-result v0

    .line 845
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 1035
    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    return v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getPositionForView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getScrollBarStyle()I
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method public getStickyHeaderTopOffset()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mStickyHeaderTopOffset:I

    return v0
.end method

.method public getWrappedList()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    return-object v0
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->invalidateViews()V

    .line 1002
    return-void
.end method

.method public isDrawingListUnderStickyHeader()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    return v0
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1070
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1071
    const/4 v0, 0x0

    .line 1073
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->isFastScrollAlwaysVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->isHorizontalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->isStackFromBottom()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->isVerticalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 266
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    iget-object v3, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->layout(IIII)V

    .line 267
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 269
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 270
    .local v0, "headerTop":I
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget v3, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingLeft:I

    iget-object v4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 271
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    .line 270
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 273
    .end local v0    # "headerTop":I
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 236
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 237
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->measureHeader(Landroid/view/View;)V

    .line 238
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1106
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1107
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1108
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1097
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1098
    .local v0, "superState":Landroid/os/Parcelable;
    sget-object v1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq v0, v1, :cond_0

    .line 1099
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Handling non empty state of parent class is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1101
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method protected recomputePadding()V
    .locals 4

    .prologue
    .line 1030
    iget v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingLeft:I

    iget v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    iget v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingRight:I

    iget v3, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setPadding(IIII)V

    .line 1031
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->removeFooterView(Landroid/view/View;)Z

    .line 805
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->removeHeaderView(Landroid/view/View;)Z

    .line 789
    return-void
.end method

.method public setAdapter(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;

    .prologue
    const/4 v2, 0x0

    .line 692
    if-nez p1, :cond_2

    .line 693
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    instance-of v0, v0, Lcom/dodonew/online/widget/sticklistheaderview/SectionIndexerAdapterWrapper;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    check-cast v0, Lcom/dodonew/online/widget/sticklistheaderview/SectionIndexerAdapterWrapper;

    iput-object v2, v0, Lcom/dodonew/online/widget/sticklistheaderview/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    iput-object v2, v0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->mDelegate:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 700
    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->clearHeader()V

    .line 725
    :goto_0
    return-void

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-eqz v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDataSetObserver:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 707
    :cond_3
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_4

    .line 708
    new-instance v0, Lcom/dodonew/online/widget/sticklistheaderview/SectionIndexerAdapterWrapper;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/dodonew/online/widget/sticklistheaderview/SectionIndexerAdapterWrapper;-><init>(Landroid/content/Context;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    .line 712
    :goto_1
    new-instance v0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDataSetObserver:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    .line 713
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDataSetObserver:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 715
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_5

    .line 716
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    new-instance v1, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;

    invoke-direct {v1, p0, v2}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->setOnHeaderClickListener(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$OnHeaderClickListener;)V

    .line 721
    :goto_2
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 723
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 724
    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->clearHeader()V

    goto :goto_0

    .line 710
    :cond_4
    new-instance v0, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;-><init>(Landroid/content/Context;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    goto :goto_1

    .line 718
    :cond_5
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->setOnHeaderClickListener(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$OnHeaderClickListener;)V

    goto :goto_2
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .param p1, "areHeadersSticky"    # Z

    .prologue
    .line 586
    iput-boolean p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 587
    if-nez p1, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->clearHeader()V

    .line 593
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->invalidate()V

    .line 594
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->updateOrClearHeader(I)V

    goto :goto_0
.end method

.method public setBlockLayoutChildren(Z)V
    .locals 1
    .param p1, "blockLayoutChildren"    # Z

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setBlockLayoutChildren(Z)V

    .line 1122
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1
    .param p1, "choiceMode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 944
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setChoiceMode(I)V

    .line 945
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setClipToPadding(Z)V

    .line 1009
    :cond_0
    iput-boolean p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mClippingToPadding:Z

    .line 1010
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 733
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 736
    :cond_0
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 3
    .param p1, "dividerHeight"    # I

    .prologue
    .line 739
    iput p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDividerHeight:I

    .line 740
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 743
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 2
    .param p1, "drawingListUnderStickyHeader"    # Z

    .prologue
    .line 624
    iput-boolean p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    .line 626
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setTopClippingLength(I)V

    .line 627
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setEmptyView(Landroid/view/View;)V

    .line 813
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysVisible"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1059
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setFastScrollAlwaysVisible(Z)V

    .line 1062
    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "fastScrollEnabled"    # Z

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setFastScrollEnabled(Z)V

    .line 1055
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    .line 836
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setHorizontalScrollBarEnabled(Z)V

    .line 837
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setItemChecked(IZ)V

    .line 950
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1090
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1093
    :cond_0
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 993
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;

    .prologue
    const/4 v2, 0x0

    .line 634
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;

    .line 635
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    new-instance v1, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;

    invoke-direct {v1, p0, v2}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$1;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->setOnHeaderClickListener(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$OnHeaderClickListener;)V

    .line 639
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mHeader:Landroid/view/View;

    new-instance v1, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$2;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;->setOnHeaderClickListener(Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper$OnHeaderClickListener;)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 773
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 776
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 777
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    .line 755
    return-void
.end method

.method public setOnStickyHeaderChangedListener(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderChangedListener;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnStickyHeaderChangedListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderChangedListener;

    .line 661
    return-void
.end method

.method public setOnStickyHeaderOffsetChangedListener(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mOnStickyHeaderOffsetChangedListener:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;

    .line 657
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 759
    if-eqz p1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    new-instance v1, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$3;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$3;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 851
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setOverScrollMode(I)V

    .line 856
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 1014
    iput p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingLeft:I

    .line 1015
    iput p2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    .line 1016
    iput p3, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingRight:I

    .line 1017
    iput p4, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingBottom:I

    .line 1019
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setPadding(IIII)V

    .line 1022
    :cond_0
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1023
    invoke-virtual {p0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requestLayout()V

    .line 1024
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setScrollBarStyle(I)V

    .line 1078
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setSelectionFromTop(II)V

    .line 914
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setSelectionAfterHeaderView()V

    .line 918
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr p2, v0

    .line 922
    iget-boolean v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v0, :cond_1

    :goto_1
    sub-int/2addr p2, v1

    .line 923
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setSelectionFromTop(II)V

    .line 924
    return-void

    .line 921
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getHeaderOverlap(I)I

    move-result v0

    goto :goto_0

    .line 922
    :cond_1
    iget v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    goto :goto_1
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 931
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setSelector(I)V

    .line 932
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 927
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 928
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setStackFromBottom(Z)V

    .line 1126
    return-void
.end method

.method public setStickyHeaderTopOffset(I)V
    .locals 1
    .param p1, "stickyHeaderTopOffset"    # I

    .prologue
    .line 614
    iput p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mStickyHeaderTopOffset:I

    .line 615
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->updateOrClearHeader(I)V

    .line 616
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setTranscriptMode(I)V

    .line 1118
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 831
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->setVerticalScrollBarEnabled(Z)V

    .line 832
    return-void
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 860
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->smoothScrollBy(II)V

    .line 863
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 1
    .param p1, "offset"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 867
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->smoothScrollByOffset(I)V

    .line 870
    :cond_0
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 4
    .param p1, "position"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 875
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 877
    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v1, p1}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->smoothScrollToPosition(I)V

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-nez v2, :cond_2

    move v0, v1

    .line 880
    .local v0, "offset":I
    :goto_1
    iget-boolean v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v2, :cond_3

    :goto_2
    sub-int/2addr v0, v1

    .line 881
    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v1, p1, v0}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->smoothScrollToPositionFromTop(II)V

    goto :goto_0

    .line 879
    .end local v0    # "offset":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getHeaderOverlap(I)I

    move-result v0

    goto :goto_1

    .line 880
    .restart local v0    # "offset":I
    :cond_3
    iget v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    goto :goto_2
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 888
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->smoothScrollToPosition(II)V

    .line 891
    :cond_0
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 895
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr p2, v0

    .line 897
    iget-boolean v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v0, :cond_2

    :goto_1
    sub-int/2addr p2, v1

    .line 898
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->smoothScrollToPositionFromTop(II)V

    .line 900
    :cond_0
    return-void

    .line 896
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getHeaderOverlap(I)I

    move-result v0

    goto :goto_0

    .line 897
    :cond_2
    iget v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    goto :goto_1
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 905
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mAdapter:Lcom/dodonew/online/widget/sticklistheaderview/AdapterWrapper;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr p2, v0

    .line 907
    iget-boolean v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v0, :cond_2

    :goto_1
    sub-int/2addr p2, v1

    .line 908
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mList:Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dodonew/online/widget/sticklistheaderview/WrapperViewList;->smoothScrollToPositionFromTop(III)V

    .line 910
    :cond_0
    return-void

    .line 906
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->getHeaderOverlap(I)I

    move-result v0

    goto :goto_0

    .line 907
    :cond_2
    iget v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->mPaddingTop:I

    goto :goto_1
.end method
