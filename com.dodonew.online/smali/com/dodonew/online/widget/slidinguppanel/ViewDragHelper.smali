.class public Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;
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

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

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

.field private final mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

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
    .line 327
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "cb"    # Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v2, -0x1

    iput v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 334
    new-instance v2, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$2;-><init>(Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;)V

    iput-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 405
    if-nez p2, :cond_0

    .line 406
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_0
    if-nez p4, :cond_1

    .line 409
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_1
    iput-object p2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 413
    iput-object p4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    .line 415
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 416
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 417
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    .line 419
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    .line 420
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    .line 421
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    .line 422
    if-eqz p3, :cond_2

    .end local p3    # "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-static {p1, p3}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 423
    return-void

    .line 422
    .restart local p3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    sget-object p3, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .prologue
    const/4 v2, 0x0

    .line 1267
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1268
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1270
    .local v1, "absODelta":F
    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return v2

    .line 1276
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1277
    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    goto :goto_0

    .line 1280
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

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

    .line 1294
    if-nez p1, :cond_1

    move v2, v3

    .line 1307
    :cond_0
    :goto_0
    return v2

    .line 1297
    :cond_1
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 1298
    .local v0, "checkHorizontal":Z
    :goto_1
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    .line 1300
    .local v1, "checkVertical":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1301
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

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

    .line 1297
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v3

    .line 1298
    goto :goto_2

    .line 1302
    .restart local v1    # "checkVertical":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 1303
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1304
    :cond_5
    if-eqz v1, :cond_6

    .line 1305
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    .line 1307
    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    .line 698
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 699
    .local v0, "absValue":F
    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    .line 701
    .end local p3    # "absMax":F
    :cond_0
    :goto_0
    return p3

    .line 700
    .restart local p3    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 701
    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    .line 681
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 682
    .local v0, "absValue":I
    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    .line 684
    .end local p3    # "absMax":I
    :cond_0
    :goto_0
    return p3

    .line 683
    .restart local p3    # "absMax":I
    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 684
    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 811
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 822
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 815
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 816
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 817
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 818
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 819
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 820
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 821
    iput v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 825
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 829
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 830
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 831
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 832
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    .line 833
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 834
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 835
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 649
    if-nez p1, :cond_0

    .line 650
    const/4 v6, 0x0

    .line 667
    :goto_0
    return v6

    .line 653
    :cond_0
    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 654
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 655
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 656
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    .line 657
    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 660
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 661
    if-lez p2, :cond_1

    .line 662
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .line 667
    .local v2, "duration":I
    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 664
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 665
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
    .line 628
    iget v12, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 629
    iget v12, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 630
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 631
    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 632
    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 633
    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 634
    .local v5, "absYVel":I
    add-int v7, v4, v5

    .line 635
    .local v7, "addedVel":I
    add-int v6, v2, v3

    .line 637
    .local v6, "addedDistance":I
    if-eqz p4, :cond_0

    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    .line 639
    .local v9, "xweight":F
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 642
    .local v11, "yweight":F
    :goto_1
    iget-object v12, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    .line 643
    .local v8, "xduration":I
    iget-object v12, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    .line 645
    .local v10, "yduration":I
    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    .line 637
    .end local v8    # "xduration":I
    .end local v9    # "xweight":F
    .end local v10    # "yduration":I
    .end local v11    # "yweight":F
    :cond_0
    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    goto :goto_0

    .line 639
    .restart local v9    # "xweight":F
    :cond_1
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLandroid/view/animation/Interpolator;Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "cb"    # Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    .prologue
    .line 389
    invoke-static {p0, p2, p3}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    move-result-object v0

    .line 390
    .local v0, "helper":Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;
    iget v1, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    .line 391
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    .prologue
    .line 373
    invoke-static {p0, p2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    move-result-object v0

    .line 374
    .local v0, "helper":Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;
    iget v1, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    .line 375
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "cb"    # Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    .prologue
    .line 360
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    .prologue
    .line 348
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 800
    iput-boolean v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mReleaseInProgress:Z

    .line 801
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 802
    iput-boolean v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mReleaseInProgress:Z

    .line 804
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 806
    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->setDragState(I)V

    .line 808
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 705
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 706
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 707
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
    .line 1419
    move v2, p1

    .line 1420
    .local v2, "clampedX":I
    move v3, p2

    .line 1421
    .local v3, "clampedY":I
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1422
    .local v6, "oldLeft":I
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1423
    .local v7, "oldTop":I
    if-eqz p3, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1425
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1427
    :cond_0
    if-eqz p4, :cond_1

    .line 1428
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1429
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1432
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1433
    :cond_2
    sub-int v4, v2, v6

    .line 1434
    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    .line 1435
    .local v5, "clampedDy":I
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1438
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

    .line 839
    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    .line 840
    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    .line 841
    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    .line 842
    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    .line 843
    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    .line 844
    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    .line 845
    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    .line 846
    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    .line 848
    .local v1, "edl":[I
    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 849
    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    :cond_1
    iput-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    .line 859
    iput-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    .line 860
    iput-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    .line 861
    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    .line 862
    iput-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 863
    iput-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 864
    iput-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 866
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

    .line 608
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 609
    .local v10, "startLeft":I
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 610
    .local v6, "startTop":I
    sub-int v2, p1, v10

    .line 611
    .local v2, "dx":I
    sub-int v3, p2, v6

    .line 613
    .local v3, "dy":I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 615
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 616
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->setDragState(I)V

    .line 624
    :goto_0
    return v0

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .line 621
    .local v9, "duration":I
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 623
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->setDragState(I)V

    .line 624
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1493
    const/4 v0, 0x0

    .line 1495
    .local v0, "result":I
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 1496
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1497
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1498
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1500
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    .prologue
    .line 1408
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1409
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 1410
    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    .line 1409
    invoke-direct {p0, v2, v3, v4}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1412
    .local v0, "xvel":F
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 1413
    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    .line 1412
    invoke-direct {p0, v2, v3, v4}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1415
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1416
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 1246
    const/4 v0, 0x0

    .line 1247
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    or-int/lit8 v0, v0, 0x1

    .line 1250
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    or-int/lit8 v0, v0, 0x4

    .line 1253
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1254
    or-int/lit8 v0, v0, 0x2

    .line 1256
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1257
    or-int/lit8 v0, v0, 0x8

    .line 1260
    :cond_3
    if-eqz v0, :cond_4

    .line 1261
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1262
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1264
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 869
    invoke-direct {p0, p3}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 870
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 871
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 872
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 873
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mPointersDown:I

    .line 874
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 877
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    .line 878
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 879
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 880
    .local v2, "pointerId":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 881
    .local v3, "x":F
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 883
    .local v4, "y":F
    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    array-length v5, v5

    if-le v5, v2, :cond_0

    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    array-length v5, v5

    if-le v5, v2, :cond_0

    .line 885
    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 886
    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 878
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->cancel()V

    .line 544
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v6

    .line 546
    .local v6, "oldX":I
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v7

    .line 547
    .local v7, "oldY":I
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 548
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 549
    .local v2, "newX":I
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 550
    .local v3, "newY":I
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 552
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->setDragState(I)V

    .line 553
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
    .line 953
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v9, p1

    .line 954
    check-cast v9, Landroid/view/ViewGroup;

    .line 955
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 956
    .local v11, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 957
    .local v12, "scrollY":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 959
    .local v8, "count":I
    add-int/lit8 v10, v8, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 962
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 963
    .local v2, "child":Landroid/view/View;
    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_0

    add-int v1, p6, v12

    .line 964
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x1

    add-int v1, p5, v11

    .line 965
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v6, v1, v4

    add-int v1, p6, v12

    .line 966
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v7, v1, v4

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 965
    invoke-virtual/range {v1 .. v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    const/4 v1, 0x1

    .line 973
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :goto_1
    return v1

    .line 959
    .restart local v2    # "child":Landroid/view/View;
    .restart local v8    # "count":I
    .restart local v9    # "group":Landroid/view/ViewGroup;
    .restart local v10    # "i":I
    .restart local v11    # "scrollX":I
    .restart local v12    # "scrollY":I
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 972
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

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v0, p4

    neg-int v1, v0

    .line 973
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
    .line 529
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 530
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->clearMotionHistory()V

    .line 532
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 536
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 497
    iput p2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 498
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 499
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->setDragState(I)V

    .line 500
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    .prologue
    .line 1325
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v2

    .line 1326
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1327
    invoke-virtual {p0, p1, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1328
    const/4 v2, 0x1

    .line 1331
    :goto_1
    return v2

    .line 1326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1331
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

    .line 1350
    invoke-virtual {p0, p2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->isPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 1367
    :cond_0
    :goto_0
    return v4

    .line 1354
    :cond_1
    and-int/lit8 v6, p1, 0x1

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 1355
    .local v0, "checkHorizontal":Z
    :goto_1
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v1, v4

    .line 1357
    .local v1, "checkVertical":Z
    :goto_2
    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, p2

    sub-float v2, v6, v7

    .line 1358
    .local v2, "dx":F
    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, p2

    sub-float v3, v6, v7

    .line 1360
    .local v3, "dy":F
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1361
    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    iget v8, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

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

    .line 1354
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v5

    .line 1355
    goto :goto_2

    .line 1362
    .restart local v1    # "checkVertical":Z
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_4
    if-eqz v0, :cond_5

    .line 1363
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 1364
    :cond_5
    if-eqz v1, :cond_6

    .line 1365
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v5

    .line 1367
    goto :goto_0
.end method

.method public continueSettling(Z)Z
    .locals 10
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 747
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return v8

    .line 750
    :cond_0
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne v0, v9, :cond_7

    .line 751
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v6

    .line 752
    .local v6, "keepGoing":Z
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 753
    .local v2, "x":I
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 754
    .local v3, "y":I
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 755
    .local v4, "dx":I
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 757
    .local v5, "dy":I
    if-nez v6, :cond_1

    if-eqz v5, :cond_1

    .line 759
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTop(I)V

    move v8, v7

    .line 760
    goto :goto_0

    .line 763
    :cond_1
    if-eqz v4, :cond_2

    .line 764
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 766
    :cond_2
    if-eqz v5, :cond_3

    .line 767
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 770
    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    .line 771
    :cond_4
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 774
    :cond_5
    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_6

    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_6

    .line 777
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 778
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v6

    .line 781
    :cond_6
    if-nez v6, :cond_7

    .line 782
    if-eqz p1, :cond_8

    .line 783
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 790
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_7
    :goto_1
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne v0, v9, :cond_9

    move v0, v7

    :goto_2
    move v8, v0

    goto :goto_0

    .line 785
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v6    # "keepGoing":Z
    :cond_8
    invoke-virtual {p0, v8}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->setDragState(I)V

    goto :goto_1

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_9
    move v0, v8

    .line 790
    goto :goto_2
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1481
    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1482
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1483
    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1484
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 1485
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1489
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1482
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1489
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
    .line 721
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 727
    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 728
    invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    float-to-int v4, v4

    move v5, p1

    move v6, p3

    move v7, p2

    move v8, p4

    .line 726
    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 731
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->setDragState(I)V

    .line 732
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1404
    iget v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    .prologue
    .line 1380
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v2

    .line 1381
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1382
    invoke-virtual {p0, p1, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1383
    const/4 v2, 0x1

    .line 1386
    :goto_1
    return v2

    .line 1381
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1386
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isEdgeTouched(II)Z
    .locals 1
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1400
    invoke-virtual {p0, p2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

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

    .line 905
    iget v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mPointersDown:I

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

    .line 1463
    if-nez p1, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return v0

    .line 1466
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 1467
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 1468
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 1469
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
    .line 1094
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1095
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1097
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->cancel()V

    .line 1103
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1104
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1106
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1108
    packed-switch v3, :pswitch_data_0

    .line 1243
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1110
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1111
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1112
    .local v18, "y":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1113
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

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1115
    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1120
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1123
    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1130
    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1131
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1132
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1134
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 1140
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1141
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1144
    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 1147
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

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1158
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    .line 1160
    .local v12, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1161
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1162
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 1163
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 1165
    .local v11, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->dragTo(IIII)V

    .line 1167
    invoke-direct/range {p0 .. p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1170
    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1171
    .local v14, "pointerCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_5

    .line 1172
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1174
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1175
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1176
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    .line 1177
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    .line 1179
    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1191
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1185
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v15    # "pointerId":I
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v20, v0

    aget v20, v20, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1186
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1187
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1171
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1197
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

    .line 1198
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 1200
    const/4 v13, -0x1

    .line 1201
    .local v13, "newActivePointer":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1202
    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v14, :cond_a

    .line 1203
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1204
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 1202
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1209
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1210
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1211
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

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 1212
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1213
    move-object/from16 v0, p0

    iget v13, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 1218
    .end local v9    # "id":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    .line 1220
    invoke-direct/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1223
    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1228
    .end local v15    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1229
    invoke-direct/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1231
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1236
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1237
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1239
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1108
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
    .line 909
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 910
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    .line 911
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 912
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    if-nez v0, :cond_0

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 916
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .prologue
    .line 468
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    .line 469
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .prologue
    .line 432
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    .line 433
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 594
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 595
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 593
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 984
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 985
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 987
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->cancel()V

    .line 993
    :cond_0
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    .line 994
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 996
    :cond_1
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 998
    packed-switch v0, :pswitch_data_0

    .line 1084
    :cond_2
    :goto_0
    :pswitch_0
    iget v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v11, 0x1

    :goto_1
    return v11

    .line 1000
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 1001
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 1002
    .local v10, "y":F
    const/4 v11, 0x0

    invoke-static {p1, v11}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1003
    .local v7, "pointerId":I
    invoke-direct {p0, v9, v10, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1005
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1008
    .local v8, "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_3

    iget v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 1009
    invoke-virtual {p0, v8, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1012
    :cond_3
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 1013
    .local v4, "edgesTouched":I
    iget v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 1014
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    iget v12, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1020
    .end local v4    # "edgesTouched":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1021
    .restart local v7    # "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1022
    .restart local v9    # "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1024
    .restart local v10    # "y":F
    invoke-direct {p0, v9, v10, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1027
    iget v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    if-nez v11, :cond_4

    .line 1028
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 1029
    .restart local v4    # "edgesTouched":I
    iget v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 1030
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    iget v12, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1032
    .end local v4    # "edgesTouched":I
    :cond_4
    iget v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 1034
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1035
    .restart local v8    # "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_2

    .line 1036
    invoke-virtual {p0, v8, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 1044
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1045
    .local v6, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_7

    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    if-eqz v11, :cond_7

    .line 1046
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1047
    .restart local v7    # "pointerId":I
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    array-length v11, v11

    if-ge v7, v11, :cond_5

    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    array-length v11, v11

    if-lt v7, v11, :cond_6

    .line 1045
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1050
    :cond_6
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1051
    .restart local v9    # "x":F
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1052
    .restart local v10    # "y":F
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    sub-float v2, v9, v11

    .line 1053
    .local v2, "dx":F
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    aget v11, v11, v7

    sub-float v3, v10, v11

    .line 1055
    .local v3, "dy":F
    invoke-direct {p0, v2, v3, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1056
    iget v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 1067
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v7    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1061
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v7    # "pointerId":I
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :cond_8
    iget-object v11, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    float-to-int v11, v11

    iget-object v12, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    aget v12, v12, v7

    float-to-int v12, v12

    invoke-virtual {p0, v11, v12}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1062
    .restart local v8    # "toCapture":Landroid/view/View;
    if-eqz v8, :cond_5

    invoke-direct {p0, v8, v2, v3}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1063
    invoke-virtual {p0, v8, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_3

    .line 1072
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

    .line 1073
    .restart local v7    # "pointerId":I
    invoke-direct {p0, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1079
    .end local v7    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1084
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 998
    nop

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

    .line 570
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 571
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 573
    invoke-direct {p0, p2, p3, v1, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 928
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 937
    :goto_0
    return v0

    .line 932
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mCallback:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    iput p2, p0, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 937
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
