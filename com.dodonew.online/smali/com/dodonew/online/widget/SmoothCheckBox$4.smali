.class Lcom/dodonew/online/widget/SmoothCheckBox$4;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/SmoothCheckBox;->startCheckedAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/SmoothCheckBox;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/SmoothCheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/SmoothCheckBox;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$4;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 355
    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$4;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$1002(Lcom/dodonew/online/widget/SmoothCheckBox;F)F

    .line 356
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$4;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->postInvalidate()V

    .line 357
    return-void
.end method
