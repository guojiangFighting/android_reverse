.class public Lcom/dodonew/online/ui/UserInfoEditorActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "UserInfoEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

.field private etAddress:Landroid/widget/EditText;

.field private etName:Landroid/widget/EditText;

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

.field private sexPicker:Lcom/dodonew/online/widget/picker/SexPicker;

.field private tvBirth:Landroid/widget/TextView;

.field private tvSex:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/UserInfoEditorActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/UserInfoEditorActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->tvSex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/UserInfoEditorActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/UserInfoEditorActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->tvBirth:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/UserInfoEditorActivity;Lcom/dodonew/online/bean/User;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/UserInfoEditorActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/User;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->setUserInfo(Lcom/dodonew/online/bean/User;)V

    return-void
.end method

.method private checkIsNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "liveArea"    # Ljava/lang/String;
    .param p3, "sex"    # Ljava/lang/String;
    .param p4, "birthday"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->etAddress:Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 157
    const-string v0, ""

    .line 158
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    const-string v0, "\u8bf7\u8f93\u5165\u6635\u79f0"

    .line 167
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    const/4 v1, 0x1

    .line 171
    :goto_1
    return v1

    .line 160
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    const-string v0, "\u8bf7\u8f93\u5165\u6240\u5728\u5730"

    goto :goto_0

    .line 162
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    const-string v0, "\u8bf7\u9009\u62e9\u6027\u522b"

    goto :goto_0

    .line 164
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string v0, "\u8bf7\u9009\u62e9\u751f\u65e5"

    goto :goto_0

    .line 170
    :cond_4
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->showToast(Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 73
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    if-eqz v2, :cond_2

    .line 74
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->userId:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->etName:Landroid/widget/EditText;

    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getSex()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "sex":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    const-string v1, "\u7537"

    .line 82
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->tvSex:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->tvBirth:Landroid/widget/TextView;

    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getLiveArea()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "liveArea":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .end local v0    # "liveArea":Ljava/lang/String;
    .end local v1    # "sex":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->para:Ljava/util/Map;

    .line 91
    return-void

    .line 79
    .restart local v1    # "sex":Ljava/lang/String;
    :cond_3
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string v1, "\u5973"

    goto :goto_0
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f0d012a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0d0139

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "\u7f16\u8f91\u4e2a\u4eba\u4fe1\u606f"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->setTitle(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->setNavigationIcon(I)V

    .line 66
    const v0, 0x7f0d0137

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->etName:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f0d0138

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->etAddress:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f0d012b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->tvSex:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0d012d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->tvBirth:Landroid/widget/TextView;

    .line 70
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
    .line 192
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->showProgress()V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/UserInfoEditorActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/UserInfoEditorActivity$4;-><init>(Lcom/dodonew/online/ui/UserInfoEditorActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/UserInfoEditorActivity$5;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity$5;-><init>(Lcom/dodonew/online/ui/UserInfoEditorActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 214
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 215
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method private setUserInfo(Lcom/dodonew/online/bean/User;)V
    .locals 2
    .param p1, "user"    # Lcom/dodonew/online/bean/User;

    .prologue
    .line 219
    sput-object p1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 221
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DodonewUser"

    invoke-static {p0, v0, v1}, Lcom/dodonew/online/util/Utils;->saveJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->finish()V

    .line 223
    return-void
.end method

.method private showSexPicker()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->sexPicker:Lcom/dodonew/online/widget/picker/SexPicker;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/dodonew/online/widget/picker/SexPicker;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/picker/SexPicker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->sexPicker:Lcom/dodonew/online/widget/picker/SexPicker;

    .line 105
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->sexPicker:Lcom/dodonew/online/widget/picker/SexPicker;

    new-instance v1, Lcom/dodonew/online/ui/UserInfoEditorActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity$1;-><init>(Lcom/dodonew/online/ui/UserInfoEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/picker/SexPicker;->setOnOptionPickListener(Lcom/dodonew/online/widget/picker/OptionPicker$OnOptionPickListener;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->sexPicker:Lcom/dodonew/online/widget/picker/SexPicker;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/picker/SexPicker;->show()V

    .line 113
    return-void
.end method

.method private updateUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "liveArea"    # Ljava/lang/String;
    .param p3, "sex"    # Ljava/lang/String;
    .param p4, "birthday"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Lcom/dodonew/online/ui/UserInfoEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity$3;-><init>(Lcom/dodonew/online/ui/UserInfoEditorActivity;)V

    .line 176
    invoke-virtual {v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 177
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 178
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->para:Ljava/util/Map;

    const-string v1, "nickName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->para:Ljava/util/Map;

    const-string v1, "liveArea"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->para:Ljava/util/Map;

    const-string v1, "sex"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->para:Ljava/util/Map;

    const-string v1, "birthday"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "user/updUer"

    iget-object v1, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 184
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 229
    :sswitch_0
    invoke-direct {p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->showSexPicker()V

    goto :goto_0

    .line 232
    :sswitch_1
    invoke-virtual {p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->showBirthPicker()V

    goto :goto_0

    .line 235
    :sswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "nickName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "liveArea":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->tvSex:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "sex":Ljava/lang/String;
    const-string v4, "\u7537"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    const-string v3, "1"

    .line 243
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->tvBirth:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "birthday":Ljava/lang/String;
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->checkIsNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->updateUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    .end local v0    # "birthday":Ljava/lang/String;
    :cond_1
    const-string v3, "2"

    goto :goto_1

    .line 227
    :sswitch_data_0
    .sparse-switch
        0x7f0d0099 -> :sswitch_2
        0x7f0d012a -> :sswitch_0
        0x7f0d0139 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->initView()V

    .line 59
    invoke-direct {p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->initData()V

    .line 60
    invoke-direct {p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->initEvent()V

    .line 61
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 264
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 266
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 258
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 260
    return-void
.end method

.method public showBirthPicker()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 117
    iget-object v6, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

    if-nez v6, :cond_0

    .line 118
    new-instance v6, Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-direct {v6, p0}, Lcom/dodonew/online/widget/picker/DatePicker;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 120
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 121
    .local v5, "year":I
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 122
    .local v4, "month":I
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 123
    .local v3, "day":I
    iget-object v6, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

    add-int/lit8 v7, v5, -0x64

    invoke-virtual {v6, v7, v5}, Lcom/dodonew/online/widget/picker/DatePicker;->setRange(II)V

    .line 124
    sget-object v6, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    if-eqz v6, :cond_4

    .line 125
    sget-object v6, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/User;->getBirthday()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "birthday":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 127
    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "birthStr":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 129
    aget-object v6, v0, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 130
    iget-object v6, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

    aget-object v7, v0, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v8, v0, v9

    .line 131
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v0, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 130
    invoke-virtual {v6, v7, v8, v9}, Lcom/dodonew/online/widget/picker/DatePicker;->setSelectedItem(III)V

    .line 144
    .end local v0    # "birthStr":[Ljava/lang/String;
    .end local v1    # "birthday":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

    new-instance v7, Lcom/dodonew/online/ui/UserInfoEditorActivity$2;

    invoke-direct {v7, p0}, Lcom/dodonew/online/ui/UserInfoEditorActivity$2;-><init>(Lcom/dodonew/online/ui/UserInfoEditorActivity;)V

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/picker/DatePicker;->setOnDatePickListener(Lcom/dodonew/online/widget/picker/DatePicker$OnDatePickListener;)V

    .line 151
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "day":I
    .end local v4    # "month":I
    .end local v5    # "year":I
    :cond_0
    iget-object v6, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-virtual {v6}, Lcom/dodonew/online/widget/picker/DatePicker;->show()V

    .line 152
    return-void

    .line 133
    .restart local v0    # "birthStr":[Ljava/lang/String;
    .restart local v1    # "birthday":Ljava/lang/String;
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "day":I
    .restart local v4    # "month":I
    .restart local v5    # "year":I
    :cond_1
    iget-object v6, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-virtual {v6, v5, v4, v3}, Lcom/dodonew/online/widget/picker/DatePicker;->setSelectedItem(III)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v6, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-virtual {v6, v5, v4, v3}, Lcom/dodonew/online/widget/picker/DatePicker;->setSelectedItem(III)V

    goto :goto_0

    .line 139
    .end local v0    # "birthStr":[Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-virtual {v6, v5, v4, v3}, Lcom/dodonew/online/widget/picker/DatePicker;->setSelectedItem(III)V

    goto :goto_0

    .line 142
    .end local v1    # "birthday":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity;->datePicker:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-virtual {v6, v5, v4, v3}, Lcom/dodonew/online/widget/picker/DatePicker;->setSelectedItem(III)V

    goto :goto_0
.end method
