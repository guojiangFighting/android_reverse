.class Lcom/dodonew/online/widget/SmoothCheckBox$5;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/SmoothCheckBox;->startUnCheckedAnimation()V
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
    .line 368
    iput-object p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$5;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 371
    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$5;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$502(Lcom/dodonew/online/widget/SmoothCheckBox;F)F

    .line 372
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$5;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$5;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-static {v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$800(Lcom/dodonew/online/widget/SmoothCheckBox;)I

    move-result v1

    invoke-static {}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$1100()I

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox$5;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-static {v3}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$500(Lcom/dodonew/online/widget/SmoothCheckBox;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$900(IIF)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$602(Lcom/dodonew/online/widget/SmoothCheckBox;I)I

    .line 373
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$5;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->postInvalidate()V

    .line 374
    return-void
.end method
