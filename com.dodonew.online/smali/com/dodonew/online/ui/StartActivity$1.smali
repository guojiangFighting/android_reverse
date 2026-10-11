.class Lcom/dodonew/online/ui/StartActivity$1;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/StartActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/StartActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/StartActivity;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dodonew/online/ui/StartActivity$1;->this$0:Lcom/dodonew/online/ui/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/ui/StartActivity$1;->this$0:Lcom/dodonew/online/ui/StartActivity;

    iget-object v0, v0, Lcom/dodonew/online/ui/StartActivity;->pageToWelcome:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/dodonew/online/ui/StartActivity$1;->this$0:Lcom/dodonew/online/ui/StartActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/dodonew/online/ui/StartActivity;->pageToWelcome:Ljava/lang/Boolean;

    .line 49
    iget-object v0, p0, Lcom/dodonew/online/ui/StartActivity$1;->this$0:Lcom/dodonew/online/ui/StartActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/StartActivity;->access$000(Lcom/dodonew/online/ui/StartActivity;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 54
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 57
    return-void
.end method
