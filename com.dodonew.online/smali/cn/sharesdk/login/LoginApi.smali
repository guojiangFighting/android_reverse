.class public Lcn/sharesdk/login/LoginApi;
.super Ljava/lang/Object;
.source "LoginApi.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_AUTH_CANCEL:I = 0x1

.field private static final MSG_AUTH_COMPLETE:I = 0x3

.field private static final MSG_AUTH_ERROR:I = 0x2


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private loginListener:Lcn/sharesdk/login/OnLoginListener;

.field private platform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/sharesdk/login/LoginApi;->handler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/login/LoginApi;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/sharesdk/login/LoginApi;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/login/LoginApi;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 97
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    return v7

    .line 99
    :pswitch_0
    iget-object v5, p0, Lcn/sharesdk/login/LoginApi;->loginListener:Lcn/sharesdk/login/OnLoginListener;

    if-eqz v5, :cond_0

    .line 100
    iget-object v5, p0, Lcn/sharesdk/login/LoginApi;->loginListener:Lcn/sharesdk/login/OnLoginListener;

    invoke-interface {v5}, Lcn/sharesdk/login/OnLoginListener;->onCancel()V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    .line 107
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Lcn/sharesdk/login/LoginApi;->context:Landroid/content/Context;

    invoke-static {v5, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 109
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "text":Ljava/lang/String;
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    .line 115
    .local v0, "objs":[Ljava/lang/Object;
    aget-object v1, v0, v7

    check-cast v1, Ljava/lang/String;

    .line 117
    .local v1, "plat":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v2, v0, v5

    check-cast v2, Ljava/util/HashMap;

    .line 118
    .local v2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcn/sharesdk/login/LoginApi;->loginListener:Lcn/sharesdk/login/OnLoginListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/sharesdk/login/LoginApi;->loginListener:Lcn/sharesdk/login/OnLoginListener;

    invoke-interface {v5, v1, v2}, Lcn/sharesdk/login/OnLoginListener;->onLogin(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public login(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/login/LoginApi;->context:Landroid/content/Context;

    .line 40
    iget-object v1, p0, Lcn/sharesdk/login/LoginApi;->platform:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 46
    iget-object v1, p0, Lcn/sharesdk/login/LoginApi;->platform:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 47
    .local v0, "plat":Lcn/sharesdk/framework/Platform;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    goto :goto_0

    .line 57
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 58
    new-instance v1, Lcn/sharesdk/login/LoginApi$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/login/LoginApi$1;-><init>(Lcn/sharesdk/login/LoginApi;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnLoginListener(Lcn/sharesdk/login/OnLoginListener;)V
    .locals 0
    .param p1, "login"    # Lcn/sharesdk/login/OnLoginListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/sharesdk/login/LoginApi;->loginListener:Lcn/sharesdk/login/OnLoginListener;

    .line 36
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcn/sharesdk/login/LoginApi;->platform:Ljava/lang/String;

    .line 32
    return-void
.end method
