.class public Lcom/dodonew/online/ui/LoginActivity;
.super Lcom/dodonew/online/base/BasicActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private etMobile:Landroid/widget/EditText;

.field private etPwd:Landroid/widget/EditText;

.field private firstime:J

.field private para:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lcom/dodonew/online/http/JsonRequest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dodonew/online/base/BasicActivity;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dodonew/online/ui/LoginActivity;->firstime:J

    return-void
.end method

.method private checkInput(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, ""

    .line 81
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const-string v0, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 86
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const/4 v1, 0x1

    .line 90
    :goto_1
    return v1

    .line 83
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v0, "\u767b\u5f55\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0d00c1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0d00c0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->etMobile:Landroid/widget/EditText;

    .line 56
    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->etPwd:Landroid/widget/EditText;

    .line 57
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->para:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->para:Ljava/util/Map;

    .line 61
    :cond_0
    return-void
.end method

.method private login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Lcom/dodonew/online/ui/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/LoginActivity$1;-><init>(Lcom/dodonew/online/ui/LoginActivity;)V

    .line 125
    invoke-virtual {v0}, Lcom/dodonew/online/ui/LoginActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 126
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->para:Ljava/util/Map;

    const-string v1, "username"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->para:Ljava/util/Map;

    const-string v1, "userPwd"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->devId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dodonew/online/util/Utils;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->devId:Ljava/lang/String;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->para:Ljava/util/Map;

    const-string v1, "equtype"

    const-string v2, "ANDROID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->para:Ljava/util/Map;

    const-string v1, "loginImei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->devId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "user/login"

    iget-object v1, p0, Lcom/dodonew/online/ui/LoginActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/LoginActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/LoginActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 135
    return-void
.end method

.method private requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/LoginActivity;->showProgress()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/LoginActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/LoginActivity$2;-><init>(Lcom/dodonew/online/ui/LoginActivity;Ljava/lang/String;)V

    move-object v1, p0

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;I)V

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 163
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParserError"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    .local v0, "secondtime":J
    iget-wide v2, p0, Lcom/dodonew/online/ui/LoginActivity;->firstime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 182
    const-string v2, "\u518d\u6309\u4e00\u6b21\u8fd4\u56de\u952e\u9000\u51fa"

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dodonew/online/ui/LoginActivity;->firstime:J

    .line 184
    const/4 v2, 0x1

    .line 191
    .end local v0    # "secondtime":J
    :goto_0
    return v2

    .line 186
    .restart local v0    # "secondtime":J
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p0}, Lcom/dodonew/online/ui/LoginActivity;->finish()V

    .line 188
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->AppExit(Landroid/content/Context;)V

    .line 191
    .end local v0    # "secondtime":J
    :cond_1
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BasicActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 99
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/ui/LoginActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "mobile":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/ui/LoginActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "pwd":Ljava/lang/String;
    iget-object v3, p0, Lcom/dodonew/online/ui/LoginActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {p0, v3}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 102
    invoke-direct {p0, v1, v2}, Lcom/dodonew/online/ui/LoginActivity;->checkInput(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-direct {p0, v1, v2}, Lcom/dodonew/online/ui/LoginActivity;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/dodonew/online/ui/RegisterActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00c0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/LoginActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/dodonew/online/ui/LoginActivity;->initView()V

    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/ui/LoginActivity;->initEvent()V

    .line 49
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BasicActivity;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 168
    invoke-virtual {p0}, Lcom/dodonew/online/ui/LoginActivity;->dissProgress()V

    .line 169
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/dodonew/online/base/BasicActivity;->onPause()V

    .line 206
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 208
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/dodonew/online/base/BasicActivity;->onResume()V

    .line 200
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 202
    return-void
.end method
