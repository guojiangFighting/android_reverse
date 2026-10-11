.class Lcom/stephentuso/welcome/WelcomeScreenBuilder$5;
.super Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;
.source "WelcomeScreenBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stephentuso/welcome/WelcomeScreenBuilder;->fullScreenParallaxImagePage(IIFF)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stephentuso/welcome/WelcomeScreenBuilder;

.field final synthetic val$endParallaxFactor:F

.field final synthetic val$resId:I

.field final synthetic val$startParallaxFactor:F


# direct methods
.method constructor <init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;IFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$5;->this$0:Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    iput p2, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$5;->val$resId:I

    iput p3, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$5;->val$startParallaxFactor:F

    iput p4, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$5;->val$endParallaxFactor:F

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected fragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 507
    iget v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$5;->val$resId:I

    iget v1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$5;->val$startParallaxFactor:F

    iget v2, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$5;->val$endParallaxFactor:F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->newInstance(IFFZ)Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;

    move-result-object v0

    return-object v0
.end method
