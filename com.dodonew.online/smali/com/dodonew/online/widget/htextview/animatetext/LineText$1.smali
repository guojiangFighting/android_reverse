.class Lcom/dodonew/online/widget/htextview/animatetext/LineText$1;
.super Ljava/lang/Object;
.source "LineText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/htextview/animatetext/LineText;->animateStart(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/htextview/animatetext/LineText;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/htextview/animatetext/LineText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/htextview/animatetext/LineText;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/LineText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/LineText;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->progress:F

    .line 64
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/LineText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/LineText;

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->invalidate()V

    .line 65
    return-void
.end method
