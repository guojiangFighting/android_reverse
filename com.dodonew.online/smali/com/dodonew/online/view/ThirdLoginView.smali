.class public Lcom/dodonew/online/view/ThirdLoginView;
.super Landroid/widget/LinearLayout;
.source "ThirdLoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private api:Lcn/sharesdk/login/LoginApi;

.field private context:Landroid/content/Context;

.field private loginLabel:Ljava/lang/String;

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

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/view/ThirdLoginView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object p1, p0, Lcom/dodonew/online/view/ThirdLoginView;->context:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/dodonew/online/view/ThirdLoginView;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/ThirdLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/ThirdLoginView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/dodonew/online/view/ThirdLoginView;->loginQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/view/ThirdLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/ThirdLoginView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dodonew/online/view/ThirdLoginView;->loginWechat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/view/ThirdLoginView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/ThirdLoginView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/view/ThirdLoginView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/ThirdLoginView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->loginLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/view/ThirdLoginView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/ThirdLoginView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->view:Landroid/view/View;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d4

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->view:Landroid/view/View;

    .line 66
    const v0, 0x7f0d0249

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/ThirdLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0d024a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/ThirdLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    .line 69
    new-instance v0, Lcn/sharesdk/login/LoginApi;

    invoke-direct {v0}, Lcn/sharesdk/login/LoginApi;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->api:Lcn/sharesdk/login/LoginApi;

    .line 70
    return-void
.end method

.method private login(Ljava/lang/String;)V
    .locals 2
    .param p1, "platformName"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->context:Landroid/content/Context;

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->showProgress()V

    .line 80
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->api:Lcn/sharesdk/login/LoginApi;

    invoke-virtual {v0, p1}, Lcn/sharesdk/login/LoginApi;->setPlatform(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->api:Lcn/sharesdk/login/LoginApi;

    new-instance v1, Lcom/dodonew/online/view/ThirdLoginView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/ThirdLoginView$1;-><init>(Lcom/dodonew/online/view/ThirdLoginView;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/login/LoginApi;->setOnLoginListener(Lcn/sharesdk/login/OnLoginListener;)V

    .line 106
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->api:Lcn/sharesdk/login/LoginApi;

    iget-object v1, p0, Lcom/dodonew/online/view/ThirdLoginView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/sharesdk/login/LoginApi;->login(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method private loginQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "nickName"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Lcom/dodonew/online/view/ThirdLoginView$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/ThirdLoginView$3;-><init>(Lcom/dodonew/online/view/ThirdLoginView;)V

    .line 132
    invoke-virtual {v0}, Lcom/dodonew/online/view/ThirdLoginView$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "icon"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "openID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "nickName"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "equtype"

    const-string v2, "ANDROID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "loginImei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/view/ThirdLoginView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "user/qqLogin"

    iget-object v1, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/ThirdLoginView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/view/ThirdLoginView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 140
    return-void
.end method

.method private loginWechat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "unionId"    # Ljava/lang/String;
    .param p2, "openID"    # Ljava/lang/String;
    .param p3, "nickName"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lcom/dodonew/online/view/ThirdLoginView$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/ThirdLoginView$2;-><init>(Lcom/dodonew/online/view/ThirdLoginView;)V

    .line 112
    invoke-virtual {v0}, Lcom/dodonew/online/view/ThirdLoginView$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "unionId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "icon"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "openID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "nickName"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "equtype"

    const-string v2, "ANDROID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    const-string v1, "loginImei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/view/ThirdLoginView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "wxLogin/wxAppLogin"

    iget-object v1, p0, Lcom/dodonew/online/view/ThirdLoginView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/ThirdLoginView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/view/ThirdLoginView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 121
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
    .line 149
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/view/ThirdLoginView;->context:Landroid/content/Context;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/view/ThirdLoginView$4;

    invoke-direct {v4, p0}, Lcom/dodonew/online/view/ThirdLoginView$4;-><init>(Lcom/dodonew/online/view/ThirdLoginView;)V

    new-instance v5, Lcom/dodonew/online/view/ThirdLoginView$5;

    invoke-direct {v5, p0}, Lcom/dodonew/online/view/ThirdLoginView$5;-><init>(Lcom/dodonew/online/view/ThirdLoginView;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 170
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->request:Lcom/dodonew/online/http/JsonRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;I)V

    .line 171
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 172
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 178
    :pswitch_0
    const-string v0, "QQ"

    iput-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->loginLabel:Ljava/lang/String;

    .line 179
    sget-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dodonew/online/view/ThirdLoginView;->login(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :pswitch_1
    const-string v0, "WX"

    iput-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView;->loginLabel:Ljava/lang/String;

    .line 183
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dodonew/online/view/ThirdLoginView;->login(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x7f0d0249
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
