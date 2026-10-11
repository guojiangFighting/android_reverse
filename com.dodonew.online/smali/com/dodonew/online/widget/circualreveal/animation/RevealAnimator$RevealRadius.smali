.class public Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealRadius;
.super Landroid/util/Property;
.source "RevealAnimator.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealRadius"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 136
    const-class v0, Ljava/lang/Float;

    const-string v1, "revealRadius"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method public get(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    .prologue
    .line 146
    invoke-interface {p1}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;->getRevealRadius()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    check-cast p1, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealRadius;->get(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 141
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;->setRevealRadius(F)V

    .line 142
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 132
    check-cast p1, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealRadius;->set(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;Ljava/lang/Float;)V

    return-void
.end method
