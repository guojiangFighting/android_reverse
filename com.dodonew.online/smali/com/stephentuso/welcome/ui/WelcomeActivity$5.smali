.class Lcom/stephentuso/welcome/ui/WelcomeActivity$5;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stephentuso/welcome/ui/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stephentuso/welcome/ui/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/stephentuso/welcome/ui/WelcomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stephentuso/welcome/ui/WelcomeActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity$5;->this$0:Lcom/stephentuso/welcome/ui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewHidden()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity$5;->this$0:Lcom/stephentuso/welcome/ui/WelcomeActivity;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->completeWelcomeScreen()V

    .line 95
    return-void
.end method
