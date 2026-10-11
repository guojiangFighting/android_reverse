.class Lcom/dodonew/online/ui/AppGuideActivity$1;
.super Ljava/lang/Object;
.source "AppGuideActivity.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/WelcomeActivity$OnCompleteWelcomeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/AppGuideActivity;->onCompleteWelcomeListener()Lcom/stephentuso/welcome/ui/WelcomeActivity$OnCompleteWelcomeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/AppGuideActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/AppGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/AppGuideActivity;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dodonew/online/ui/AppGuideActivity$1;->this$0:Lcom/dodonew/online/ui/AppGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/ui/AppGuideActivity$1;->this$0:Lcom/dodonew/online/ui/AppGuideActivity;

    const-class v2, Lcom/dodonew/online/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/ui/AppGuideActivity$1;->this$0:Lcom/dodonew/online/ui/AppGuideActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/dodonew/online/util/Tools;->saveGuide(Landroid/content/Context;Z)V

    .line 38
    iget-object v1, p0, Lcom/dodonew/online/ui/AppGuideActivity$1;->this$0:Lcom/dodonew/online/ui/AppGuideActivity;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/ui/AppGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method
