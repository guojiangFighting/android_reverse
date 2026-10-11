.class final Lcom/dodonew/online/widget/likeanimation/CircleView$2;
.super Landroid/util/Property;
.source "CircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/likeanimation/CircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/dodonew/online/widget/likeanimation/CircleView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 116
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/dodonew/online/widget/likeanimation/CircleView;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/dodonew/online/widget/likeanimation/CircleView;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/dodonew/online/widget/likeanimation/CircleView;->getOuterCircleRadiusProgress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    check-cast p1, Lcom/dodonew/online/widget/likeanimation/CircleView;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/likeanimation/CircleView$2;->get(Lcom/dodonew/online/widget/likeanimation/CircleView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/dodonew/online/widget/likeanimation/CircleView;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcom/dodonew/online/widget/likeanimation/CircleView;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 124
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->setOuterCircleRadiusProgress(F)V

    .line 125
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Lcom/dodonew/online/widget/likeanimation/CircleView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/widget/likeanimation/CircleView$2;->set(Lcom/dodonew/online/widget/likeanimation/CircleView;Ljava/lang/Float;)V

    return-void
.end method
