.class Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl$1;
.super Ljava/lang/Object;
.source "SupportAnimatorImpl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->addListener(Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;

.field final synthetic val$listener:Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl$1;->this$0:Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;

    iput-object p2, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl$1;->val$listener:Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl$1;->val$listener:Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;

    invoke-interface {v0}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;->onAnimationCancel()V

    .line 82
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl$1;->val$listener:Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;

    invoke-interface {v0}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;->onAnimationEnd()V

    .line 77
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl$1;->val$listener:Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;

    invoke-interface {v0}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;->onAnimationRepeat()V

    .line 87
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl$1;->val$listener:Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;

    invoke-interface {v0}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;->onAnimationStart()V

    .line 72
    return-void
.end method
