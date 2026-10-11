.class public Lcom/Proxy/ShellApplication;
.super Landroid/app/Application;
.source "ShellApplication.java"


# static fields
.field public static currentTimestamp:J


# instance fields
.field public mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/Proxy/ShellApplication;->currentTimestamp:J

    .line 21
    :try_start_0
    invoke-static {p1}, Lcom/Proxy/Helper;->install(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/Proxy/VLibrary;->attachApp()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/Proxy/ShellApplication;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/Proxy/Defines;->SHOWSTACK:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    iget-object v9, p0, Lcom/Proxy/ShellApplication;->mApplication:Landroid/app/Application;

    if-eqz v9, :cond_0

    .line 33
    invoke-static {p0, v9}, Lcom/Proxy/VLibrary;->attach(Landroid/app/Application;Landroid/app/Application;)V

    .line 34
    iget-object v9, p0, Lcom/Proxy/ShellApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->onCreate()V

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 38
    .local v6, "from":Landroid/view/LayoutInflater;
    const-class v9, Landroid/view/LayoutInflater;

    const-string v10, "mContext"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 39
    .local v3, "declaredField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 40
    iget-object v9, p0, Lcom/Proxy/ShellApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v3    # "declaredField":Ljava/lang/reflect/Field;
    .end local v6    # "from":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    :try_start_1
    const-string v9, "android.app.ActivityThread"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "activityThreadClazz":Ljava/lang/Class;
    const-string v9, "currentActivityThread"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 51
    .local v8, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 53
    .local v2, "currentActivityThread":Ljava/lang/Object;
    const-string v9, "mAllApplications"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 54
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 55
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 56
    .local v1, "allApplication":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Application;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 57
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Application;

    invoke-static {v9}, Lcom/Install/DexInstall;->registerApplicationCallBack(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 41
    .end local v0    # "activityThreadClazz":Ljava/lang/Class;
    .end local v1    # "allApplication":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Application;>;"
    .end local v2    # "currentActivityThread":Ljava/lang/Object;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "i":I
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 42
    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/Proxy/Defines;->SHOWSTACK:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 43
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 60
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/Proxy/Defines;->SHOWSTACK:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 61
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
