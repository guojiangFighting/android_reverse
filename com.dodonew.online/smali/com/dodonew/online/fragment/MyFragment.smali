.class public Lcom/dodonew/online/fragment/MyFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private ivHead:Landroid/widget/ImageView;

.field private mGson:Lcom/google/gson/Gson;

.field private mHandler:Landroid/os/Handler;

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

.field private tvCardCount:Landroid/widget/TextView;

.field private tvMobile:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvScore:Landroid/widget/TextView;

.field private tvTicketCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 265
    new-instance v0, Lcom/dodonew/online/fragment/MyFragment$4;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/MyFragment$4;-><init>(Lcom/dodonew/online/fragment/MyFragment;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/fragment/MyFragment;Lcom/dodonew/online/bean/User;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyFragment;
    .param p1, "x1"    # Lcom/dodonew/online/bean/User;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/MyFragment;->setUserInfo(Lcom/dodonew/online/bean/User;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/fragment/MyFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dodonew/online/fragment/MyFragment;->initData()V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/fragment/MyFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->tvCardCount:Landroid/widget/TextView;

    return-object v0
.end method

.method private initData()V
    .locals 6

    .prologue
    .line 166
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    if-eqz v3, :cond_3

    .line 167
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "icon":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const v4, 0x7f02007a

    .line 170
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const v4, 0x7f0200d4

    .line 171
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/fragment/MyFragment;->ivHead:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 173
    :cond_0
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    const-string v1, "\u6682\u65e0\u6635\u79f0"

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyFragment;->tvName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "phone":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    const-string v2, "\u672a\u7ed1\u5b9a\u624b\u673a"

    .line 182
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyFragment;->tvMobile:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyFragment;->tvCardCount:Landroid/widget/TextView;

    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/User;->getMemberCardCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyFragment;->tvTicketCount:Landroid/widget/TextView;

    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/User;->getDiscountCardCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyFragment;->tvScore:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/User;->getScore()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .end local v0    # "icon":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phone":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private initEvent(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x7f0d01cc

    .line 103
    const v0, 0x7f0d0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f0d01c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f0d01c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0d01c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f0d01cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0d01cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f0d01ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0d01cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    const v0, 0x7f0d01c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->ivHead:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0d01c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->tvName:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0d01c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->tvMobile:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0d01c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->tvCardCount:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0d01ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->tvTicketCount:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0d0103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->tvScore:Landroid/widget/TextView;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->para:Ljava/util/Map;

    .line 99
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/MyFragment;->queryUserInfo(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static newInstance()Lcom/dodonew/online/fragment/MyFragment;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/dodonew/online/fragment/MyFragment;

    invoke-direct {v0}, Lcom/dodonew/online/fragment/MyFragment;-><init>()V

    return-object v0
.end method

.method private queryUserInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lcom/dodonew/online/fragment/MyFragment$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/MyFragment$1;-><init>(Lcom/dodonew/online/fragment/MyFragment;)V

    .line 117
    invoke-virtual {v0}, Lcom/dodonew/online/fragment/MyFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->para:Ljava/util/Map;

    const-string v1, "userAccount"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "user/selecUser"

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyFragment;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/fragment/MyFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/fragment/MyFragment;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 122
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->showProgress()V

    .line 123
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
    .line 132
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

    .line 133
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/fragment/MyFragment$2;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/fragment/MyFragment$2;-><init>(Lcom/dodonew/online/fragment/MyFragment;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/fragment/MyFragment$3;

    invoke-direct {v5, p0}, Lcom/dodonew/online/fragment/MyFragment$3;-><init>(Lcom/dodonew/online/fragment/MyFragment;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method private resumeData()V
    .locals 6

    .prologue
    .line 190
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    if-eqz v3, :cond_3

    .line 191
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "icon":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const v4, 0x7f02007a

    .line 194
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const v4, 0x7f0200d4

    .line 195
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/fragment/MyFragment;->ivHead:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 197
    :cond_0
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const-string v1, "\u6682\u65e0\u6635\u79f0"

    .line 201
    :cond_1
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyFragment;->tvName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "phone":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    const-string v2, "\u672a\u7ed1\u5b9a\u624b\u673a"

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyFragment;->tvMobile:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyFragment;->tvScore:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/User;->getScore()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v0    # "icon":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phone":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private setUserInfo(Lcom/dodonew/online/bean/User;)V
    .locals 3
    .param p1, "user"    # Lcom/dodonew/online/bean/User;

    .prologue
    .line 160
    sput-object p1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 161
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyFragment;->mGson:Lcom/google/gson/Gson;

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DodonewUser"

    invoke-static {v0, v1, v2}, Lcom/dodonew/online/util/Utils;->saveJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/dodonew/online/fragment/MyFragment;->initData()V

    .line 163
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 245
    :goto_0
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0, v0}, Lcom/dodonew/online/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    .line 248
    :cond_0
    return-void

    .line 216
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/UserInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 219
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/ScoreMallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 222
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/MyOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 225
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 228
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 231
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 234
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 237
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/MyCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 240
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 214
    :sswitch_data_0
    .sparse-switch
        0x7f0d0102 -> :sswitch_0
        0x7f0d01c6 -> :sswitch_7
        0x7f0d01c8 -> :sswitch_1
        0x7f0d01c9 -> :sswitch_6
        0x7f0d01cb -> :sswitch_2
        0x7f0d01cc -> :sswitch_3
        0x7f0d01cd -> :sswitch_5
        0x7f0d01ce -> :sswitch_4
        0x7f0d01cf -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    const v1, 0x7f030089

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u6211"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 80
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/fragment/MyFragment;->mGson:Lcom/google/gson/Gson;

    .line 81
    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/MyFragment;->initView(Landroid/view/View;)V

    .line 82
    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/MyFragment;->initEvent(Landroid/view/View;)V

    .line 83
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 287
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public onEventMainThread(Lcom/dodonew/online/bean/CardEvent;)V
    .locals 2
    .param p1, "cardEvent"    # Lcom/dodonew/online/bean/CardEvent;

    .prologue
    .line 258
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 259
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 260
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    iget-object v1, p0, Lcom/dodonew/online/fragment/MyFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 253
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/dodonew/online/fragment/MyFragment;->resumeData()V

    .line 255
    return-void
.end method
