.class Lcom/stephentuso/welcome/ui/WelcomeActivity$3;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 72
    iput-object p1, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity$3;->this$0:Lcom/stephentuso/welcome/ui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity$3;->this$0:Lcom/stephentuso/welcome/ui/WelcomeActivity;

    invoke-static {v0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->access$100(Lcom/stephentuso/welcome/ui/WelcomeActivity;)Z

    .line 76
    return-void
.end method
