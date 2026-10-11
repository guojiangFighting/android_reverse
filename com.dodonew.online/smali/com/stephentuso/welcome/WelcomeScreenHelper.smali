.class public Lcom/stephentuso/welcome/WelcomeScreenHelper;
.super Ljava/lang/Object;
.source "WelcomeScreenHelper.java"


# static fields
.field public static final DEFAULT_WELCOME_SCREEN_REQUEST:I = 0x1

.field private static final KEY_WELCOME_SCREEN_STARTED:Ljava/lang/String; = "com.stephentuso.welcome.welcome_screen_started"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/stephentuso/welcome/ui/WelcomeActivity;",
            ">;"
        }
    .end annotation
.end field

.field private welcomeScreenStarted:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/stephentuso/welcome/ui/WelcomeActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/stephentuso/welcome/ui/WelcomeActivity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->welcomeScreenStarted:Z

    .line 29
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->mActivity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->mActivityClass:Ljava/lang/Class;

    .line 31
    return-void
.end method

.method private getWelcomeScreenStarted(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-boolean v1, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->welcomeScreenStarted:Z

    if-nez v1, :cond_1

    .line 35
    if-eqz p1, :cond_0

    const-string v1, "com.stephentuso.welcome.welcome_screen_started"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->welcomeScreenStarted:Z

    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->welcomeScreenStarted:Z

    return v0
.end method

.method private shouldShow(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/stephentuso/welcome/WelcomeScreenHelper;->getWelcomeScreenStarted(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->mActivityClass:Ljava/lang/Class;

    .line 42
    invoke-static {v1}, Lcom/stephentuso/welcome/util/WelcomeUtils;->getKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stephentuso/welcome/util/SharedPreferencesHelper;->welcomeScreenCompleted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startActivity(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->mActivityClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    return-void
.end method


# virtual methods
.method public forceShow()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/WelcomeScreenHelper;->forceShow(I)V

    .line 97
    return-void
.end method

.method public forceShow(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/stephentuso/welcome/WelcomeScreenHelper;->startActivity(I)V

    .line 106
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const-string v0, "com.stephentuso.welcome.welcome_screen_started"

    iget-boolean v1, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->welcomeScreenStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method public show()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/WelcomeScreenHelper;->show(I)Z

    move-result v0

    return v0
.end method

.method public show(I)Z
    .locals 1
    .param p1, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/stephentuso/welcome/WelcomeScreenHelper;->show(Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public show(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/stephentuso/welcome/WelcomeScreenHelper;->show(Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public show(Landroid/os/Bundle;I)Z
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "requestCode"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/stephentuso/welcome/WelcomeScreenHelper;->shouldShow(Landroid/os/Bundle;)Z

    move-result v0

    .line 85
    .local v0, "shouldShow":Z
    if-eqz v0, :cond_0

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stephentuso/welcome/WelcomeScreenHelper;->welcomeScreenStarted:Z

    .line 87
    invoke-direct {p0, p2}, Lcom/stephentuso/welcome/WelcomeScreenHelper;->startActivity(I)V

    .line 89
    :cond_0
    return v0
.end method
