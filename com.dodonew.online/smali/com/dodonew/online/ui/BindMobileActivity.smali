.class public Lcom/dodonew/online/ui/BindMobileActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "BindMobileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dodonew/online/interfaces/OnGetCodeListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private btnNext:Landroid/widget/Button;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private isAgain:Z

.field private isBack:Z

.field private mobile:Ljava/lang/String;

.field public oldPhone:Ljava/lang/String;

.field private operaType:Ljava/lang/String;

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

.field private phoneCode:Lcom/dodonew/online/bean/PhoneCode;

.field private position:I

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private step1:Lcom/dodonew/online/fragment/BindMobileFragment1;

.field private step2:Lcom/dodonew/online/fragment/BindMobileFragment2;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->position:I

    .line 46
    iput-boolean v1, p0, Lcom/dodonew/online/ui/BindMobileActivity;->isBack:Z

    .line 47
    iput-boolean v1, p0, Lcom/dodonew/online/ui/BindMobileActivity;->isAgain:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/BindMobileActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindMobileActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->btnNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/BindMobileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindMobileActivity;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->isAgain:Z

    return v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/BindMobileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindMobileActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dodonew/online/ui/BindMobileActivity;->showStep2()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/BindMobileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindMobileActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dodonew/online/ui/BindMobileActivity;->showStep3()V

    return-void
.end method

.method private bindMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "newPhone"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "mobileCode"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Lcom/dodonew/online/ui/BindMobileActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/BindMobileActivity$3;-><init>(Lcom/dodonew/online/ui/BindMobileActivity;)V

    .line 138
    invoke-virtual {v0}, Lcom/dodonew/online/ui/BindMobileActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 140
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    const-string v1, "phone"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    const-string v1, "newValCode"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    const-string v1, "newPhone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "phoneLogin/changePhone"

    iget-object v1, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/BindMobileActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 145
    return-void
.end method

.method private bindMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "mobileCode"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lcom/dodonew/online/ui/BindMobileActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/BindMobileActivity$2;-><init>(Lcom/dodonew/online/ui/BindMobileActivity;)V

    .line 121
    invoke-virtual {v0}, Lcom/dodonew/online/ui/BindMobileActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 122
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    const-string v1, "phone"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    const-string v1, "valCode"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    const-string v1, "userPwd"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "phoneLogin/bindPhone"

    iget-object v1, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/BindMobileActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 128
    return-void
.end method

.method private click()V
    .locals 4

    .prologue
    .line 201
    iget v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->position:I

    packed-switch v2, :pswitch_data_0

    .line 235
    :goto_0
    :pswitch_0
    return-void

    .line 203
    :pswitch_1
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->step1:Lcom/dodonew/online/fragment/BindMobileFragment1;

    invoke-virtual {v2}, Lcom/dodonew/online/fragment/BindMobileFragment1;->getMobile()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->mobile:Ljava/lang/String;

    .line 204
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->mobile:Ljava/lang/String;

    invoke-static {v2}, Lcom/dodonew/online/util/Utils;->isMobileNO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->isAgain:Z

    .line 206
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->mobile:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/ui/BindMobileActivity;->operaType:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/dodonew/online/ui/BindMobileActivity;->sendMobileCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7."

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/BindMobileActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->step2:Lcom/dodonew/online/fragment/BindMobileFragment2;

    invoke-virtual {v2}, Lcom/dodonew/online/fragment/BindMobileFragment2;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "code":Ljava/lang/String;
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->step2:Lcom/dodonew/online/fragment/BindMobileFragment2;

    invoke-virtual {v2}, Lcom/dodonew/online/fragment/BindMobileFragment2;->getPwd()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "pwd":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    const-string v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801."

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/BindMobileActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->operaType:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/ui/BindMobileActivity;->mobile:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/dodonew/online/ui/BindMobileActivity;->bindMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->mobile:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/ui/BindMobileActivity;->oldPhone:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/dodonew/online/ui/BindMobileActivity;->bindMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private findFinish()V
    .locals 0

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/dodonew/online/ui/BindMobileActivity;->finish()V

    .line 280
    return-void
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f0d00b1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/BindMobileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/dodonew/online/ui/BindMobileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "operaType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->operaType:Ljava/lang/String;

    .line 71
    const-string v2, "oldPhone"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->oldPhone:Ljava/lang/String;

    .line 72
    const-string v1, ""

    .line 73
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->operaType:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const-string v1, "\u7ed1\u5b9a\u624b\u673a"

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/BindMobileActivity;->setTitle(Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/BindMobileActivity;->setNavigationIcon(I)V

    .line 80
    const v2, 0x7f0d00b1

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/BindMobileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->btnNext:Landroid/widget/Button;

    .line 81
    invoke-virtual {p0}, Lcom/dodonew/online/ui/BindMobileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 82
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->operaType:Ljava/lang/String;

    invoke-static {v2}, Lcom/dodonew/online/fragment/BindMobileFragment1;->newInstance(Ljava/lang/String;)Lcom/dodonew/online/fragment/BindMobileFragment1;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->step1:Lcom/dodonew/online/fragment/BindMobileFragment1;

    .line 83
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->step1:Lcom/dodonew/online/fragment/BindMobileFragment1;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/dodonew/online/ui/BindMobileActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    .line 85
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->userId:Ljava/lang/String;

    .line 86
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->operaType:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const-string v1, "\u66f4\u6362\u7ed1\u5b9a\u624b\u673a"

    goto :goto_0
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isFirst"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 290
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 291
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0d00b0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 292
    if-nez p2, :cond_0

    .line 293
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 297
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
    .line 154
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/BindMobileActivity;->showProgress()V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/BindMobileActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/BindMobileActivity$4;-><init>(Lcom/dodonew/online/ui/BindMobileActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/BindMobileActivity$5;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/BindMobileActivity$5;-><init>(Lcom/dodonew/online/ui/BindMobileActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 185
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 186
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method private sendMobileCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "operaType"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Lcom/dodonew/online/ui/BindMobileActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/BindMobileActivity$1;-><init>(Lcom/dodonew/online/ui/BindMobileActivity;)V

    .line 103
    invoke-virtual {v0}, Lcom/dodonew/online/ui/BindMobileActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    const-string v1, "operaType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "phoneLogin/sendMobileCode"

    iget-object v1, p0, Lcom/dodonew/online/ui/BindMobileActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/BindMobileActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 109
    return-void
.end method

.method private showStep2()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->mobile:Ljava/lang/String;

    iget-object v1, p0, Lcom/dodonew/online/ui/BindMobileActivity;->operaType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/BindMobileFragment2;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/dodonew/online/fragment/BindMobileFragment2;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->step2:Lcom/dodonew/online/fragment/BindMobileFragment2;

    .line 242
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->step2:Lcom/dodonew/online/fragment/BindMobileFragment2;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/ui/BindMobileActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 243
    const/4 v0, 0x2

    iput v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->position:I

    .line 244
    return-void
.end method

.method private showStep3()V
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    iget-object v1, p0, Lcom/dodonew/online/ui/BindMobileActivity;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/bean/User;->setPhone(Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DodonewUser"

    invoke-static {p0, v0, v1}, Lcom/dodonew/online/util/Utils;->saveJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/dodonew/online/ui/BindMobileActivity;->finish()V

    .line 258
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->btnNext:Landroid/widget/Button;

    invoke-static {p0, v0}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->isBack:Z

    .line 195
    invoke-direct {p0}, Lcom/dodonew/online/ui/BindMobileActivity;->click()V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x7f0d00b1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/BindMobileActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/dodonew/online/ui/BindMobileActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/dodonew/online/ui/BindMobileActivity;->initEvent()V

    .line 63
    return-void
.end method

.method public onGetCode()V
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->isAgain:Z

    .line 275
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity;->mobile:Ljava/lang/String;

    iget-object v1, p0, Lcom/dodonew/online/ui/BindMobileActivity;->operaType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/ui/BindMobileActivity;->sendMobileCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 262
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 263
    .local v0, "count":I
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    if-lez v0, :cond_0

    .line 264
    iput-boolean v1, p0, Lcom/dodonew/online/ui/BindMobileActivity;->isBack:Z

    .line 265
    iget v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->position:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->position:I

    .line 266
    iget-object v2, p0, Lcom/dodonew/online/ui/BindMobileActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 269
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/dodonew/online/base/TitleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 308
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 309
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 302
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 303
    return-void
.end method
