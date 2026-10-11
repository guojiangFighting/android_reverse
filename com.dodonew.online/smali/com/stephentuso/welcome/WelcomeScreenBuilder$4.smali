.class Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;
.super Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;
.source "WelcomeScreenBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stephentuso/welcome/WelcomeScreenBuilder;->parallaxPage(ILjava/lang/String;Ljava/lang/String;IFFLjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stephentuso/welcome/WelcomeScreenBuilder;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$descriptionTypefacePath:Ljava/lang/String;

.field final synthetic val$endParallaxFactor:F

.field final synthetic val$headerTypefacePath:Ljava/lang/String;

.field final synthetic val$resId:I

.field final synthetic val$startParallaxFactor:F

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;ILjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->this$0:Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    iput p2, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$resId:I

    iput-object p3, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$description:Ljava/lang/String;

    iput p5, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$startParallaxFactor:F

    iput p6, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$endParallaxFactor:F

    iput-object p7, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$headerTypefacePath:Ljava/lang/String;

    iput-object p8, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$descriptionTypefacePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected fragment()Landroid/support/v4/app/Fragment;
    .locals 8

    .prologue
    .line 466
    iget v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$resId:I

    iget-object v1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$description:Ljava/lang/String;

    iget v3, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$startParallaxFactor:F

    iget v4, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$endParallaxFactor:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$headerTypefacePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;->val$descriptionTypefacePath:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;FFZLjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;

    move-result-object v0

    return-object v0
.end method
