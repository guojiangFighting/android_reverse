.class Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper$2;
.super Ljava/lang/Object;
.source "WelcomeScreenViewWrapper.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->showWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;


# direct methods
.method constructor <init>(Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper$2;->this$0:Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper$2;->this$0:Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->access$000(Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;F)V

    .line 125
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper$2;->this$0:Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->access$000(Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;F)V

    .line 120
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper$2;->this$0:Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;

    invoke-static {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->access$100(Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void
.end method
