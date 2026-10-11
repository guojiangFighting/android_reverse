.class public Lcom/dodonew/online/ui/AddAddressActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "AddAddressActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private city:Ljava/lang/String;

.field private etAddress:Landroid/widget/EditText;

.field private etArea:Landroid/widget/EditText;

.field private etMobile:Landroid/widget/EditText;

.field private etName:Landroid/widget/EditText;

.field private etPosNum:Landroid/widget/EditText;

.field private etQQ:Landroid/widget/EditText;

.field private isDefault:Ljava/lang/String;

.field private obj:Lcom/dodonew/online/bean/Address;

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

.field private province:Ljava/lang/String;

.field private request:Lcom/dodonew/online/http/JsonRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 51
    const-string v0, "0"

    iput-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->isDefault:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/AddAddressActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/AddAddressActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/ui/AddAddressActivity;->setResult()V

    return-void
.end method

.method private addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "recivePeson"    # Ljava/lang/String;
    .param p2, "province"    # Ljava/lang/String;
    .param p3, "city"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "QQnum"    # Ljava/lang/String;
    .param p6, "postNum"    # Ljava/lang/String;
    .param p7, "cellPhone"    # Ljava/lang/String;
    .param p8, "isdefault"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/dodonew/online/ui/AddAddressActivity;->showProgress()V

    .line 83
    new-instance v0, Lcom/dodonew/online/ui/AddAddressActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/AddAddressActivity$1;-><init>(Lcom/dodonew/online/ui/AddAddressActivity;)V

    .line 84
    invoke-virtual {v0}, Lcom/dodonew/online/ui/AddAddressActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 85
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    const-string v1, "recivePeson"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    const-string v1, "province"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    const-string v1, "city"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    const-string v1, "address"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    const-string v1, "postNum"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    const-string v1, "QQnum"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    const-string v1, "cellPhone"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    const-string v1, "isdefault"

    invoke-interface {v0, v1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "gift/addAddress"

    iget-object v1, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/AddAddressActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/AddAddressActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 97
    return-void
.end method

.method private checkInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "area"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "recivePeson"    # Ljava/lang/String;
    .param p4, "cellPhone"    # Ljava/lang/String;
    .param p5, "QQNum"    # Ljava/lang/String;
    .param p6, "postNum"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 162
    iget-object v1, p0, Lcom/dodonew/online/ui/AddAddressActivity;->etAddress:Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 163
    const-string v0, ""

    .line 164
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    const-string v0, "\u8bf7\u8f93\u5165\u6240\u5728\u5730\u533a"

    .line 179
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 180
    const/4 v1, 0x1

    .line 183
    :goto_1
    return v1

    .line 166
    :cond_1
    const-string v1, "\u7701"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    const-string v1, "\u5e02"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 167
    :cond_2
    const-string v0, "\u6240\u5728\u5730\u533a\u586b\u5199\u683c\u5f0f\u4e0d\u6b63\u786e(xx\u7701xx\u5e02)"

    goto :goto_0

    .line 168
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    const-string v0, "\u8bf7\u8f93\u5165\u5730\u5740"

    goto :goto_0

    .line 170
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    const-string v0, "\u8bf7\u8f93\u5165\u6536\u8d27\u4eba\u59d3\u540d"

    goto :goto_0

    .line 172
    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 173
    const-string v0, "\u8bf7\u8f93\u5165\u8054\u7cfb\u7535\u8bdd"

    goto :goto_0

    .line 174
    :cond_6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 175
    const-string v0, "\u8bf7\u8f93\u5165QQ\u53f7\u7801"

    goto :goto_0

    .line 176
    :cond_7
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v0, "\u8bf7\u8f93\u5165\u90ae\u7f16"

    goto :goto_0

    .line 182
    :cond_8
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->showToast(Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "\u6dfb\u52a0\u6536\u8d27\u5730\u5740"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->setTitle(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->setNavigationIcon(I)V

    .line 66
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->etArea:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->etAddress:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->etName:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->etMobile:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->etPosNum:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->etQQ:Landroid/widget/EditText;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->para:Ljava/util/Map;

    .line 73
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
    .line 106
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

    .line 107
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/AddAddressActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/AddAddressActivity$2;-><init>(Lcom/dodonew/online/ui/AddAddressActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/AddAddressActivity$3;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/AddAddressActivity$3;-><init>(Lcom/dodonew/online/ui/AddAddressActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 127
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 128
    iget-object v0, p0, Lcom/dodonew/online/ui/AddAddressActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method private setResult()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/dodonew/online/ui/AddAddressActivity;->finish()V

    .line 136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 159
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 144
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dodonew/online/ui/AddAddressActivity;->etArea:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "area":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dodonew/online/ui/AddAddressActivity;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "address":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dodonew/online/ui/AddAddressActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "recivePeson":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dodonew/online/ui/AddAddressActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "cellPhone":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dodonew/online/ui/AddAddressActivity;->etPosNum:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "postNum":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dodonew/online/ui/AddAddressActivity;->etQQ:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "QQNum":Ljava/lang/String;
    move-object/from16 v1, p0

    .line 150
    invoke-direct/range {v1 .. v7}, Lcom/dodonew/online/ui/AddAddressActivity;->checkInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "\u7701"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 152
    .local v17, "areas":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v17, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\u7701"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/dodonew/online/ui/AddAddressActivity;->province:Ljava/lang/String;

    .line 153
    const/4 v1, 0x1

    aget-object v1, v17, v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/dodonew/online/ui/AddAddressActivity;->city:Ljava/lang/String;

    .line 154
    new-instance v8, Lcom/dodonew/online/bean/Address;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dodonew/online/ui/AddAddressActivity;->province:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dodonew/online/ui/AddAddressActivity;->city:Ljava/lang/String;

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/dodonew/online/bean/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/dodonew/online/ui/AddAddressActivity;->obj:Lcom/dodonew/online/bean/Address;

    .line 155
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dodonew/online/ui/AddAddressActivity;->province:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dodonew/online/ui/AddAddressActivity;->city:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/ui/AddAddressActivity;->isDefault:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v12, v3

    move-object v13, v6

    move-object v14, v7

    move-object v15, v5

    invoke-direct/range {v8 .. v16}, Lcom/dodonew/online/ui/AddAddressActivity;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x7f0d0092 -> :sswitch_0
        0x7f0d0099 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/dodonew/online/ui/AddAddressActivity;->enterFromBottomAnimation()V

    .line 57
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddAddressActivity;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/dodonew/online/ui/AddAddressActivity;->initView()V

    .line 60
    invoke-direct {p0}, Lcom/dodonew/online/ui/AddAddressActivity;->initEvent()V

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/dodonew/online/ui/AddAddressActivity;->exitToBottomAnimation()V

    .line 195
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 196
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 189
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 190
    return-void
.end method
