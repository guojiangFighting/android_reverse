.class Lcom/stephentuso/welcome/ui/WelcomeActivity$WelcomeFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stephentuso/welcome/ui/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WelcomeFragmentPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stephentuso/welcome/ui/WelcomeActivity;


# direct methods
.method public constructor <init>(Lcom/stephentuso/welcome/ui/WelcomeActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity$WelcomeFragmentPagerAdapter;->this$0:Lcom/stephentuso/welcome/ui/WelcomeActivity;

    .line 217
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 218
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity$WelcomeFragmentPagerAdapter;->this$0:Lcom/stephentuso/welcome/ui/WelcomeActivity;

    iget-object v0, v0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->pageCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity$WelcomeFragmentPagerAdapter;->this$0:Lcom/stephentuso/welcome/ui/WelcomeActivity;

    iget-object v0, v0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->createFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method
