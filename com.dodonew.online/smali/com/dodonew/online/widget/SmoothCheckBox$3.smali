.class Lcom/dodonew/online/widget/SmoothCheckBox$3;
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
    .line 339
    iput-object p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$3;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$3;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$502(Lcom/dodonew/online/widget/SmoothCheckBox;F)F

    .line 343
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$3;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$3;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-static {v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$700(Lcom/dodonew/online/widget/SmoothCheckBox;)I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox$3;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-static {v2}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$800(Lcom/dodonew/online/widget/SmoothCheckBox;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox$3;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-static {v4}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$500(Lcom/dodonew/online/widget/SmoothCheckBox;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$900(IIF)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$602(Lcom/dodonew/online/widget/SmoothCheckBox;I)I

    .line 344
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$3;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->postInvalidate()V

    .line 345
    return-void
.end method
