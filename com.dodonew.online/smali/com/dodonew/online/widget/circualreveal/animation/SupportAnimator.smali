.class public abstract Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;
.super Landroid/animation/Animator;
.source "SupportAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$SimpleAnimatorListener;,
        Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;
    }
.end annotation


# instance fields
.field mTarget:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;)V
    .locals 1
    .param p1, "target"    # Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract addListener(Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;)V
.end method

.method public abstract cancel()V
.end method

.method public end()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public abstract get()Ljava/lang/Object;
.end method

.method public abstract isNativeAnimator()Z
.end method

.method public abstract isRunning()Z
.end method

.method public reverse()Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    .line 118
    .local v0, "target":Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;->startReverseAnimation()Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;

    move-result-object v1

    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public setupStartValues()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public abstract start()V
.end method
