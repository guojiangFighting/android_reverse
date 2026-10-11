.class public Lcom/dodonew/online/ui/AppGuideActivity;
.super Lcom/stephentuso/welcome/ui/WelcomeActivity;
.source "AppGuideActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;-><init>()V

    return-void
.end method

.method public static welcomeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "WelcomeScreen"

    return-object v0
.end method


# virtual methods
.method protected configuration()Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;
    .locals 4

    .prologue
    const v3, 0x7f0c0038

    const v2, 0x7f0c0020

    .line 19
    new-instance v0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    invoke-direct {v0, p0}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900c6

    .line 20
    invoke-virtual {v0, v1}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->theme(I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    const v1, 0x7f02008d

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->ImagePage(II)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    const v1, 0x7f02008e

    .line 22
    invoke-virtual {v0, v1, v3}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->ImagePage(II)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    const v1, 0x7f02008f

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->ImagePage(II)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    const v1, 0x7f020090

    .line 24
    invoke-virtual {v0, v1, v3}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->ImagePage(II)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->swipeToDismiss(Z)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    const v1, 0x10a0001

    .line 26
    invoke-virtual {v0, v1}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->exitAnimation(I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->build()Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected onCompleteWelcomeListener()Lcom/stephentuso/welcome/ui/WelcomeActivity$OnCompleteWelcomeListener;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/dodonew/online/ui/AppGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/AppGuideActivity$1;-><init>(Lcom/dodonew/online/ui/AppGuideActivity;)V

    return-object v0
.end method
