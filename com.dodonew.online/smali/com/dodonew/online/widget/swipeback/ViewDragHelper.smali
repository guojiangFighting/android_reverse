.class public Lcom/dodonew/online/widget/swipeback/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_NONE:I = 0x10

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgeTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v2, -0x1

    iput v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 374
    new-instance v2, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$2;-><init>(Lcom/dodonew/online/widget/swipeback/ViewDragHelper;)V

    iput-object v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 416
    if-nez p2, :cond_0

    .line 417
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_0
    if-nez p3, :cond_1

    .line 420
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    :cond_1
    iput-object p2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 424
    iput-object p3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    .line 426
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 427
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 428
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeSize:I

    .line 430
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    .line 431
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMaxVelocity:F

    .line 432
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMinVelocity:F

    .line 433
    sget-object v2, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 434
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .prologue
    const/4 v2, 0x0

    .line 1334
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1335
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1337
    .local v1, "absODelta":F
    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return v2

    .line 1343
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1344
    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    goto :goto_0

    .line 1347
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1361
    if-nez p1, :cond_1

    move v2, v3

    .line 1374
    :cond_0
    :goto_0
    return v2

    .line 1364
    :cond_1
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 1365
    .local v0, "checkHorizontal":Z
    :goto_1
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    .line 1367
    .local v1, "checkVertical":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1368
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    :cond_2
    move v0, v3

    .line 1364
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v3

    .line 1365
    goto :goto_2

    .line 1369
    .restart local v1    # "checkVertical":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 1370
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1371
    :cond_5
    if-eqz v1, :cond_6

    .line 1372
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    .line 1374
    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    .line 761
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 762
    .local v0, "absValue":F
    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    .line 766
    .end local p3    # "absMax":F
    :cond_0
    :goto_0
    return p3

    .line 764
    .restart local p3    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    .line 765
    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 766
    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    .line 742
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 743
    .local v0, "absValue":I
    if-ge v0, p2, :cond_1

    .line 744
    const/4 p3, 0x0

    .line 747
    .end local p3    # "absMax":I
    :cond_0
    :goto_0
    return p3

    .line 745
    .restart local p3    # "absMax":I
    :cond_1
    if-le v0, p3, :cond_2

    .line 746
    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 747
    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 868
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 872
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 873
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 874
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 875
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 876
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 877
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 878
    iput v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 886
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 887
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 888
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 889
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    aput v2, v0, p1

    .line 890
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 891
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 892
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 710
    if-nez p1, :cond_0

    .line 711
    const/4 v6, 0x0

    .line 728
    :goto_0
    return v6

    .line 714
    :cond_0
    iget-object v6, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 715
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 716
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 717
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    .line 718
    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 721
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 722
    if-lez p2, :cond_1

    .line 723
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .line 728
    .local v2, "duration":I
    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 725
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 726
    .local v4, "range":F
    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "duration":I
    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .prologue
    .line 689
    iget v12, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 690
    iget v12, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 691
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 692
    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 693
    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 694
    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 695
    .local v5, "absYVel":I
    add-int v7, v4, v5

    .line 696
    .local v7, "addedVel":I
    add-int v6, v2, v3

    .line 698
    .local v6, "addedDistance":I
    if-eqz p4, :cond_0

    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    .line 700
    .local v9, "xweight":F
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 703
    .local v11, "yweight":F
    :goto_1
    iget-object v12, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    .line 704
    .local v8, "xduration":I
    iget-object v12, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    .line 706
    .local v10, "yduration":I
    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    .line 698
    .end local v8    # "xduration":I
    .end local v9    # "xweight":F
    .end local v10    # "yduration":I
    .end local v11    # "yweight":F
    :cond_0
    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    goto :goto_0

    .line 700
    .restart local v9    # "xweight":F
    :cond_1
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    .prologue
    .line 402
    invoke-static {p0, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    move-result-object v0

    .line 403
    .local v0, "helper":Lcom/dodonew/online/widget/swipeback/ViewDragHelper;
    iget v1, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    .line 404
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    .prologue
    .line 388
    new-instance v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 856
    iput-boolean v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mReleaseInProgress:Z

    .line 857
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 858
    iput-boolean v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mReleaseInProgress:Z

    .line 860
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 863
    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setDragState(I)V

    .line 865
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 770
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 771
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 772
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 1491
    move v2, p1

    .line 1492
    .local v2, "clampedX":I
    move v3, p2

    .line 1493
    .local v3, "clampedY":I
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1494
    .local v6, "oldLeft":I
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1495
    .local v7, "oldTop":I
    if-eqz p3, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1497
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1499
    :cond_0
    if-eqz p4, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1501
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1504
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1505
    :cond_2
    sub-int v4, v2, v6

    .line 1506
    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    .line 1507
    .local v5, "clampedDy":I
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 1508
    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1510
    .end local v4    # "clampedDx":I
    .end local v5    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .prologue
    const/4 v9, 0x0

    .line 896
    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    .line 897
    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    .line 898
    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    .line 899
    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    .line 900
    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    .line 901
    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    .line 902
    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    .line 903
    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    .line 905
    .local v1, "edl":[I
    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 906
    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    iget-object v8, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    :cond_1
    iput-object v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    .line 916
    iput-object v4, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionY:[F

    .line 917
    iput-object v5, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionX:[F

    .line 918
    iput-object v6, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionY:[F

    .line 919
    iput-object v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    .line 920
    iput-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 921
    iput-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 923
    .end local v0    # "edip":[I
    .end local v1    # "edl":[I
    .end local v2    # "iit":[I
    .end local v3    # "imx":[F
    .end local v4    # "imy":[F
    .end local v5    # "lmx":[F
    .end local v6    # "lmy":[F
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .prologue
    const/4 v0, 0x0

    .line 669
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 670
    .local v10, "startLeft":I
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 671
    .local v6, "startTop":I
    sub-int v2, p1, v10

    .line 672
    .local v2, "dx":I
    sub-int v3, p2, v6

    .line 674
    .local v3, "dy":I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 676
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 677
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setDragState(I)V

    .line 685
    :goto_0
    return v0

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .line 682
    .local v9, "duration":I
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 684
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setDragState(I)V

    .line 685
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgeTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1564
    const/4 v0, 0x0

    .line 1566
    .local v0, "result":I
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 1567
    const/4 v0, 0x1

    .line 1568
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    .line 1569
    const/4 v0, 0x4

    .line 1570
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    .line 1571
    const/4 v0, 0x2

    .line 1572
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    .line 1573
    const/16 v0, 0x8

    .line 1575
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    .prologue
    .line 1480
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1481
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 1482
    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMaxVelocity:F

    .line 1481
    invoke-direct {p0, v2, v3, v4}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1484
    .local v0, "xvel":F
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 1485
    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMaxVelocity:F

    .line 1484
    invoke-direct {p0, v2, v3, v4}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1487
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1488
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 1313
    const/4 v0, 0x0

    .line 1314
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1315
    or-int/lit8 v0, v0, 0x1

    .line 1317
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1318
    or-int/lit8 v0, v0, 0x4

    .line 1320
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1321
    or-int/lit8 v0, v0, 0x2

    .line 1323
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1324
    or-int/lit8 v0, v0, 0x8

    .line 1327
    :cond_3
    if-eqz v0, :cond_4

    .line 1328
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1329
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1331
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 926
    invoke-direct {p0, p3}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 927
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 928
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 929
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->getEdgeTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 930
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mPointersDown:I

    .line 931
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 934
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    .line 935
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 936
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 937
    .local v2, "pointerId":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 938
    .local v3, "x":F
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 939
    .local v4, "y":F
    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 940
    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 942
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->cancel()V

    .line 598
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 599
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v6

    .line 600
    .local v6, "oldX":I
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v7

    .line 601
    .local v7, "oldY":I
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 602
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 603
    .local v2, "newX":I
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 604
    .local v3, "newY":I
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 606
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setDragState(I)V

    .line 607
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 1009
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v9, p1

    .line 1010
    check-cast v9, Landroid/view/ViewGroup;

    .line 1011
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 1012
    .local v11, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 1013
    .local v12, "scrollY":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 1016
    .local v8, "count":I
    add-int/lit8 v10, v8, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 1019
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1020
    .local v2, "child":Landroid/view/View;
    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p5, v11

    .line 1021
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_0

    add-int v1, p6, v12

    .line 1022
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p6, v12

    .line 1023
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x1

    add-int v1, p5, v11

    .line 1024
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v6, v1, v4

    add-int v1, p6, v12

    .line 1025
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v7, v1, v4

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 1024
    invoke-virtual/range {v1 .. v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    const/4 v1, 0x1

    .line 1032
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :goto_1
    return v1

    .line 1016
    .restart local v2    # "child":Landroid/view/View;
    .restart local v8    # "count":I
    .restart local v9    # "group":Landroid/view/ViewGroup;
    .restart local v10    # "i":I
    .restart local v11    # "scrollX":I
    .restart local v12    # "scrollY":I
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1031
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v0, p3

    neg-int v1, v0

    .line 1032
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v0, p4

    neg-int v1, v0

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 583
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 584
    invoke-direct {p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->clearMotionHistory()V

    .line 586
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 590
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    iput-object p1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 548
    iput p2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 549
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 550
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setDragState(I)V

    .line 551
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    .prologue
    .line 1394
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v2

    .line 1395
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1396
    invoke-virtual {p0, p1, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1397
    const/4 v2, 0x1

    .line 1400
    :goto_1
    return v2

    .line 1395
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1400
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkTouchSlop(II)Z
    .locals 9
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1422
    invoke-virtual {p0, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->isPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 1439
    :cond_0
    :goto_0
    return v4

    .line 1426
    :cond_1
    and-int/lit8 v6, p1, 0x1

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 1427
    .local v0, "checkHorizontal":Z
    :goto_1
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v1, v4

    .line 1429
    .local v1, "checkVertical":Z
    :goto_2
    iget-object v6, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionX:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, p2

    sub-float v2, v6, v7

    .line 1430
    .local v2, "dx":F
    iget-object v6, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionY:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, p2

    sub-float v3, v6, v7

    .line 1432
    .local v3, "dy":F
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1433
    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    iget v8, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_2
    move v0, v5

    .line 1426
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v5

    .line 1427
    goto :goto_2

    .line 1434
    .restart local v1    # "checkVertical":Z
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_4
    if-eqz v0, :cond_5

    .line 1435
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 1436
    :cond_5
    if-eqz v1, :cond_6

    .line 1437
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v5

    .line 1439
    goto :goto_0
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 811
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_5

    .line 812
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v6

    .line 813
    .local v6, "keepGoing":Z
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 814
    .local v2, "x":I
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 815
    .local v3, "y":I
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 816
    .local v4, "dx":I
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 818
    .local v5, "dy":I
    if-eqz v4, :cond_0

    .line 819
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 821
    :cond_0
    if-eqz v5, :cond_1

    .line 822
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 825
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 826
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 829
    :cond_3
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_4

    .line 833
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 834
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v6

    .line 837
    :cond_4
    if-nez v6, :cond_5

    .line 838
    if-eqz p1, :cond_6

    .line 839
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 846
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_5
    :goto_0
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_7

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 841
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v6    # "keepGoing":Z
    :cond_6
    invoke-virtual {p0, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setDragState(I)V

    goto :goto_0

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_7
    move v0, v7

    .line 846
    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1552
    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1553
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1554
    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1555
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 1556
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1560
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1553
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1560
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flingCapturedView(IIII)V
    .locals 9
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 792
    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 793
    invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    float-to-int v4, v4

    move v5, p1

    move v6, p3

    move v7, p2

    move v8, p4

    .line 791
    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 796
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setDragState(I)V

    .line 797
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    .prologue
    .line 1454
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    array-length v0, v2

    .line 1455
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1456
    invoke-virtual {p0, p1, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1457
    const/4 v2, 0x1

    .line 1460
    :goto_1
    return v2

    .line 1455
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1460
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isEdgeTouched(II)Z
    .locals 1
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1476
    invoke-virtual {p0, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 960
    iget v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mPointersDown:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 1537
    if-nez p1, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return v0

    .line 1540
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 1541
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1155
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1156
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1158
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->cancel()V

    .line 1164
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1165
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1167
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1169
    packed-switch v3, :pswitch_data_0

    .line 1310
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1171
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1172
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1173
    .local v18, "y":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1174
    .local v15, "pointerId":I
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1176
    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1182
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1185
    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1192
    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1193
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1194
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1196
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 1203
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1204
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1207
    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 1210
    .end local v7    # "edgesTouched":I
    .end local v16    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1224
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    .line 1226
    .local v12, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1227
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1228
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 1229
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 1231
    .local v11, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->dragTo(IIII)V

    .line 1233
    invoke-direct/range {p0 .. p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1236
    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1237
    .local v14, "pointerCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_5

    .line 1238
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1239
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1240
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1241
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    .line 1242
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    .line 1244
    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1256
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1250
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v15    # "pointerId":I
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_6
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1251
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1252
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1237
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1262
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "i":I
    .end local v14    # "pointerCount":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1263
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 1266
    const/4 v13, -0x1

    .line 1267
    .local v13, "newActivePointer":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1268
    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v14, :cond_a

    .line 1269
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1270
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 1268
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1275
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1276
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1277
    .restart local v18    # "y":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 1278
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1279
    move-object/from16 v0, p0

    iget v13, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 1284
    .end local v9    # "id":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    .line 1287
    invoke-direct/range {p0 .. p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1290
    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1295
    .end local v15    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1296
    invoke-direct/range {p0 .. p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1298
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1303
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1304
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1306
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 964
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 965
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    .line 966
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 967
    if-nez p1, :cond_0

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 971
    :cond_0
    return-void
.end method

.method public setEdgeSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 529
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mEdgeSize:I

    .line 530
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .prologue
    .line 506
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTrackingEdges:I

    .line 507
    return-void
.end method

.method public setMaxVelocity(F)V
    .locals 0
    .param p1, "maxVel"    # F

    .prologue
    .line 468
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMaxVelocity:F

    .line 469
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .prologue
    .line 457
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mMinVelocity:F

    .line 458
    return-void
.end method

.method public setSensitivity(Landroid/content/Context;F)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensitivity"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 444
    const/4 v2, 0x0

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 445
    .local v0, "s":F
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 446
    .local v1, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v4, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTouchSlop:I

    .line 447
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 654
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 655
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 653
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1046
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1047
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1049
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->cancel()V

    .line 1055
    :cond_0
    iget-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    .line 1056
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1058
    :cond_1
    iget-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1060
    packed-switch v0, :pswitch_data_0

    .line 1144
    :cond_2
    :goto_0
    :pswitch_0
    iget v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    :goto_1
    return v11

    .line 1062
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 1063
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 1064
    .local v10, "y":F
    const/4 v11, 0x0

    invoke-static {p1, v11}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1065
    .local v7, "pointerId":I
    invoke-direct {p0, v9, v10, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1067
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1070
    .local v8, "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_3

    iget v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 1071
    invoke-virtual {p0, v8, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1074
    :cond_3
    iget-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    aget v4, v11, v7

    .line 1075
    .local v4, "edgesTouched":I
    iget v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 1076
    iget-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    iget v12, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1082
    .end local v4    # "edgesTouched":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1083
    .restart local v7    # "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1084
    .restart local v9    # "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1086
    .restart local v10    # "y":F
    invoke-direct {p0, v9, v10, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1089
    iget v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    if-nez v11, :cond_4

    .line 1090
    iget-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialEdgeTouched:[I

    aget v4, v11, v7

    .line 1091
    .restart local v4    # "edgesTouched":I
    iget v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 1092
    iget-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    iget v12, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1094
    .end local v4    # "edgesTouched":I
    :cond_4
    iget v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 1096
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1097
    .restart local v8    # "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_2

    .line 1098
    invoke-virtual {p0, v8, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 1107
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1108
    .local v6, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_5

    .line 1109
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1110
    .restart local v7    # "pointerId":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1111
    .restart local v9    # "x":F
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1112
    .restart local v10    # "y":F
    iget-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    sub-float v2, v9, v11

    .line 1113
    .local v2, "dx":F
    iget-object v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mInitialMotionY:[F

    aget v11, v11, v7

    sub-float v3, v10, v11

    .line 1115
    .local v3, "dy":F
    invoke-direct {p0, v2, v3, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1116
    iget v11, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 1127
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v7    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_5
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1121
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v7    # "pointerId":I
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :cond_6
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1122
    .restart local v8    # "toCapture":Landroid/view/View;
    if-eqz v8, :cond_7

    invoke-direct {p0, v8, v2, v3}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1123
    invoke-virtual {p0, v8, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1108
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1132
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "i":I
    .end local v6    # "pointerCount":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1133
    .restart local v7    # "pointerId":I
    invoke-direct {p0, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1139
    .end local v7    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1144
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1060
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 628
    iput-object p1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 629
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 631
    invoke-direct {p0, p2, p3, v1, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 984
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 993
    :goto_0
    return v0

    .line 988
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    iput p2, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->mActivePointerId:I

    .line 990
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 993
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
