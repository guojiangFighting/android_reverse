.class Lcom/dodonew/online/widget/likeanimation/LikeButtonView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LikeButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/likeanimation/LikeButtonView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView$1;->this$0:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView$1;->this$0:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    invoke-static {v0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->access$000(Lcom/dodonew/online/widget/likeanimation/LikeButtonView;)Lcom/dodonew/online/widget/likeanimation/CircleView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/likeanimation/CircleView;->setInnerCircleRadiusProgress(F)V

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView$1;->this$0:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    invoke-static {v0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->access$000(Lcom/dodonew/online/widget/likeanimation/LikeButtonView;)Lcom/dodonew/online/widget/likeanimation/CircleView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/likeanimation/CircleView;->setOuterCircleRadiusProgress(F)V

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView$1;->this$0:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    invoke-static {v0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->access$100(Lcom/dodonew/online/widget/likeanimation/LikeButtonView;)Lcom/dodonew/online/widget/likeanimation/DotsView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/likeanimation/DotsView;->setCurrentProgress(F)V

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView$1;->this$0:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    invoke-static {v0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->access$200(Lcom/dodonew/online/widget/likeanimation/LikeButtonView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView$1;->this$0:Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    invoke-static {v0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->access$200(Lcom/dodonew/online/widget/likeanimation/LikeButtonView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 140
    return-void
.end method
