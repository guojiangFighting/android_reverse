.class public Lcom/dodonew/online/ui/StartActivity;
.super Lcom/dodonew/online/base/BasicActivity;
.source "StartActivity.java"


# instance fields
.field flat:Z

.field public pageToWelcome:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dodonew/online/base/BasicActivity;-><init>()V

    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/StartActivity;->pageToWelcome:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/StartActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dodonew/online/ui/StartActivity;->redirectTo()V

    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 35
    const v2, 0x7f030047

    const/4 v3, 0x0

    .line 36
    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, "welcome_view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/StartActivity;->setContentView(Landroid/view/View;)V

    .line 39
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 41
    .local v0, "alphaAnimation_welcome":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 42
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    new-instance v2, Lcom/dodonew/online/ui/StartActivity$1;

    invoke-direct {v2, p0}, Lcom/dodonew/online/ui/StartActivity$1;-><init>(Lcom/dodonew/online/ui/StartActivity;)V

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 60
    return-void
.end method

.method private redirectTo()V
    .locals 2

    .prologue
    .line 66
    invoke-static {p0}, Lcom/dodonew/online/util/Tools;->getFlat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/ui/StartActivity;->flat:Z

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/dodonew/online/ui/StartActivity;->flat:Z

    if-eqz v1, :cond_0

    .line 69
    const-class v1, Lcom/dodonew/online/ui/AppGuideActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    :goto_0
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/dodonew/online/ui/StartActivity;->finish()V

    .line 77
    return-void

    .line 72
    :cond_0
    const-class v1, Lcom/dodonew/online/ui/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcom/dodonew/online/ui/StartActivity;->initView()V

    .line 31
    return-void
.end method
