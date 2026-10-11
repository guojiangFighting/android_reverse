.class public Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;,
        Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;,
        Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;,
        Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnLayout;,
        Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;,
        Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDenier;,
        Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;,
        Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;,
        Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;
    }
.end annotation


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private mDoubleClickListener:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;

.field private mDragDistance:I

.field private mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

.field private mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mEventCounter:I

.field private mOnLayoutListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mRevealListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowEntirely:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShowMode:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

.field private mSwipeDeniers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDenier;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEnabled:Z

.field private mSwipeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchConsumedByChild:Z

.field private sX:F

.field private sY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v5, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    .line 38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    .line 42
    iput-boolean v6, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeEnabled:Z

    .line 170
    new-instance v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;

    invoke-direct {v2, p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;-><init>(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    iput-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 447
    iput v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mEventCounter:I

    .line 666
    iput-boolean v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mTouchConsumedByChild:Z

    .line 754
    iput v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sX:F

    iput v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sY:F

    .line 933
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;

    invoke-direct {v4, p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;-><init>(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 66
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 68
    sget-object v2, Lcom/dodonew/online/R$styleable;->SwipeBackLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->ordinal()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 71
    .local v1, "ordinal":I
    invoke-static {}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->values()[Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    .line 72
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->ordinal()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 73
    invoke-static {}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->values()[Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowMode:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 27
    iget v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    return v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowMode:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->processSurfaceRelease(FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->processBottomPullOutRelease(FF)V

    return-void
.end method

.method static synthetic access$600(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->processBottomLayDownMode(FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
    .param p1, "x1"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->computeBottomLayDown(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDoubleClickListener:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->performAdapterViewItemClick(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private childNeedHandleTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .param p1, "v"    # Landroid/view/ViewGroup;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 714
    if-nez p1, :cond_1

    move-object p1, v4

    .line 730
    .end local p1    # "v":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-object p1

    .line 715
    .restart local p1    # "v":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 718
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 719
    .local v1, "childCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 720
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 721
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 722
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->childNeedHandleTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 723
    .local v2, "grandChild":Landroid/view/View;
    if-eqz v2, :cond_3

    move-object p1, v2

    .line 724
    goto :goto_0

    .line 726
    .end local v2    # "grandChild":Landroid/view/View;
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->childNeedHandleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 727
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 719
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    move-object p1, v4

    .line 730
    goto :goto_0
.end method

.method private childNeedHandleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 740
    if-nez p1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return v3

    .line 742
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 743
    .local v1, "loc":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 744
    aget v0, v1, v3

    .local v0, "left":I
    const/4 v4, 0x1

    aget v2, v1, v4

    .line 746
    .local v2, "top":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    int-to-float v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 747
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 748
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method private computeBottomLayDown(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "dragEdge"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v1

    .local v1, "bl":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v3

    .line 1268
    .local v3, "bt":I
    sget-object v4, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p1, v4, :cond_2

    .line 1269
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int v1, v4, v5

    .line 1273
    :cond_0
    :goto_0
    sget-object v4, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-eq p1, v4, :cond_1

    sget-object v4, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p1, v4, :cond_3

    .line 1274
    :cond_1
    iget v4, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    add-int v2, v1, v4

    .line 1275
    .local v2, "br":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 1280
    .local v0, "bb":I
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 1270
    .end local v0    # "bb":I
    .end local v2    # "br":I
    :cond_2
    sget-object v4, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Bottom:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p1, v4, :cond_0

    .line 1271
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int v3, v4, v5

    goto :goto_0

    .line 1277
    :cond_3
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 1278
    .restart local v2    # "br":I
    iget v4, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    add-int v0, v3, v4

    .restart local v0    # "bb":I
    goto :goto_1
.end method

.method private computeBottomLayoutAreaViaSurface(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "mode"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;
    .param p2, "surfaceArea"    # Landroid/graphics/Rect;

    .prologue
    .line 1237
    move-object v4, p2

    .line 1239
    .local v4, "rect":Landroid/graphics/Rect;
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .local v1, "bl":I
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .local v3, "bt":I
    iget v2, v4, Landroid/graphics/Rect;->right:I

    .local v2, "br":I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1240
    .local v0, "bb":I
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne p1, v5, :cond_6

    .line 1241
    iget-object v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v5, v6, :cond_2

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int v1, v5, v6

    .line 1246
    :goto_0
    iget-object v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v5, v6, :cond_5

    .line 1247
    :cond_0
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1248
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int v2, v1, v5

    .line 1260
    :cond_1
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5

    .line 1242
    :cond_2
    iget-object v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v5, v6, :cond_3

    iget v1, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1243
    :cond_3
    iget-object v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v5, v6, :cond_4

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int v3, v5, v6

    goto :goto_0

    .line 1244
    :cond_4
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1250
    :cond_5
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int v0, v3, v5

    .line 1251
    iget v2, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1253
    :cond_6
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->LayDown:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne p1, v5, :cond_1

    .line 1254
    iget-object v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v5, v6, :cond_7

    iget v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    add-int v2, v1, v5

    goto :goto_1

    .line 1255
    :cond_7
    iget-object v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v5, v6, :cond_8

    iget v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int v1, v2, v5

    goto :goto_1

    .line 1256
    :cond_8
    iget-object v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v5, v6, :cond_9

    iget v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    add-int v0, v3, v5

    goto :goto_1

    .line 1257
    :cond_9
    iget v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int v3, v0, v5

    goto :goto_1
.end method

.method private computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;
    .locals 5
    .param p1, "open"    # Z

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v0

    .local v0, "l":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v1

    .line 1226
    .local v1, "t":I
    if-eqz p1, :cond_0

    .line 1227
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    add-int v0, v2, v3

    .line 1232
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 1228
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int v0, v2, v3

    goto :goto_0

    .line 1229
    :cond_2
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    add-int v1, v2, v3

    goto :goto_0

    .line 1230
    :cond_3
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method private dp2px(F)I
    .locals 2
    .param p1, "dp"    # F

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getAdapterView()Landroid/widget/AdapterView;
    .locals 2

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 907
    .local v0, "t":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 908
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 909
    check-cast v0, Landroid/widget/AdapterView;

    .line 913
    .end local v0    # "t":Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .line 911
    .restart local v0    # "t":Landroid/view/ViewParent;
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 913
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private insideAdapterView()Z
    .locals 1

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnabledInAdapterView()Z
    .locals 5

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v1

    .line 878
    .local v1, "adapterView":Landroid/widget/AdapterView;
    const/4 v2, 0x1

    .line 879
    .local v2, "enable":Z
    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 881
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 883
    .local v3, "p":I
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_1

    .line 884
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0, v3}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v2

    .line 890
    .end local v3    # "p":I
    :cond_0
    :goto_0
    return v2

    .line 885
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v3    # "p":I
    :cond_1
    instance-of v4, v0, Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    .line 886
    check-cast v0, Landroid/widget/ListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    goto :goto_0
.end method

.method private performAdapterViewItemClick(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 918
    .local v1, "t":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_0

    .line 919
    instance-of v3, v1, Landroid/widget/AdapterView;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 920
    check-cast v2, Landroid/widget/AdapterView;

    .line 921
    .local v2, "view":Landroid/widget/AdapterView;
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 922
    .local v0, "p":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 923
    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 931
    .end local v0    # "p":I
    .end local v2    # "view":Landroid/widget/AdapterView;
    :cond_0
    return-void

    .line 926
    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->performClick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 929
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method private processBottomLayDownMode(FF)V
    .locals 5
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v4, 0x0

    .line 1121
    cmpl-float v2, p1, v4

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getOpenStatus()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    move-result-object v2

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Middle:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v2, v3, :cond_0

    .line 1122
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    .line 1124
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v0

    .local v0, "l":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v1

    .line 1126
    .local v1, "t":I
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int/2addr v0, v2

    .line 1127
    :cond_1
    cmpl-float v2, p1, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    add-int/2addr v0, v2

    .line 1129
    :cond_2
    cmpl-float v2, p2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    add-int/2addr v1, v2

    .line 1130
    :cond_3
    cmpg-float v2, p2, v4

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Bottom:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int/2addr v1, v2

    .line 1132
    :cond_4
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1133
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->invalidate()V

    .line 1134
    return-void
.end method

.method private processBottomPullOutRelease(FF)V
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v2, 0x0

    .line 1089
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getOpenStatus()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Middle:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v0, v1, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_6

    .line 1093
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 1094
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open()V

    .line 1097
    :cond_2
    :goto_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    .line 1098
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    .line 1112
    :cond_3
    :goto_1
    return-void

    .line 1095
    :cond_4
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    goto :goto_0

    .line 1099
    :cond_5
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open()V

    goto :goto_1

    .line 1102
    :cond_6
    cmpl-float v0, p2, v2

    if-lez v0, :cond_7

    .line 1103
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open()V

    .line 1107
    :cond_7
    :goto_2
    cmpg-float v0, p2, v2

    if-gez v0, :cond_3

    .line 1108
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    goto :goto_1

    .line 1104
    :cond_8
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    goto :goto_2

    .line 1109
    :cond_9
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open()V

    goto :goto_1
.end method

.method private processSurfaceRelease(FF)V
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v2, 0x0

    .line 1058
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getOpenStatus()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Middle:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v0, v1, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_6

    .line 1062
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 1063
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open()V

    .line 1066
    :cond_2
    :goto_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    .line 1067
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    .line 1080
    :cond_3
    :goto_1
    return-void

    .line 1064
    :cond_4
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    goto :goto_0

    .line 1068
    :cond_5
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open()V

    goto :goto_1

    .line 1071
    :cond_6
    cmpl-float v0, p2, v2

    if-lez v0, :cond_7

    .line 1072
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open()V

    .line 1075
    :cond_7
    :goto_2
    cmpg-float v0, p2, v2

    if-gez v0, :cond_3

    .line 1076
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    goto :goto_1

    .line 1073
    :cond_8
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    goto :goto_2

    .line 1077
    :cond_9
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open()V

    goto :goto_1
.end method

.method private safeBottomView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 503
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getOpenStatus()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    move-result-object v1

    .line 504
    .local v1, "status":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 506
    .local v0, "bottom":Landroid/view/ViewGroup;
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Close:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v1, v2, :cond_1

    .line 507
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 508
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addOnLayoutListener(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnLayout;)V
    .locals 1
    .param p1, "l"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnLayout;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    return-void
.end method

.method public addRevealListener(ILcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;)V
    .locals 3
    .param p1, "childId"    # I
    .param p2, "l"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Child does not belong to SwipeListener."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public addRevealListener([ILcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;)V
    .locals 3
    .param p1, "childIds"    # [I
    .param p2, "l"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;

    .prologue
    .line 147
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 148
    .local v0, "i":I
    invoke-virtual {p0, v0, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->addRevealListener(ILcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public addSwipeDenier(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDenier;)V
    .locals 1
    .param p1, "denier"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDenier;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public addSwipeListener(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1176
    invoke-virtual {p0, v0, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close(ZZ)V

    .line 1177
    return-void
.end method

.method public close(Z)V
    .locals 1
    .param p1, "smooth"    # Z

    .prologue
    .line 1180
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close(ZZ)V

    .line 1181
    return-void
.end method

.method public close(ZZ)V
    .locals 8
    .param p1, "smooth"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 1191
    .local v3, "surface":Landroid/view/ViewGroup;
    if-eqz p1, :cond_0

    .line 1192
    iget-object v4, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1205
    :goto_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->invalidate()V

    .line 1206
    return-void

    .line 1194
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 1195
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int v0, v4, v5

    .line 1196
    .local v0, "dx":I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int v1, v4, v5

    .line 1197
    .local v1, "dy":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1198
    if-eqz p2, :cond_1

    .line 1199
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->dispatchRevealEvent(IIII)V

    .line 1200
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->dispatchSwipeEvent(IIII)V

    goto :goto_0

    .line 1202
    :cond_1
    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->safeBottomView()V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 588
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 589
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 592
    :cond_0
    return-void
.end method

.method protected dispatchRevealEvent(IIII)V
    .locals 13
    .param p1, "surfaceLeft"    # I
    .param p2, "surfaceTop"    # I
    .param p3, "surfaceRight"    # I
    .param p4, "surfaceBottom"    # I

    .prologue
    .line 517
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    :cond_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 519
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/util/ArrayList<Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 520
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getRelativePosition(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 521
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->isViewShowing(Landroid/view/View;Landroid/graphics/Rect;Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 522
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const/4 v8, 0x0

    .line 524
    .local v8, "distance":I
    const/4 v10, 0x0

    .line 525
    .local v10, "fraction":F
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getShowMode()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->LayDown:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v0, v3, :cond_5

    .line 526
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$2;->$SwitchMap$com$dodonew$online$widget$swipelayout$SwipeLayout$DragEdge:[I

    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 565
    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;

    .line 566
    .local v11, "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-interface {v11, v1, v3, v4, v8}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;->onReveal(Landroid/view/View;Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;FI)V

    .line 567
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    .line 568
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 528
    .end local v11    # "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;
    :pswitch_0
    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v0, p1

    .line 529
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 530
    goto :goto_0

    .line 532
    :pswitch_1
    iget v0, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, p3

    .line 533
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 534
    goto :goto_0

    .line 536
    :pswitch_2
    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int v8, v0, p2

    .line 537
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 538
    goto :goto_0

    .line 540
    :pswitch_3
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v0, p4

    .line 541
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    goto :goto_0

    .line 544
    :cond_5
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getShowMode()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v0, v3, :cond_3

    .line 545
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$2;->$SwitchMap$com$dodonew$online$widget$swipelayout$SwipeLayout$DragEdge:[I

    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 555
    :pswitch_4
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v3

    sub-int v8, v0, v3

    .line 556
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 557
    goto/16 :goto_0

    .line 547
    :pswitch_5
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v3

    sub-int v8, v0, v3

    .line 548
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 549
    goto/16 :goto_0

    .line 551
    :pswitch_6
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getWidth()I

    move-result v3

    sub-int v8, v0, v3

    .line 552
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 553
    goto/16 :goto_0

    .line 559
    :pswitch_7
    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getHeight()I

    move-result v3

    sub-int v8, v0, v3

    .line 560
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    goto/16 :goto_0

    .line 573
    .end local v8    # "distance":I
    .end local v10    # "fraction":F
    :cond_6
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->isViewTotallyFirstShowed(Landroid/view/View;Landroid/graphics/Rect;Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;

    .line 576
    .restart local v11    # "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v4, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v4, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v3, v4, :cond_8

    .line 577
    :cond_7
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-interface {v11, v1, v3, v4, v5}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;->onReveal(Landroid/view/View;Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;FI)V

    goto :goto_2

    .line 579
    :cond_8
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-interface {v11, v1, v3, v4, v5}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;->onReveal(Landroid/view/View;Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;FI)V

    goto :goto_2

    .line 526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 545
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected dispatchSwipeEvent(IIII)V
    .locals 3
    .param p1, "surfaceLeft"    # I
    .param p2, "surfaceTop"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getDragEdge()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v0

    .line 451
    .local v0, "edge":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;
    const/4 v1, 0x1

    .line 452
    .local v1, "open":Z
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_1

    .line 453
    if-gez p3, :cond_0

    const/4 v1, 0x0

    .line 462
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->dispatchSwipeEvent(IIZ)V

    .line 463
    return-void

    .line 454
    :cond_1
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_2

    .line 455
    if-lez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 456
    :cond_2
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_3

    .line 457
    if-gez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 458
    :cond_3
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Bottom:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_0

    .line 459
    if-lez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchSwipeEvent(IIZ)V
    .locals 7
    .param p1, "surfaceLeft"    # I
    .param p2, "surfaceTop"    # I
    .param p3, "open"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 466
    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->safeBottomView()V

    .line 467
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getOpenStatus()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    move-result-object v1

    .line 469
    .local v1, "status":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 470
    iget v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mEventCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mEventCounter:I

    .line 471
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;

    .line 472
    .local v0, "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;
    iget v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mEventCounter:I

    if-ne v3, v6, :cond_0

    .line 473
    if-eqz p3, :cond_1

    .line 474
    invoke-interface {v0, p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;->onStartOpen(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    .line 479
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v4

    sub-int v4, p2, v4

    invoke-interface {v0, p0, v3, v4}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;->onUpdate(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;II)V

    goto :goto_0

    .line 476
    :cond_1
    invoke-interface {v0, p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;->onStartClose(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    goto :goto_1

    .line 482
    .end local v0    # "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;
    :cond_2
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Close:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v1, v2, :cond_4

    .line 483
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;

    .line 484
    .restart local v0    # "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;
    invoke-interface {v0, p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;->onClose(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    goto :goto_2

    .line 486
    .end local v0    # "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;
    :cond_3
    iput v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mEventCounter:I

    .line 489
    :cond_4
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Open:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v1, v2, :cond_6

    .line 490
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 491
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;

    .line 492
    .restart local v0    # "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;
    invoke-interface {v0, p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;->onOpen(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    goto :goto_3

    .line 494
    .end local v0    # "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;
    :cond_5
    iput v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mEventCounter:I

    .line 497
    :cond_6
    return-void
.end method

.method public getBottomView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDragDistance()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    return v0
.end method

.method public getDragEdge()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    return-object v0
.end method

.method public getOpenStatus()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;
    .locals 4

    .prologue
    .line 1040
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    .line 1041
    .local v0, "surfaceLeft":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 1042
    .local v1, "surfaceTop":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1043
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Close:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    .line 1049
    :goto_0
    return-object v2

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    add-int/2addr v2, v3

    if-eq v0, v2, :cond_1

    .line 1046
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_2

    .line 1047
    :cond_1
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Open:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    goto :goto_0

    .line 1049
    :cond_2
    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Middle:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    goto :goto_0
.end method

.method protected getRelativePosition(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 433
    move-object v1, p1

    .line 434
    .local v1, "t":Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-direct {v0, v2, v3, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 435
    .local v0, "r":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 436
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1    # "t":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 437
    .restart local v1    # "t":Landroid/view/View;
    if-ne v1, p0, :cond_1

    .line 442
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 443
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 444
    return-object v0

    .line 439
    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 440
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getShowMode()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowMode:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeEnabled:Z

    return v0
.end method

.method protected isViewShowing(Landroid/view/View;Landroid/graphics/Rect;Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;IIII)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativePosition"    # Landroid/graphics/Rect;
    .param p3, "availableEdge"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;
    .param p4, "surfaceLeft"    # I
    .param p5, "surfaceTop"    # I
    .param p6, "surfaceRight"    # I
    .param p7, "surfaceBottom"    # I

    .prologue
    const/4 v4, 0x1

    .line 380
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 381
    .local v1, "childLeft":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 382
    .local v2, "childRight":I
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 383
    .local v3, "childTop":I
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 384
    .local v0, "childBottom":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getShowMode()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->LayDown:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_1

    .line 385
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$2;->$SwitchMap$com$dodonew$online$widget$swipelayout$SwipeLayout$DragEdge:[I

    invoke-virtual {p3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 427
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 387
    :pswitch_0
    if-le p6, v1, :cond_0

    if-gt p6, v2, :cond_0

    goto :goto_1

    .line 392
    :pswitch_1
    if-ge p4, v2, :cond_0

    if-lt p4, v1, :cond_0

    goto :goto_1

    .line 397
    :pswitch_2
    if-lt p5, v3, :cond_0

    if-ge p5, v0, :cond_0

    goto :goto_1

    .line 402
    :pswitch_3
    if-le p7, v3, :cond_0

    if-gt p7, v0, :cond_0

    goto :goto_1

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getShowMode()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_0

    .line 408
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$2;->$SwitchMap$com$dodonew$online$widget$swipelayout$SwipeLayout$DragEdge:[I

    invoke-virtual {p3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 418
    :pswitch_4
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-lt v0, v5, :cond_0

    goto :goto_1

    .line 410
    :pswitch_5
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getWidth()I

    move-result v5

    if-gt v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_0

    goto :goto_1

    .line 414
    :pswitch_6
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v5

    if-lt v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v5

    if-ge v1, v5, :cond_0

    goto :goto_1

    .line 422
    :pswitch_7
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-lt v3, v5, :cond_0

    goto :goto_1

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 408
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected isViewTotallyFirstShowed(Landroid/view/View;Landroid/graphics/Rect;Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;IIII)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativePosition"    # Landroid/graphics/Rect;
    .param p3, "edge"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;
    .param p4, "surfaceLeft"    # I
    .param p5, "surfaceTop"    # I
    .param p6, "surfaceRight"    # I
    .param p7, "surfaceBottom"    # I

    .prologue
    .line 355
    iget-object v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 356
    const/4 v4, 0x0

    .line 376
    :cond_0
    :goto_0
    return v4

    .line 357
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 358
    .local v1, "childLeft":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 359
    .local v2, "childRight":I
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 360
    .local v3, "childTop":I
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 361
    .local v0, "childBottom":I
    const/4 v4, 0x0

    .line 362
    .local v4, "r":Z
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getShowMode()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->LayDown:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_6

    .line 363
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_2

    if-le p6, v1, :cond_5

    :cond_2
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_3

    if-ge p4, v2, :cond_5

    :cond_3
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_4

    if-ge p5, v0, :cond_5

    :cond_4
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Bottom:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_0

    if-gt p7, v3, :cond_0

    .line 367
    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    .line 369
    :cond_6
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getShowMode()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_0

    .line 370
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_7

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_a

    :cond_7
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_8

    .line 371
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v5

    if-ge v1, v5, :cond_a

    :cond_8
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_9

    .line 372
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-ge v3, v5, :cond_a

    :cond_9
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Bottom:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getHeight()I

    move-result v5

    if-gt v0, v5, :cond_0

    .line 374
    :cond_a
    const/4 v4, 0x1

    goto :goto_0
.end method

.method layoutLayDown()V
    .locals 6

    .prologue
    .line 648
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 649
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 650
    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->LayDown:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    invoke-direct {p0, v1, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->computeBottomLayoutAreaViaSurface(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 651
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 652
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 653
    return-void
.end method

.method layoutPullOut()V
    .locals 6

    .prologue
    .line 640
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 641
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 642
    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    invoke-direct {p0, v1, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->computeBottomLayoutAreaViaSurface(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 643
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 644
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 645
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 671
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->isEnabledInAdapterView()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 704
    :cond_1
    :goto_0
    return v4

    .line 675
    :cond_2
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->isSwipeEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 679
    iget-object v5, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDenier;

    .line 680
    .local v1, "denier":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDenier;
    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDenier;->shouldDenySwipe(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 688
    .end local v1    # "denier":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDenier;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 689
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 703
    :cond_5
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mTouchConsumedByChild:Z

    if-nez v3, :cond_1

    .line 704
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 691
    :pswitch_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getOpenStatus()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    move-result-object v2

    .line 692
    .local v2, "status":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Close:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v2, v5, :cond_7

    .line 693
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->childNeedHandleTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    :goto_2
    iput-boolean v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mTouchConsumedByChild:Z

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2

    .line 694
    :cond_7
    sget-object v5, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Open:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v2, v5, :cond_5

    .line 695
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->childNeedHandleTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    :goto_3
    iput-boolean v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mTouchConsumedByChild:Z

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_3

    .line 700
    .end local v2    # "status":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;
    :pswitch_2
    iput-boolean v4, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mTouchConsumedByChild:Z

    goto :goto_1

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getChildCount()I

    move-result v0

    .line 618
    .local v0, "childCount":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 619
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You need 2  views in SwipeLayout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 622
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The 2 children in SwipeLayout must be an instance of ViewGroup"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 625
    :cond_2
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowMode:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v2, v3, :cond_4

    .line 626
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->layoutPullOut()V

    .line 630
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->safeBottomView()V

    .line 632
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 633
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 634
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnLayout;

    invoke-interface {v2, p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnLayout;->onLayout(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 627
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowMode:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    sget-object v3, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->LayDown:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v2, v3, :cond_3

    .line 628
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->layoutLayDown()V

    goto :goto_0

    .line 637
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 658
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 660
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_1

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    .line 664
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->isEnabledInAdapterView()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 758
    :cond_0
    const/4 v9, 0x1

    .line 868
    :goto_0
    return v9

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->isSwipeEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 761
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_0

    .line 763
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 764
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 766
    .local v5, "parent":Landroid/view/ViewParent;
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 767
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getOpenStatus()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    move-result-object v6

    .line 768
    .local v6, "status":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;
    const/4 v8, 0x0

    .line 769
    .local v8, "touching":Landroid/view/ViewGroup;
    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Close:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_5

    .line 770
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v8

    .line 775
    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 864
    :cond_4
    :goto_2
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 865
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 868
    :goto_3
    const/4 v9, 0x1

    goto :goto_0

    .line 771
    :cond_5
    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Open:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_3

    .line 772
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v8

    goto :goto_1

    .line 777
    :pswitch_0
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 778
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sX:F

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sY:F

    .line 783
    if-eqz v8, :cond_6

    .line 784
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 786
    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    .line 788
    :pswitch_1
    iget v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sY:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_8

    .line 792
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 793
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 794
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sX:F

    .line 796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sY:F

    .line 797
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 800
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sX:F

    sub-float v2, v9, v10

    .line 801
    .local v2, "distanceX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sY:F

    sub-float v3, v9, v10

    .line 802
    .local v3, "distanceY":F
    div-float v9, v3, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 803
    .local v1, "angle":F
    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v1, v10

    .line 805
    const/4 v4, 0x0

    .line 806
    .local v4, "doNothing":Z
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_d

    .line 807
    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Open:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_9

    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_a

    :cond_9
    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Close:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_1d

    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_1d

    :cond_a
    const/4 v7, 0x1

    .line 808
    .local v7, "suitable":Z
    :goto_4
    if-nez v7, :cond_b

    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Middle:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_1e

    :cond_b
    const/4 v7, 0x1

    .line 810
    :goto_5
    const/high16 v9, 0x41f00000    # 30.0f

    cmpl-float v9, v1, v9

    if-gtz v9, :cond_c

    if-nez v7, :cond_d

    .line 811
    :cond_c
    const/4 v4, 0x1

    .line 815
    .end local v7    # "suitable":Z
    :cond_d
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_12

    .line 816
    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Open:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_e

    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-ltz v9, :cond_f

    :cond_e
    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Close:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_1f

    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_1f

    :cond_f
    const/4 v7, 0x1

    .line 817
    .restart local v7    # "suitable":Z
    :goto_6
    if-nez v7, :cond_10

    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Middle:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_20

    :cond_10
    const/4 v7, 0x1

    .line 819
    :goto_7
    const/high16 v9, 0x41f00000    # 30.0f

    cmpl-float v9, v1, v9

    if-gtz v9, :cond_11

    if-nez v7, :cond_12

    .line 820
    :cond_11
    const/4 v4, 0x1

    .line 824
    .end local v7    # "suitable":Z
    :cond_12
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_17

    .line 825
    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Open:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_13

    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-ltz v9, :cond_14

    :cond_13
    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Close:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_21

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_21

    :cond_14
    const/4 v7, 0x1

    .line 826
    .restart local v7    # "suitable":Z
    :goto_8
    if-nez v7, :cond_15

    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Middle:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_22

    :cond_15
    const/4 v7, 0x1

    .line 828
    :goto_9
    const/high16 v9, 0x42700000    # 60.0f

    cmpg-float v9, v1, v9

    if-ltz v9, :cond_16

    if-nez v7, :cond_17

    .line 829
    :cond_16
    const/4 v4, 0x1

    .line 833
    .end local v7    # "suitable":Z
    :cond_17
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Bottom:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_1c

    .line 834
    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Open:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_18

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-gtz v9, :cond_19

    :cond_18
    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Close:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_23

    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_23

    :cond_19
    const/4 v7, 0x1

    .line 835
    .restart local v7    # "suitable":Z
    :goto_a
    if-nez v7, :cond_1a

    sget-object v9, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Middle:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v6, v9, :cond_24

    :cond_1a
    const/4 v7, 0x1

    .line 837
    :goto_b
    const/high16 v9, 0x42700000    # 60.0f

    cmpg-float v9, v1, v9

    if-ltz v9, :cond_1b

    if-nez v7, :cond_1c

    .line 838
    :cond_1b
    const/4 v4, 0x1

    .line 842
    .end local v7    # "suitable":Z
    :cond_1c
    if-eqz v4, :cond_25

    .line 843
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 844
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 807
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 808
    .restart local v7    # "suitable":Z
    :cond_1e
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 816
    .end local v7    # "suitable":Z
    :cond_1f
    const/4 v7, 0x0

    goto :goto_6

    .line 817
    .restart local v7    # "suitable":Z
    :cond_20
    const/4 v7, 0x0

    goto :goto_7

    .line 825
    .end local v7    # "suitable":Z
    :cond_21
    const/4 v7, 0x0

    goto :goto_8

    .line 826
    .restart local v7    # "suitable":Z
    :cond_22
    const/4 v7, 0x0

    goto :goto_9

    .line 834
    .end local v7    # "suitable":Z
    :cond_23
    const/4 v7, 0x0

    goto :goto_a

    .line 835
    .restart local v7    # "suitable":Z
    :cond_24
    const/4 v7, 0x0

    goto :goto_b

    .line 846
    .end local v7    # "suitable":Z
    :cond_25
    if-eqz v8, :cond_26

    .line 847
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 849
    :cond_26
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 850
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 857
    .end local v1    # "angle":F
    .end local v2    # "distanceX":F
    .end local v3    # "distanceY":F
    .end local v4    # "doNothing":Z
    :pswitch_2
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sX:F

    .line 858
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->sY:F

    .line 859
    if-eqz v8, :cond_4

    .line 860
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setPressed(Z)V

    goto/16 :goto_2

    .line 775
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1140
    invoke-virtual {p0, v0, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open(ZZ)V

    .line 1141
    return-void
.end method

.method public open(Z)V
    .locals 1
    .param p1, "smooth"    # Z

    .prologue
    .line 1144
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open(ZZ)V

    .line 1145
    return-void
.end method

.method public open(ZZ)V
    .locals 10
    .param p1, "smooth"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v5

    .local v5, "surface":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 1150
    .local v1, "bottom":Landroid/view/ViewGroup;
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 1151
    .local v4, "rect":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 1152
    iget-object v6, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1169
    :goto_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->invalidate()V

    .line 1170
    return-void

    .line 1155
    :cond_0
    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    sub-int v2, v6, v7

    .line 1156
    .local v2, "dx":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    sub-int v3, v6, v7

    .line 1157
    .local v3, "dy":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1158
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getShowMode()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v6

    sget-object v7, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v6, v7, :cond_1

    .line 1159
    sget-object v6, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    invoke-direct {p0, v6, v4}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->computeBottomLayoutAreaViaSurface(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1160
    .local v0, "bRect":Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1162
    .end local v0    # "bRect":Landroid/graphics/Rect;
    :cond_1
    if-eqz p2, :cond_2

    .line 1163
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->dispatchRevealEvent(IIII)V

    .line 1164
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->dispatchSwipeEvent(IIII)V

    goto :goto_0

    .line 1166
    :cond_2
    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->safeBottomView()V

    goto :goto_0
.end method

.method public removeAllRevealListeners(I)V
    .locals 2
    .param p1, "childId"    # I

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    return-void
.end method

.method public removeAllSwipeDeniers()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    return-void
.end method

.method public removeOnLayoutListener(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnLayout;)V
    .locals 1
    .param p1, "l"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnLayout;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 613
    :cond_0
    return-void
.end method

.method public removeRevealListener(ILcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;)V
    .locals 2
    .param p1, "childId"    # I
    .param p2, "l"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnRevealListener;

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeSwipeDenier(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDenier;)V
    .locals 1
    .param p1, "denier"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDenier;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public removeSwipeListener(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public setDragDistance(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 996
    if-gez p1, :cond_0

    .line 997
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drag distance can not be < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_0
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragDistance:I

    .line 999
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->requestLayout()V

    .line 1000
    return-void
.end method

.method public setDragEdge(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;)V
    .locals 0
    .param p1, "dragEdge"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    .prologue
    .line 987
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDragEdge:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    .line 988
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->requestLayout()V

    .line 989
    return-void
.end method

.method public setOnDoubleClickListener(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;)V
    .locals 0
    .param p1, "doubleClickListener"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mDoubleClickListener:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;

    .line 1285
    return-void
.end method

.method public setShowMode(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mShowMode:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    .line 1008
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->requestLayout()V

    .line 1009
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->mSwipeEnabled:Z

    .line 895
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 1209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->toggle(Z)V

    .line 1210
    return-void
.end method

.method public toggle(Z)V
    .locals 2
    .param p1, "smooth"    # Z

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getOpenStatus()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Open:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v0, v1, :cond_1

    .line 1214
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close(Z)V

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getOpenStatus()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;->Close:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$Status;

    if-ne v0, v1, :cond_0

    .line 1216
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open(Z)V

    goto :goto_0
.end method
