.class Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;
.super Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;
.source "WelcomeScreenBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stephentuso/welcome/WelcomeScreenBuilder;->titlePage(ILjava/lang/String;IZLjava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stephentuso/welcome/WelcomeScreenBuilder;

.field final synthetic val$resId:I

.field final synthetic val$showParallaxAnim:Z

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$titleTypefacePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;->this$0:Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    iput p2, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;->val$resId:I

    iput-object p3, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;->val$title:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;->val$showParallaxAnim:Z

    iput-object p5, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;->val$titleTypefacePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public fragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 381
    iget v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;->val$resId:I

    iget-object v1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;->val$title:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;->val$showParallaxAnim:Z

    iget-object v3, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;->val$titleTypefacePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->newInstance(ILjava/lang/String;ZLjava/lang/String;)Lcom/stephentuso/welcome/ui/fragments/TitleFragment;

    move-result-object v0

    return-object v0
.end method
