.class public Lcom/dodonew/online/ui/RegisterActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private etCode:Landroid/widget/EditText;

.field private etMobile:Landroid/widget/EditText;

.field private etPwd:Landroid/widget/EditText;

.field private mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

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

.field private timeCountUtil:Lcom/dodonew/online/util/TimeCountUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/RegisterActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->etCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/RegisterActivity;)Lcom/dodonew/online/util/TimeCountUtil;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/RegisterActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->timeCountUtil:Lcom/dodonew/online/util/TimeCountUtil;

    return-object v0
.end method

.method private checkInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, ""

    .line 95
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string v0, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 102
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    const/4 v1, 0x1

    .line 106
    :goto_1
    return v1

    .line 97
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const-string v0, "\u767b\u5f55\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v0, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkMobile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, ""

    .line 118
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 123
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    const/4 v1, 0x1

    .line 127
    :goto_1
    return v1

    .line 120
    :cond_1
    invoke-static {p1}, Lcom/dodonew/online/util/Utils;->isMobileNO(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Lcom/dodonew/online/ui/RegisterActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/RegisterActivity$2;-><init>(Lcom/dodonew/online/ui/RegisterActivity;)V

    .line 163
    invoke-virtual {v0}, Lcom/dodonew/online/ui/RegisterActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "user/regCode"

    iget-object v1, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/RegisterActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/RegisterActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 167
    return-void
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0d00fd

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0d00fe

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/dodonew/online/ui/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->setTitle(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->setNavigationIcon(I)V

    .line 57
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->etMobile:Landroid/widget/EditText;

    .line 58
    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->etPwd:Landroid/widget/EditText;

    .line 59
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->etCode:Landroid/widget/EditText;

    .line 60
    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 61
    .local v3, "btnGetCode":Landroid/widget/Button;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

    .line 62
    new-instance v1, Lcom/dodonew/online/util/TimeCountUtil;

    const-wide/16 v4, 0x1770

    const-wide/16 v6, 0x3e8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/dodonew/online/util/TimeCountUtil;-><init>(Landroid/content/Context;Landroid/widget/Button;JJ)V

    iput-object v1, p0, Lcom/dodonew/online/ui/RegisterActivity;->timeCountUtil:Lcom/dodonew/online/util/TimeCountUtil;

    .line 63
    return-void
.end method

.method private register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Lcom/dodonew/online/ui/RegisterActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/RegisterActivity$3;-><init>(Lcom/dodonew/online/ui/RegisterActivity;)V

    .line 178
    invoke-virtual {v0}, Lcom/dodonew/online/ui/RegisterActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 179
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 180
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

    const-string v1, "userPwd"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

    const-string v1, "mobileCode"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

    const-string v1, "equtype"

    const-string v2, "ANDROID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

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

    .line 185
    const-string v0, "user/activateAccount"

    iget-object v1, p0, Lcom/dodonew/online/ui/RegisterActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/RegisterActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/RegisterActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 186
    return-void
.end method

.method private registerSMSReceiver()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lcom/dodonew/online/manager/ShortMsgHelper;

    const/4 v1, 0x0

    const-string v2, "\u561f\u561f\u725b\u5728\u7ebf"

    const/4 v3, 0x6

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/dodonew/online/manager/ShortMsgHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

    .line 77
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-virtual {v0}, Lcom/dodonew/online/manager/ShortMsgHelper;->register()V

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

    new-instance v1, Lcom/dodonew/online/ui/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/RegisterActivity$1;-><init>(Lcom/dodonew/online/ui/RegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/manager/ShortMsgHelper;->setOnSmsAuthCodeListener(Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;)V

    .line 85
    return-void
.end method

.method private requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p3, "DEFAULT_TYPE"    # Ljava/lang/reflect/Type;
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
    .line 194
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/RegisterActivity;->showProgress()V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/RegisterActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/RegisterActivity$4;-><init>(Lcom/dodonew/online/ui/RegisterActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/RegisterActivity$5;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/RegisterActivity$5;-><init>(Lcom/dodonew/online/ui/RegisterActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 222
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 223
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 224
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 135
    :sswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dodonew/online/ui/RegisterActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "mobile":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/dodonew/online/ui/RegisterActivity;->checkMobile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    invoke-direct {p0, v2}, Lcom/dodonew/online/ui/RegisterActivity;->getCode(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v2    # "mobile":Ljava/lang/String;
    :sswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dodonew/online/ui/RegisterActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "phone":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dodonew/online/ui/RegisterActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "pwd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dodonew/online/ui/RegisterActivity;->etCode:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "code":Ljava/lang/String;
    invoke-direct {p0, v3, v4, v0}, Lcom/dodonew/online/ui/RegisterActivity;->checkInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    invoke-direct {p0, v3, v4, v0}, Lcom/dodonew/online/ui/RegisterActivity;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "phone":Ljava/lang/String;
    .end local v4    # "pwd":Ljava/lang/String;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00a5 -> :sswitch_0
        0x7f0d00fd -> :sswitch_1
        0x7f0d00fe -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/RegisterActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/dodonew/online/ui/RegisterActivity;->initView()V

    .line 47
    invoke-direct {p0}, Lcom/dodonew/online/ui/RegisterActivity;->initEvent()V

    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/ui/RegisterActivity;->registerSMSReceiver()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 245
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity;->mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-virtual {v0}, Lcom/dodonew/online/manager/ShortMsgHelper;->unRigister()V

    .line 248
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 238
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 232
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 234
    return-void
.end method
