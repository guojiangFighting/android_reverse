.class Lcom/stephentuso/welcome/WelcomeScreenBuilder$3;
.super Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;
.source "WelcomeScreenBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stephentuso/welcome/WelcomeScreenBuilder;->ImagePage(IIZ)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stephentuso/welcome/WelcomeScreenBuilder;

.field final synthetic val$resId:I

.field final synthetic val$showParallaxAnim:Z


# direct methods
.method constructor <init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$3;->this$0:Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    iput p2, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$3;->val$resId:I

    iput-boolean p3, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$3;->val$showParallaxAnim:Z

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public fragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$3;->val$resId:I

    iget-boolean v1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$3;->val$showParallaxAnim:Z

    invoke-static {v0, v1}, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->newInstance(IZ)Lcom/stephentuso/welcome/ui/fragments/ImageFragment;

    move-result-object v0

    return-object v0
.end method
