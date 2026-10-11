.class public interface abstract Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
.super Ljava/lang/Object;
.source "RevealAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealRadius;,
        Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;,
        Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;
    }
.end annotation


# static fields
.field public static final CLIP_RADIUS:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealRadius;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealRadius;

    invoke-direct {v0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealRadius;-><init>()V

    sput-object v0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;->CLIP_RADIUS:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealRadius;

    return-void
.end method


# virtual methods
.method public abstract attachRevealInfo(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;)V
.end method

.method public abstract getRevealRadius()F
.end method

.method public abstract invalidate(Landroid/graphics/Rect;)V
.end method

.method public abstract onRevealAnimationCancel()V
.end method

.method public abstract onRevealAnimationEnd()V
.end method

.method public abstract onRevealAnimationStart()V
.end method

.method public abstract setRevealRadius(F)V
.end method

.method public abstract startReverseAnimation()Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;
.end method
