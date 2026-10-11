.class public Lcom/stephentuso/welcome/util/SharedPreferencesHelper;
.super Ljava/lang/Object;
.source "SharedPreferencesHelper.java"


# static fields
.field private static final KEY_HAS_RUN:Ljava/lang/String; = "welcome_screen_has_run"

.field private static final KEY_SHARED_PREFS:Ljava/lang/String; = "com.stephentuso.welcome"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCompletedFromPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 2
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
    .param p1, "welcomeScreenKey"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "welcome_screen_has_run"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const-string v0, "com.stephentuso.welcome"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static storeWelcomeCompleted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "welcomeScreenKey"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/stephentuso/welcome/util/SharedPreferencesHelper;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/stephentuso/welcome/util/SharedPreferencesHelper;->storeWelcomeCompleted(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private static storeWelcomeCompleted(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
    .param p1, "welcomeScreenKey"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "welcome_screen_has_run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    return-void
.end method

.method public static welcomeScreenCompleted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "welcomeScreenKey"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/stephentuso/welcome/util/SharedPreferencesHelper;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/stephentuso/welcome/util/SharedPreferencesHelper;->getCompletedFromPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
