.class public Lcom/dodonew/online/ui/UserInfoActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private isQQBind:Z

.field private isWXBind:Z

.field private ivHead:Landroid/widget/ImageView;

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

.field private tvAddress:Landroid/widget/TextView;

.field private tvAge:Landroid/widget/TextView;

.field private tvMobile:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvQQ:Landroid/widget/TextView;

.field private tvSex:Landroid/widget/TextView;

.field private tvWeChat:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->isQQBind:Z

    iput-boolean v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->isWXBind:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/UserInfoActivity;Lcom/dodonew/online/bean/User;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/UserInfoActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/User;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/UserInfoActivity;->setUserInfo(Lcom/dodonew/online/bean/User;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/UserInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/UserInfoActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/UserInfoActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/UserInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/ui/UserInfoActivity;->bindQQ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/UserInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/UserInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/dodonew/online/ui/UserInfoActivity;->bindWechat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bindQQ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Lcom/dodonew/online/ui/UserInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/UserInfoActivity$1;-><init>(Lcom/dodonew/online/ui/UserInfoActivity;)V

    .line 139
    invoke-virtual {v0}, Lcom/dodonew/online/ui/UserInfoActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 140
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->para:Ljava/util/Map;

    const-string v1, "openId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "qqLogin/bindQQ"

    iget-object v1, p0, Lcom/dodonew/online/ui/UserInfoActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/UserInfoActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/UserInfoActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 144
    return-void
.end method

.method private bindWechat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "unionId"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Lcom/dodonew/online/ui/UserInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/UserInfoActivity$2;-><init>(Lcom/dodonew/online/ui/UserInfoActivity;)V

    .line 148
    invoke-virtual {v0}, Lcom/dodonew/online/ui/UserInfoActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 150
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->para:Ljava/util/Map;

    const-string v1, "openId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->para:Ljava/util/Map;

    const-string v1, "unionId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "wxLogin/bindWx"

    iget-object v1, p0, Lcom/dodonew/online/ui/UserInfoActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/UserInfoActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/UserInfoActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 154
    return-void
.end method

.method private initData()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    if-eqz v4, :cond_4

    .line 81
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dodonew/online/ui/UserInfoActivity;->userId:Ljava/lang/String;

    .line 82
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/User;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "img":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    const v5, 0x7f02007a

    .line 85
    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    const v5, 0x7f0200ac

    .line 86
    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/ui/UserInfoActivity;->ivHead:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvName:Landroid/widget/TextView;

    sget-object v5, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/User;->getSex()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "sex":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    const-string v3, "\u7537"

    .line 95
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvSex:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v4, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvAge:Landroid/widget/TextView;

    sget-object v5, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/User;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "phone":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    const-string v2, "\u672a\u7ed1\u5b9a"

    .line 101
    :cond_2
    iget-object v4, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvMobile:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/User;->getLiveArea()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "liveArea":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_3
    iget-object v4, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/User;->getQqId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 108
    iput-boolean v6, p0, Lcom/dodonew/online/ui/UserInfoActivity;->isQQBind:Z

    .line 109
    iget-object v4, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvQQ:Landroid/widget/TextView;

    const-string v5, "\u672a\u7ed1\u5b9a"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_1
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/User;->getUnionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 115
    iput-boolean v6, p0, Lcom/dodonew/online/ui/UserInfoActivity;->isWXBind:Z

    .line 116
    iget-object v4, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvWeChat:Landroid/widget/TextView;

    const-string v5, "\u672a\u7ed1\u5b9a"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .end local v0    # "img":Ljava/lang/String;
    .end local v1    # "liveArea":Ljava/lang/String;
    .end local v2    # "phone":Ljava/lang/String;
    .end local v3    # "sex":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 92
    .restart local v0    # "img":Ljava/lang/String;
    .restart local v3    # "sex":Ljava/lang/String;
    :cond_5
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    const-string v3, "\u5973"

    goto :goto_0

    .line 111
    .restart local v1    # "liveArea":Ljava/lang/String;
    .restart local v2    # "phone":Ljava/lang/String;
    :cond_6
    iput-boolean v7, p0, Lcom/dodonew/online/ui/UserInfoActivity;->isQQBind:Z

    .line 112
    iget-object v4, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvQQ:Landroid/widget/TextView;

    const-string v5, "\u5df2\u7ed1\u5b9a"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 118
    :cond_7
    iput-boolean v7, p0, Lcom/dodonew/online/ui/UserInfoActivity;->isWXBind:Z

    .line 119
    iget-object v4, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvWeChat:Landroid/widget/TextView;

    const-string v5, "\u5df2\u7ed1\u5b9a"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f0d012e

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f0d0130

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0d0132

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0d0136

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "\u4e2a\u4eba\u4fe1\u606f"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->setTitle(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->setNavigationIcon(I)V

    .line 68
    const v0, 0x7f0d0127

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->ivHead:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0d0129

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvName:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0d012b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvSex:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0d012d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvAge:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0d012f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvMobile:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0d0131

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvQQ:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0d0133

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvWeChat:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0d0135

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->tvAddress:Landroid/widget/TextView;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->para:Ljava/util/Map;

    .line 77
    return-void
.end method

.method private login(Ljava/lang/String;)V
    .locals 2
    .param p1, "platformName"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Lcn/sharesdk/login/LoginApi;

    invoke-direct {v0}, Lcn/sharesdk/login/LoginApi;-><init>()V

    .line 198
    .local v0, "api":Lcn/sharesdk/login/LoginApi;
    invoke-virtual {v0, p1}, Lcn/sharesdk/login/LoginApi;->setPlatform(Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/dodonew/online/ui/UserInfoActivity$5;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/UserInfoActivity$5;-><init>(Lcom/dodonew/online/ui/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/login/LoginApi;->setOnLoginListener(Lcn/sharesdk/login/OnLoginListener;)V

    .line 220
    invoke-virtual {v0, p0}, Lcn/sharesdk/login/LoginApi;->login(Landroid/content/Context;)V

    .line 221
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
    .line 162
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/UserInfoActivity;->showProgress()V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/UserInfoActivity$3;

    invoke-direct {v4, p0}, Lcom/dodonew/online/ui/UserInfoActivity$3;-><init>(Lcom/dodonew/online/ui/UserInfoActivity;)V

    new-instance v5, Lcom/dodonew/online/ui/UserInfoActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/UserInfoActivity$4;-><init>(Lcom/dodonew/online/ui/UserInfoActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 181
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 182
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method private setUserInfo(Lcom/dodonew/online/bean/User;)V
    .locals 0
    .param p1, "user"    # Lcom/dodonew/online/bean/User;

    .prologue
    .line 186
    sput-object p1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 187
    invoke-direct {p0}, Lcom/dodonew/online/ui/UserInfoActivity;->initData()V

    .line 188
    return-void
.end method


# virtual methods
.method public editorUser(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/UserInfoEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 228
    :pswitch_1
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "phone":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/dodonew/online/ui/BindMobileActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    const-string v1, "0"

    .line 237
    .local v1, "operaType":Ljava/lang/String;
    :goto_1
    const-string v3, "operaType"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    .end local v1    # "operaType":Ljava/lang/String;
    :cond_1
    const-string v1, "1"

    .line 235
    .restart local v1    # "operaType":Ljava/lang/String;
    const-string v3, "oldPhone"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 241
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "operaType":Ljava/lang/String;
    .end local v2    # "phone":Ljava/lang/String;
    :pswitch_2
    iget-boolean v3, p0, Lcom/dodonew/online/ui/UserInfoActivity;->isQQBind:Z

    if-nez v3, :cond_0

    .line 242
    sget-object v3, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/dodonew/online/ui/UserInfoActivity;->login(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :pswitch_3
    iget-boolean v3, p0, Lcom/dodonew/online/ui/UserInfoActivity;->isWXBind:Z

    if-nez v3, :cond_0

    .line 247
    sget-object v3, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/dodonew/online/ui/UserInfoActivity;->login(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/dodonew/online/ui/AddressActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d012e
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/dodonew/online/ui/UserInfoActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/dodonew/online/ui/UserInfoActivity;->initEvent()V

    .line 63
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 269
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 270
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 263
    invoke-direct {p0}, Lcom/dodonew/online/ui/UserInfoActivity;->initData()V

    .line 264
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 265
    return-void
.end method
