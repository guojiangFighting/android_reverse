.class public Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RevealFrameLayout.java"

# interfaces
.implements Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;


# instance fields
.field private mRadius:F

.field private mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

.field private mRevealPath:Landroid/graphics/Path;

.field private mRunning:Z

.field private final mTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mTargetBounds:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    .line 35
    return-void
.end method


# virtual methods
.method public attachRevealInfo(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    .line 81
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 98
    iget-boolean v2, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRunning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->getTarget()Landroid/view/View;

    move-result-object v2

    if-ne p2, v2, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 101
    .local v1, "state":I
    iget-object v2, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 102
    iget-object v2, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    iget v3, v3, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->centerX:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    iget v4, v4, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->centerY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRadius:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 104
    iget-object v2, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 108
    .local v0, "isInvalided":Z
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 113
    .end local v0    # "isInvalided":Z
    .end local v1    # "state":I
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public getRevealRadius()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRadius:F

    return v0
.end method

.method public onRevealAnimationCancel()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->onRevealAnimationEnd()V

    .line 51
    return-void
.end method

.method public onRevealAnimationEnd()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRunning:Z

    .line 45
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 46
    return-void
.end method

.method public onRevealAnimationStart()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRunning:Z

    .line 40
    return-void
.end method

.method public setRevealRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRadius:F

    .line 61
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->getTarget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 62
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 63
    return-void
.end method

.method public startReverseAnimation()Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->hasTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRunning:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->getTarget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    iget v1, v1, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->centerX:I

    iget-object v2, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    iget v2, v2, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->centerY:I

    iget-object v3, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    iget v3, v3, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->endRadius:F

    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/RevealFrameLayout;->mRevealInfo:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    iget v4, v4, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->startRadius:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dodonew/online/widget/circualreveal/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
