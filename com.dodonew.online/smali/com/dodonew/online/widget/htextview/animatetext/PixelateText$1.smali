.class Lcom/dodonew/online/widget/htextview/animatetext/PixelateText$1;
.super Ljava/lang/Object;
.source "PixelateText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->animateText(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->progress:F

    .line 310
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;

    iget-object v0, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->invalidate()V

    .line 311
    return-void
.end method
