.class public Lcom/stephentuso/welcome/ui/WelcomeScreenFinisher;
.super Ljava/lang/Object;
.source "WelcomeScreenFinisher.java"


# instance fields
.field private mFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenFinisher;->mFragment:Landroid/support/v4/app/Fragment;

    .line 17
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenFinisher;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/stephentuso/welcome/ui/WelcomeActivity;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenFinisher;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeActivity;

    .line 26
    .local v0, "welcomeActivity":Lcom/stephentuso/welcome/ui/WelcomeActivity;
    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->completeWelcomeScreen()V

    .line 28
    .end local v0    # "welcomeActivity":Lcom/stephentuso/welcome/ui/WelcomeActivity;
    :cond_0
    return-void
.end method
