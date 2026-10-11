.class public Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RevealAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealFinishedIceCreamSandwich"
.end annotation


# instance fields
.field mFeaturedLayerType:I

.field mLayerType:I

.field mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;I)V
    .locals 1
    .param p1, "target"    # Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
    .param p2, "layerType"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    .line 106
    check-cast p1, Landroid/view/View;

    .end local p1    # "target":Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mLayerType:I

    .line 107
    iput p2, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mFeaturedLayerType:I

    .line 108
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    .local v0, "target":Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
    move-object v1, v0

    .line 120
    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mLayerType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 121
    invoke-interface {v0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;->onRevealAnimationCancel()V

    .line 122
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    .local v0, "target":Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
    move-object v1, v0

    .line 127
    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mLayerType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 128
    invoke-interface {v0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;->onRevealAnimationEnd()V

    .line 129
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    .local v0, "target":Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
    move-object v1, v0

    .line 113
    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mFeaturedLayerType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 114
    invoke-interface {v0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;->onRevealAnimationStart()V

    .line 115
    return-void
.end method
