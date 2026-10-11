.class public abstract Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;
.super Ljava/lang/Object;
.source "WelcomeFragmentHolder.java"


# instance fields
.field private mFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;->mFragment:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;->mFragment:Landroid/support/v4/app/Fragment;

    .line 14
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected abstract fragment()Landroid/support/v4/app/Fragment;
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method
