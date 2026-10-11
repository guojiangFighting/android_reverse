.class Lcom/dodonew/online/widget/htextview/animatetext/FallText$1;
.super Ljava/lang/Object;
.source "FallText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/htextview/animatetext/FallText;->animateStart(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/htextview/animatetext/FallText;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/htextview/animatetext/FallText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/htextview/animatetext/FallText;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/FallText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/FallText;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->access$002(Lcom/dodonew/online/widget/htextview/animatetext/FallText;F)F

    .line 42
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/FallText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/FallText;

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->invalidate()V

    .line 43
    return-void
.end method
