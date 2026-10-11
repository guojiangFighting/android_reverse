.class public Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;
.super Ljava/lang/Object;
.source "RevealAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealInfo"
.end annotation


# instance fields
.field public final centerX:I

.field public final centerY:I

.field public final endRadius:F

.field public final startRadius:F

.field public final target:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIFFLjava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFF",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p5, "target":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->centerX:I

    .line 84
    iput p2, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->centerY:I

    .line 85
    iput p3, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->startRadius:F

    .line 86
    iput p4, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->endRadius:F

    .line 87
    iput-object p5, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->target:Ljava/lang/ref/WeakReference;

    .line 88
    return-void
.end method


# virtual methods
.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public hasTarget()Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;->getTarget()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
