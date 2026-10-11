.class final Lcom/dodonew/online/widget/likeanimation/DotsView$1;
.super Landroid/util/Property;
.source "DotsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/likeanimation/DotsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/dodonew/online/widget/likeanimation/DotsView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 173
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/dodonew/online/widget/likeanimation/DotsView;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/dodonew/online/widget/likeanimation/DotsView;

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/dodonew/online/widget/likeanimation/DotsView;->getCurrentProgress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    check-cast p1, Lcom/dodonew/online/widget/likeanimation/DotsView;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/likeanimation/DotsView$1;->get(Lcom/dodonew/online/widget/likeanimation/DotsView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/dodonew/online/widget/likeanimation/DotsView;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcom/dodonew/online/widget/likeanimation/DotsView;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 181
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dodonew/online/widget/likeanimation/DotsView;->setCurrentProgress(F)V

    .line 182
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Lcom/dodonew/online/widget/likeanimation/DotsView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/widget/likeanimation/DotsView$1;->set(Lcom/dodonew/online/widget/likeanimation/DotsView;Ljava/lang/Float;)V

    return-void
.end method
