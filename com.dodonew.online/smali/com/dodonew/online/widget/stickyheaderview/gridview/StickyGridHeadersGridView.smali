.class public Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;
.super Landroid/widget/GridView;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$SavedState;,
        Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;,
        Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;,
        Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$WindowRunnable;,
        Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;,
        Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;,
        Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderLongClickListener;,
        Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderClickListener;
    }
.end annotation


# static fields
.field private static final ERROR_PLATFORM:Ljava/lang/String;

.field private static final MATCHED_STICKIED_HEADER:I = -0x2

.field private static final NO_MATCHED_HEADER:I = -0x1

.field static final TAG:Ljava/lang/String;

.field protected static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field protected static final TOUCH_MODE_DOWN:I = 0x0

.field protected static final TOUCH_MODE_FINISHED_LONG_PRESS:I = -0x2

.field protected static final TOUCH_MODE_REST:I = -0x1

.field protected static final TOUCH_MODE_TAP:I = 0x1


# instance fields
.field protected mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

.field private mAreHeadersSticky:Z

.field private mClipToPaddingHasBeenSet:Z

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mClippingToPadding:Z

.field private mColumnWidth:I

.field private mCurrentHeaderId:J

.field protected mDataChanged:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mHeaderBottomPosition:I

.field mHeaderChildBeingPressed:Z

.field private mHeadersIgnorePadding:Z

.field private mHorizontalSpacing:I

.field private mMaskStickyHeaderRegion:Z

.field protected mMotionHeaderPosition:I

.field private mMotionY:F

.field private mNumColumns:I

.field private mNumColumnsSet:Z

.field private mNumMeasuredColumns:I

.field private mOnHeaderClickListener:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderClickListener;

.field private mOnHeaderLongClickListener:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderLongClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mPendingCheckForLongPress:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;

.field public mPendingCheckForTap:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;

.field private mPerformHeaderClick:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mStickiedHeader:Landroid/view/View;

.field protected mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error supporting platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->ERROR_PLATFORM:Ljava/lang/String;

    .line 75
    const-class v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 182
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    iput-boolean v5, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    .line 110
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 112
    new-instance v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$1;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;)V

    iput-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 130
    iput-boolean v5, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 141
    iput v5, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    .line 157
    iput v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mScrollState:I

    .line 175
    iput-boolean v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 187
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 188
    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 190
    iget-boolean v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumColumnsSet:Z

    if-nez v1, :cond_0

    .line 191
    const/4 v1, -0x1

    iput v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumColumns:I

    .line 194
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 195
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchSlop:I

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->reset()V

    return-void
.end method

.method static synthetic access$202(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;I)J
    .locals 2
    .param p0, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->headerViewPositionToId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->ERROR_PLATFORM:Ljava/lang/String;

    return-object v0
.end method

.method private findMotionHeader(F)I
    .locals 10
    .param p1, "y"    # F

    .prologue
    .line 594
    iget-object v7, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_1

    .line 595
    const/4 v6, -0x2

    .line 614
    :cond_0
    :goto_0
    return v6

    .line 598
    :cond_1
    const/4 v6, 0x0

    .line 599
    .local v6, "vi":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v7

    if-gt v2, v7, :cond_3

    .line 600
    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 601
    .local v4, "id":J
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_2

    .line 602
    invoke-virtual {p0, v6}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 604
    .local v1, "headerWrapper":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 605
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 606
    .local v3, "top":I
    int-to-float v7, v0

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_2

    int-to-float v7, v3

    cmpl-float v7, p1, v7

    if-gez v7, :cond_0

    .line 610
    .end local v0    # "bottom":I
    .end local v1    # "headerWrapper":Landroid/view/View;
    .end local v3    # "top":I
    :cond_2
    iget v7, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int/2addr v2, v7

    .line 611
    iget v7, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int/2addr v6, v7

    .line 612
    goto :goto_1

    .line 614
    .end local v4    # "id":J
    :cond_3
    const/4 v6, -0x1

    goto :goto_0
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 621
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 79
    .local v1, "n":I
    new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 80
    .local v2, "r":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 81
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v0

    .line 82
    aget-object v3, v2, v0

    invoke-virtual {p0, v0, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-object v2
.end method

.method private static getPointerIds(Landroid/view/MotionEvent;)[I
    .locals 4
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 89
    .local v1, "n":I
    new-array v2, v1, [I

    .line 90
    .local v2, "r":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    aput v3, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-object v2
.end method

.method private headerViewPositionToId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 625
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 626
    iget-wide v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 628
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private measureHeader()V
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 632
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-nez v3, :cond_0

    .line 661
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-boolean v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v3, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 644
    .local v2, "widthMeasureSpec":I
    :goto_1
    const/4 v0, 0x0

    .line 646
    .local v0, "heightMeasureSpec":I
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 647
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_2

    .line 648
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 652
    :goto_2
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 653
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 655
    iget-boolean v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v3, :cond_3

    .line 656
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 640
    .end local v0    # "heightMeasureSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "widthMeasureSpec":I
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 641
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 640
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "widthMeasureSpec":I
    goto :goto_1

    .line 650
    .restart local v0    # "heightMeasureSpec":I
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    .line 658
    :cond_3
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 659
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 658
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 664
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 665
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->swapStickiedHeader(Landroid/view/View;)V

    .line 666
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 667
    return-void
.end method

.method private scrollChanged(I)V
    .locals 24
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 675
    .local v8, "firstItem":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 680
    move/from16 v16, p1

    .line 682
    .local v16, "selectedHeaderPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v19, v0

    sub-int v4, p1, v19

    .line 683
    .local v4, "beforeRowPosition":I
    if-gez v4, :cond_2

    .line 684
    move/from16 v4, p1

    .line 687
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v19, v0

    add-int v13, p1, v19

    .line 688
    .local v13, "secondRowPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v19

    move/from16 v0, v19

    if-lt v13, v0, :cond_3

    .line 689
    move/from16 v13, p1

    .line 692
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 713
    .local v14, "newHeaderId":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mCurrentHeaderId:J

    move-wide/from16 v20, v0

    cmp-long v19, v20, v14

    if-eqz v19, :cond_4

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move-object/from16 v20, v0

    .line 715
    move-object/from16 v0, v19

    move/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->swapStickiedHeader(Landroid/view/View;)V

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->measureHeader()V

    .line 717
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 720
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getChildCount()I

    move-result v6

    .line 721
    .local v6, "childCount":I
    if-eqz v6, :cond_0

    .line 722
    const/16 v17, 0x0

    .line 723
    .local v17, "viewToWatch":Landroid/view/View;
    const v18, 0x1869f

    .line 726
    .local v18, "watchingChildDistance":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v6, :cond_c

    .line 727
    move-object/from16 v0, p0

    invoke-super {v0, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 730
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 731
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v20

    sub-int v7, v19, v20

    .line 736
    .local v7, "childDistance":I
    :goto_3
    if-gez v7, :cond_b

    .line 726
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v19, v0

    add-int v11, v11, v19

    goto :goto_2

    .line 694
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v7    # "childDistance":I
    .end local v11    # "i":I
    .end local v14    # "newHeaderId":J
    .end local v17    # "viewToWatch":Landroid/view/View;
    .end local v18    # "watchingChildDistance":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v19, v0

    if-gez v19, :cond_8

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 696
    .restart local v14    # "newHeaderId":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 697
    .local v9, "firstSecondRowView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v19

    if-gtz v19, :cond_7

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 699
    move/from16 v16, v13

    goto/16 :goto_1

    .line 701
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    goto/16 :goto_1

    .line 704
    .end local v9    # "firstSecondRowView":Landroid/view/View;
    .end local v14    # "newHeaderId":J
    :cond_8
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v12

    .line 705
    .local v12, "margin":I
    if-lez v12, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_9

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 707
    .restart local v14    # "newHeaderId":J
    move/from16 v16, v4

    goto/16 :goto_1

    .line 709
    .end local v14    # "newHeaderId":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .restart local v14    # "newHeaderId":J
    goto/16 :goto_1

    .line 733
    .end local v12    # "margin":I
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v11    # "i":I
    .restart local v17    # "viewToWatch":Landroid/view/View;
    .restart local v18    # "watchingChildDistance":I
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .restart local v7    # "childDistance":I
    goto/16 :goto_3

    .line 740
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPositionForView(Landroid/view/View;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getItemId(I)J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-nez v19, :cond_5

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 742
    move-object/from16 v17, v5

    .line 743
    move/from16 v18, v7

    goto/16 :goto_4

    .line 747
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childDistance":I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v10

    .line 751
    .local v10, "headerHeight":I
    if-eqz v17, :cond_11

    .line 752
    if-nez p1, :cond_d

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-super {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    if-lez v19, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 754
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .line 756
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 757
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v19

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v20

    add-int v20, v20, v10

    .line 757
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 759
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v19

    add-int v19, v19, v10

    :goto_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v19, v0

    goto :goto_5

    .line 763
    :cond_f
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 764
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v19, v0

    if-gez v19, :cond_10

    .end local v10    # "headerHeight":I
    :goto_6
    move-object/from16 v0, p0

    iput v10, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .restart local v10    # "headerHeight":I
    :cond_10
    move-object/from16 v0, p0

    iget v10, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto :goto_6

    .line 769
    :cond_11
    move-object/from16 v0, p0

    iput v10, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 770
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 771
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0
.end method

.method private swapStickiedHeader(Landroid/view/View;)V
    .locals 1
    .param p1, "newStickiedHeader"    # Landroid/view/View;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    .line 779
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 780
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 781
    return-void
.end method

.method private transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 23
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "headerPosition"    # I

    .prologue
    .line 784
    const/16 v20, -0x2

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 809
    .end local p1    # "e":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 788
    .restart local p1    # "e":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 789
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 790
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 791
    .local v6, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 792
    .local v7, "pointerCount":I
    invoke-static/range {p1 .. p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPointerIds(Landroid/view/MotionEvent;)[I

    move-result-object v8

    .line 793
    .local v8, "pointerIds":[I
    invoke-static/range {p1 .. p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 794
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 795
    .local v10, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 796
    .local v11, "xPrecision":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 797
    .local v12, "yPrecision":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    .line 798
    .local v13, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    .line 799
    .local v14, "edgeFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 800
    .local v15, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    .line 802
    .local v16, "flags":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 803
    .local v17, "headerHolder":Landroid/view/View;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v7, :cond_1

    .line 804
    aget-object v20, v9, v18

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 803
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 806
    :cond_1
    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .local v19, "n":Landroid/view/MotionEvent;
    move-object/from16 p1, v19

    .line 809
    goto :goto_0
.end method


# virtual methods
.method public areHeadersSticky()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    return v0
.end method

.method attachHeader(Landroid/view/View;)V
    .locals 8
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1027
    if-nez p1, :cond_0

    .line 1051
    :goto_0
    return-void

    .line 1032
    :cond_0
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "mAttachInfo"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1033
    .local v0, "attachInfoField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1034
    const-class v3, Landroid/view/View;

    const-string v4, "dispatchAttachedToWindow"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-string v7, "android.view.View$AttachInfo"

    .line 1035
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 1034
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1036
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1037
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 1038
    .end local v0    # "attachInfoField":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1039
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1040
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1041
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1042
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1044
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1045
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1046
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1047
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1048
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 1049
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3
.end method

.method detachHeader(Landroid/view/View;)V
    .locals 5
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1054
    if-nez p1, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1059
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "dispatchDetachedFromWindow"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1060
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1061
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1062
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1064
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1066
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1068
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 814
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->scrollChanged(I)V

    .line 818
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 819
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v9, 0x1

    .line 820
    .local v9, "drawStickiedHeader":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v13

    .line 821
    .local v13, "headerHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    sub-int v20, v2, v13

    .line 825
    .local v20, "top":I
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v2, :cond_1

    .line 826
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_4

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 833
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 841
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 844
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v15, "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v21, 0x0

    .line 846
    .local v21, "vi":I
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v17

    .local v17, "i":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v2

    move/from16 v0, v17

    if-gt v0, v2, :cond_5

    .line 847
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v18

    .line 848
    .local v18, "id":J
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-nez v2, :cond_2

    .line 849
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int v17, v17, v2

    .line 852
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int v21, v21, v2

    .line 853
    goto :goto_2

    .line 819
    .end local v9    # "drawStickiedHeader":Z
    .end local v13    # "headerHeight":I
    .end local v15    # "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "i":I
    .end local v18    # "id":J
    .end local v20    # "top":I
    .end local v21    # "vi":I
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 830
    .restart local v9    # "drawStickiedHeader":Z
    .restart local v13    # "headerHeight":I
    .restart local v20    # "top":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 856
    .restart local v15    # "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "i":I
    .restart local v21    # "vi":I
    :cond_5
    const/16 v17, 0x0

    :goto_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_d

    .line 857
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 860
    .local v11, "frame":Landroid/view/View;
    :try_start_0
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v12, "header":Landroid/view/View;
    move-object v2, v11

    .line 865
    check-cast v2, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getHeaderId()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mCurrentHeaderId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 866
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eqz v2, :cond_7

    const/4 v14, 0x1

    .line 867
    .local v14, "headerIsStickied":Z
    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    if-eqz v14, :cond_8

    .line 856
    :cond_6
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 861
    .end local v12    # "header":Landroid/view/View;
    .end local v14    # "headerIsStickied":Z
    :catch_0
    move-exception v10

    .line 978
    .end local v11    # "frame":Landroid/view/View;
    :goto_6
    return-void

    .line 866
    .restart local v11    # "frame":Landroid/view/View;
    .restart local v12    # "header":Landroid/view/View;
    :cond_7
    const/4 v14, 0x0

    goto :goto_4

    .line 872
    .restart local v14    # "headerIsStickied":Z
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_9

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 879
    .local v23, "widthMeasureSpec":I
    :goto_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 880
    .local v16, "heightMeasureSpec":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    .line 881
    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    .line 883
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_a

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getRight()I

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 890
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_b

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 898
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 900
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 902
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_c

    .line 903
    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 907
    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 908
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 875
    .end local v16    # "heightMeasureSpec":I
    .end local v23    # "widthMeasureSpec":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 875
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .restart local v23    # "widthMeasureSpec":I
    goto/16 :goto_7

    .line 886
    .restart local v16    # "heightMeasureSpec":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 887
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 886
    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    .line 894
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_9

    .line 905
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_a

    .line 911
    .end local v11    # "frame":Landroid/view/View;
    .end local v12    # "header":Landroid/view/View;
    .end local v14    # "headerIsStickied":Z
    .end local v16    # "heightMeasureSpec":I
    .end local v23    # "widthMeasureSpec":I
    :cond_d
    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v2, :cond_12

    .line 912
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 920
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_13

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v22

    .line 925
    .local v22, "wantedWidth":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move/from16 v0, v22

    if-eq v2, v0, :cond_f

    .line 927
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_14

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 933
    .restart local v23    # "widthMeasureSpec":I
    :goto_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 934
    .restart local v16    # "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 936
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_15

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getLeft()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 944
    .end local v16    # "heightMeasureSpec":I
    .end local v23    # "widthMeasureSpec":I
    :cond_f
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_16

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 951
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    add-int v3, v20, v13

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 952
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingToPadding:Z

    if-eqz v2, :cond_17

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 958
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 961
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_18

    .line 962
    const/4 v2, 0x0

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 967
    :goto_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    if-eq v2, v13, :cond_10

    .line 968
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    mul-int/lit16 v2, v2, 0xff

    div-int v7, v2, v13

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 972
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 974
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    if-eq v2, v13, :cond_11

    .line 975
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 977
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 913
    .end local v22    # "wantedWidth":I
    :cond_12
    if-nez v9, :cond_e

    goto/16 :goto_6

    .line 923
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int v22, v2, v3

    .restart local v22    # "wantedWidth":I
    goto/16 :goto_b

    .line 930
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 930
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .restart local v23    # "widthMeasureSpec":I
    goto/16 :goto_c

    .line 939
    .restart local v16    # "heightMeasureSpec":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getRight()I

    move-result v5

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 939
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_d

    .line 948
    .end local v16    # "heightMeasureSpec":I
    .end local v23    # "widthMeasureSpec":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_e

    .line 955
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_f

    .line 964
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_10
.end method

.method public getHeaderAt(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 211
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 219
    :goto_0
    return-object v0

    .line 216
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStickiedHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getStickyHeaderIsTranscluent()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    .line 238
    invoke-virtual {v1, p3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v3, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 237
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 239
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    .line 244
    invoke-virtual {v1, p3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v3, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 243
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    .line 250
    invoke-virtual {v1, p3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v3, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 249
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 251
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 982
    iget v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumColumns:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 984
    iget v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mColumnWidth:I

    if-lez v2, :cond_3

    .line 985
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 986
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 985
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 987
    .local v0, "gridWidth":I
    iget v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mColumnWidth:I

    div-int v1, v0, v2

    .line 990
    .local v1, "numFittedColumns":I
    if-lez v1, :cond_0

    .line 991
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 992
    iget v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mColumnWidth:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHorizontalSpacing:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    if-le v2, v0, :cond_1

    .line 994
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1002
    :cond_0
    const/4 v1, 0x1

    .line 1009
    .end local v0    # "gridWidth":I
    :cond_1
    :goto_1
    iput v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    .line 1017
    .end local v1    # "numFittedColumns":I
    :goto_2
    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v2, :cond_2

    .line 1018
    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    iget v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->setNumColumns(I)V

    .line 1021
    :cond_2
    invoke-direct {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->measureHeader()V

    .line 1023
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 1024
    return-void

    .line 1007
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "numFittedColumns":I
    goto :goto_1

    .line 1013
    .end local v1    # "numFittedColumns":I
    :cond_4
    iget v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumColumns:I

    iput v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 256
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 260
    move-object v0, p1

    check-cast v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$SavedState;

    .line 262
    .local v0, "ss":Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$SavedState;
    invoke-virtual {v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 263
    iget-boolean v1, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    iput-boolean v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 265
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->requestLayout()V

    .line 266
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 270
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 272
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$SavedState;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 273
    .local v0, "ss":Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$SavedState;
    iget-boolean v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    iput-boolean v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    .line 274
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 284
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 285
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->scrollChanged(I)V

    .line 287
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 295
    :cond_0
    iput p2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mScrollState:I

    .line 296
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 301
    .local v0, "action":I
    iget-boolean v6, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 302
    .local v6, "wasHeaderChildBeingPressed":Z
    iget-boolean v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    if-eqz v8, :cond_2

    .line 303
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v5

    .line 304
    .local v5, "tempHeader":Landroid/view/View;
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    move-object v3, v5

    .line 306
    .local v3, "headerHolder":Landroid/view/View;
    :goto_0
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_1

    .line 307
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 309
    :cond_1
    if-eqz v5, :cond_2

    .line 310
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 311
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 312
    new-instance v8, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$2;

    invoke-direct {v8, p0, v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$2;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Landroid/view/View;)V

    .line 316
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v9

    int-to-long v10, v9

    .line 312
    invoke-virtual {v5, v8, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 321
    .end local v3    # "headerHolder":Landroid/view/View;
    .end local v5    # "tempHeader":Landroid/view/View;
    :cond_2
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 443
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_2
    return v8

    .line 304
    .restart local v5    # "tempHeader":Landroid/view/View;
    :cond_4
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 305
    invoke-virtual {p0, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 323
    .end local v5    # "tempHeader":Landroid/view/View;
    :pswitch_0
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;

    if-nez v8, :cond_5

    .line 324
    new-instance v8, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;

    invoke-direct {v8, p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;)V

    iput-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;

    .line 326
    :cond_5
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p0, v8, v10, v11}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 329
    .local v7, "y":I
    int-to-float v8, v7

    iput v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionY:F

    .line 330
    int-to-float v8, v7

    invoke-direct {p0, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->findMotionHeader(F)I

    move-result v8

    iput v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 331
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mScrollState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 337
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v5

    .line 338
    .restart local v5    # "tempHeader":Landroid/view/View;
    if-eqz v5, :cond_8

    .line 339
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 340
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 341
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    .line 343
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 344
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_7

    .line 345
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 347
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 350
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    .line 351
    const/4 v8, 0x1

    goto :goto_2

    .line 353
    .end local v5    # "tempHeader":Landroid/view/View;
    .end local v7    # "y":I
    :pswitch_1
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 357
    const/4 v8, -0x1

    iput v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    .line 359
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v2

    .line 360
    .local v2, "header":Landroid/view/View;
    if-eqz v2, :cond_9

    .line 361
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 362
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 364
    :cond_9
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 365
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_a

    .line 366
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    :cond_a
    const/4 v8, -0x1

    iput v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    goto/16 :goto_1

    .line 373
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "header":Landroid/view/View;
    :pswitch_2
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_b

    .line 374
    const/4 v8, -0x1

    iput v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    .line 375
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 377
    :cond_b
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 381
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v2

    .line 382
    .restart local v2    # "header":Landroid/view/View;
    if-nez v6, :cond_11

    .line 383
    if-eqz v2, :cond_11

    .line 384
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    if-eqz v8, :cond_c

    .line 385
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 388
    :cond_c
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;

    if-nez v8, :cond_d

    .line 389
    new-instance v8, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$1;)V

    iput-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;

    .line 392
    :cond_d
    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;

    .line 393
    .local v4, "performHeaderClick":Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    iput v8, v4, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    .line 394
    invoke-virtual {v4}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->rememberWindowAttachCount()V

    .line 396
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    if-eqz v8, :cond_e

    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 397
    :cond_e
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 398
    .restart local v1    # "handler":Landroid/os/Handler;
    if-eqz v1, :cond_f

    .line 399
    iget v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v8, :cond_12

    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;

    :goto_3
    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    :cond_f
    iget-boolean v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v8, :cond_13

    .line 408
    const/4 v8, 0x1

    iput v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    .line 409
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 410
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->setPressed(Z)V

    .line 411
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v8, :cond_10

    .line 412
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 414
    :cond_10
    new-instance v8, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;

    invoke-direct {v8, p0, v2, v4}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Landroid/view/View;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;)V

    iput-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 430
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 431
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v9

    int-to-long v10, v9

    .line 430
    invoke-virtual {p0, v8, v10, v11}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v4    # "performHeaderClick":Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_11
    :goto_4
    const/4 v8, -0x1

    iput v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    .line 441
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 399
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v4    # "performHeaderClick":Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_12
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;

    goto :goto_3

    .line 433
    :cond_13
    const/4 v8, -0x1

    iput v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_4

    .line 435
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_14
    iget-boolean v8, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v8, :cond_11

    .line 436
    invoke-virtual {v4}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->run()V

    goto :goto_4

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performHeaderClick(Landroid/view/View;J)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderClickListener;

    if-eqz v2, :cond_1

    .line 448
    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->playSoundEffect(I)V

    .line 449
    if-eqz p1, :cond_0

    .line 450
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderClickListener;->onHeaderClick(Landroid/widget/AdapterView;Landroid/view/View;J)V

    .line 456
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public performHeaderLongPress(Landroid/view/View;J)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # J

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderLongClickListener;

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderLongClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderLongClickListener;->onHeaderLongClick(Landroid/widget/AdapterView;Landroid/view/View;J)Z

    move-result v0

    .line 465
    :cond_0
    if-eqz v0, :cond_2

    .line 466
    if-eqz p1, :cond_1

    .line 467
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 469
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->performHapticFeedback(I)Z

    .line 472
    :cond_2
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 477
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 481
    :cond_0
    iget-boolean v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClipToPaddingHasBeenSet:Z

    if-nez v1, :cond_1

    .line 482
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingToPadding:Z

    .line 486
    :cond_1
    instance-of v1, p1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapter;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 487
    check-cast v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapter;

    .line 497
    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    .local v0, "baseAdapter":Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapter;
    :goto_0
    new-instance v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;-><init>(Landroid/content/Context;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapter;)V

    iput-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    .line 498
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 499
    invoke-direct {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->reset()V

    .line 500
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    invoke-super {p0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 501
    return-void

    .line 488
    .end local v0    # "baseAdapter":Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapter;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_2
    instance-of v1, p1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapter;

    if-eqz v1, :cond_3

    .line 490
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;

    check-cast p1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {v0, p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapter;)V

    .restart local v0    # "baseAdapter":Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapter;
    goto :goto_0

    .line 494
    .end local v0    # "baseAdapter":Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapter;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersListAdapterWrapper;

    invoke-direct {v0, p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .restart local v0    # "baseAdapter":Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapter;
    goto :goto_0
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .param p1, "useStickyHeaders"    # Z

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eq p1, v0, :cond_0

    .line 505
    iput-boolean p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 506
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->requestLayout()V

    .line 508
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 513
    iput-boolean p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClippingToPadding:Z

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mClipToPaddingHasBeenSet:Z

    .line 515
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0
    .param p1, "columnWidth"    # I

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 520
    iput p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mColumnWidth:I

    .line 521
    return-void
.end method

.method public setHeadersIgnorePadding(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 529
    iput-boolean p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    .line 530
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 535
    iput p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHorizontalSpacing:I

    .line 536
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumColumnsSet:Z

    .line 542
    iput p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mNumColumns:I

    .line 543
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->setNumColumns(I)V

    .line 546
    :cond_0
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderClickListener;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderClickListener;

    .line 550
    return-void
.end method

.method public setOnHeaderLongClickListener(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderLongClickListener;

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->setLongClickable(Z)V

    .line 556
    :cond_0
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$OnHeaderLongClickListener;

    .line 557
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 562
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 563
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 569
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 570
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 575
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 576
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 581
    return-void
.end method

.method public setStickyHeaderIsTranscluent(Z)V
    .locals 1
    .param p1, "isTranscluent"    # Z

    .prologue
    .line 584
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 585
    return-void

    .line 584
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 589
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 590
    iput p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mVerticalSpacing:I

    .line 591
    return-void
.end method
