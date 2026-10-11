.class Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$2;
.super Lcom/dodonew/online/widget/swipelayout/YoYo$EmptyAnimatorListener;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->onEnd(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

.field final synthetic val$callback:Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$2;->this$0:Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    iput-object p2, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$2;->val$callback:Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/swipelayout/YoYo$EmptyAnimatorListener;-><init>(Lcom/dodonew/online/widget/swipelayout/YoYo$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$2;->val$callback:Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;

    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;->call(Lcom/nineoldandroids/animation/Animator;)V

    return-void
.end method
