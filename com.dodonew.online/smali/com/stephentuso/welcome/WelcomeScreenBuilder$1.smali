.class Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;
.super Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;
.source "WelcomeScreenBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stephentuso/welcome/WelcomeScreenBuilder;->basicPage(ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stephentuso/welcome/WelcomeScreenBuilder;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$descriptionTypefacePath:Ljava/lang/String;

.field final synthetic val$drawableId:I

.field final synthetic val$headerTypefacePath:Ljava/lang/String;

.field final synthetic val$showParallaxAnim:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->this$0:Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    iput p2, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$drawableId:I

    iput-object p3, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$description:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$showParallaxAnim:Z

    iput-object p6, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$headerTypefacePath:Ljava/lang/String;

    iput-object p7, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$descriptionTypefacePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public fragment()Landroid/support/v4/app/Fragment;
    .locals 6

    .prologue
    .line 312
    iget v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$drawableId:I

    iget-object v1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$description:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$showParallaxAnim:Z

    iget-object v4, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$headerTypefacePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;->val$descriptionTypefacePath:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;

    move-result-object v0

    return-object v0
.end method
