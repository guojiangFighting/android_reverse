.class Lcom/dodonew/online/util/AddShopAnim$1;
.super Ljava/lang/Object;
.source "AddShopAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/util/AddShopAnim;->setAnim(Landroid/view/View;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/util/AddShopAnim;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/dodonew/online/util/AddShopAnim;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/util/AddShopAnim;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dodonew/online/util/AddShopAnim$1;->this$0:Lcom/dodonew/online/util/AddShopAnim;

    iput-object p2, p0, Lcom/dodonew/online/util/AddShopAnim$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dodonew/online/util/AddShopAnim$1;->val$v:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/util/AddShopAnim$1;->this$0:Lcom/dodonew/online/util/AddShopAnim;

    invoke-static {v0}, Lcom/dodonew/online/util/AddShopAnim;->access$000(Lcom/dodonew/online/util/AddShopAnim;)Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/util/AddShopAnim$1;->this$0:Lcom/dodonew/online/util/AddShopAnim;

    invoke-static {v0}, Lcom/dodonew/online/util/AddShopAnim;->access$000(Lcom/dodonew/online/util/AddShopAnim;)Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;->onAnimEnd()V

    .line 119
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 107
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dodonew/online/util/AddShopAnim$1;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void
.end method
