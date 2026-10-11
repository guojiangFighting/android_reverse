.class public Lcom/dodonew/online/ui/FindPasswordActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "FindPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dodonew/online/fragment/FindStepFargment2$OnGetCodeListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private btnNext:Landroid/widget/Button;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private isAgain:Z

.field private isBack:Z

.field private mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

.field private mobile:Ljava/lang/String;

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

.field private step1:Lcom/dodonew/online/fragment/FindStepFargment1;

.field private step2:Lcom/dodonew/online/fragment/FindStepFargment2;

.field private step3:Lcom/dodonew/online/fragment/FindStepFargment3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->position:I

    .line 48
    iput-boolean v1, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->isBack:Z

    .line 49
    iput-boolean v1, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->isAgain:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/FindPasswordActivity;)Lcom/dodonew/online/fragment/FindStepFargment2;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/FindPasswordActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->step2:Lcom/dodonew/online/fragment/FindStepFargment2;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/FindPasswordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/FindPasswordActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->isAgain:Z

    return v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/FindPasswordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/FindPasswordActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->showStep2()V

    return-void
.end method

.method static synthetic access$302(Lcom/dodonew/online/ui/FindPasswordActivity;Lcom/dodonew/online/bean/PhoneCode;)Lcom/dodonew/online/bean/PhoneCode;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/FindPasswordActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/PhoneCode;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->phoneCode:Lcom/dodonew/online/bean/PhoneCode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/FindPasswordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/FindPasswordActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->showStep3()V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/FindPasswordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/FindPasswordActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->findFinish()V

    return-void
.end method

.method private click()V
    .locals 4

    .prologue
    .line 116
    iget v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->position:I

    packed-switch v2, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->step1:Lcom/dodonew/online/fragment/FindStepFargment1;

    invoke-virtual {v2}, Lcom/dodonew/online/fragment/FindStepFargment1;->getMobile()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mobile:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mobile:Ljava/lang/String;

    invoke-static {v2}, Lcom/dodonew/online/util/Utils;->isMobileNO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->isAgain:Z

    .line 121
    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mobile:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/dodonew/online/ui/FindPasswordActivity;->sendMobileCode(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7."

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/FindPasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->step2:Lcom/dodonew/online/fragment/FindStepFargment2;

    invoke-virtual {v2}, Lcom/dodonew/online/fragment/FindStepFargment2;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801."

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/FindPasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mobile:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->verificationCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0    # "code":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->step3:Lcom/dodonew/online/fragment/FindStepFargment3;

    invoke-virtual {v2}, Lcom/dodonew/online/fragment/FindStepFargment3;->getNewPwd()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "newPwd":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    const-string v2, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/FindPasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mobile:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->phoneCode:Lcom/dodonew/online/bean/PhoneCode;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/PhoneCode;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/dodonew/online/ui/FindPasswordActivity;->modifyNewPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private findFinish()V
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->finish()V

    .line 271
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/dodonew/online/ui/LoginActivity;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/dodonew/online/DodonewOnlineApplication;->removeAllActivity([Ljava/lang/Class;)Z

    .line 272
    return-void
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f0d00b1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->setTitle(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->setNavigationIcon(I)V

    .line 74
    const v0, 0x7f0d00b1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->btnNext:Landroid/widget/Button;

    .line 75
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 76
    invoke-static {}, Lcom/dodonew/online/fragment/FindStepFargment1;->newInstance()Lcom/dodonew/online/fragment/FindStepFargment1;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->step1:Lcom/dodonew/online/fragment/FindStepFargment1;

    .line 77
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->step1:Lcom/dodonew/online/fragment/FindStepFargment1;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/ui/FindPasswordActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    .line 79
    return-void
.end method

.method private modifyNewPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "newPwd"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lcom/dodonew/online/ui/FindPasswordActivity$4;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/FindPasswordActivity$4;-><init>(Lcom/dodonew/online/ui/FindPasswordActivity;)V

    .line 183
    invoke-virtual {v0}, Lcom/dodonew/online/ui/FindPasswordActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 184
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 185
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    const-string v1, "newPwd"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    const-string v1, "token"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "user/findPwd/modifyNewPwd"

    iget-object v1, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/FindPasswordActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 189
    return-void
.end method

.method private registerSMSReceiver()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lcom/dodonew/online/manager/ShortMsgHelper;

    const/4 v1, 0x0

    const-string v2, "\u561f\u561f\u725b\u5728\u7ebf"

    const/4 v3, 0x6

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/dodonew/online/manager/ShortMsgHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

    .line 83
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-virtual {v0}, Lcom/dodonew/online/manager/ShortMsgHelper;->register()V

    .line 84
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

    new-instance v1, Lcom/dodonew/online/ui/FindPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/FindPasswordActivity$1;-><init>(Lcom/dodonew/online/ui/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/manager/ShortMsgHelper;->setOnSmsAuthCodeListener(Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;)V

    .line 94
    return-void
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isFirst"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 282
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 283
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0d00b0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 284
    if-nez p2, :cond_0

    .line 285
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 289
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
    .line 197
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->showProgress()V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/FindPasswordActivity$5;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/FindPasswordActivity$5;-><init>(Lcom/dodonew/online/ui/FindPasswordActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/FindPasswordActivity$6;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/FindPasswordActivity$6;-><init>(Lcom/dodonew/online/ui/FindPasswordActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 228
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 229
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method private sendMobileCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Lcom/dodonew/online/ui/FindPasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/FindPasswordActivity$2;-><init>(Lcom/dodonew/online/ui/FindPasswordActivity;)V

    .line 152
    invoke-virtual {v0}, Lcom/dodonew/online/ui/FindPasswordActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 153
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "user/findPwd/sendMobileCode"

    iget-object v1, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/FindPasswordActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 157
    return-void
.end method

.method private showStep2()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mobile:Ljava/lang/String;

    invoke-static {v0}, Lcom/dodonew/online/fragment/FindStepFargment2;->newInstance(Ljava/lang/String;)Lcom/dodonew/online/fragment/FindStepFargment2;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->step2:Lcom/dodonew/online/fragment/FindStepFargment2;

    .line 238
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->step2:Lcom/dodonew/online/fragment/FindStepFargment2;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/ui/FindPasswordActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 239
    const/4 v0, 0x2

    iput v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->position:I

    .line 240
    return-void
.end method

.method private showStep3()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mobile:Ljava/lang/String;

    invoke-static {v0}, Lcom/dodonew/online/fragment/FindStepFargment3;->newInstance(Ljava/lang/String;)Lcom/dodonew/online/fragment/FindStepFargment3;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->step3:Lcom/dodonew/online/fragment/FindStepFargment3;

    .line 247
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->step3:Lcom/dodonew/online/fragment/FindStepFargment3;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/ui/FindPasswordActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 248
    const/4 v0, 0x3

    iput v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->position:I

    .line 249
    return-void
.end method

.method private verificationCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "mobileCode"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Lcom/dodonew/online/ui/FindPasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/FindPasswordActivity$3;-><init>(Lcom/dodonew/online/ui/FindPasswordActivity;)V

    .line 167
    invoke-virtual {v0}, Lcom/dodonew/online/ui/FindPasswordActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 168
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 169
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    const-string v1, "mobileCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "user/findPwd"

    iget-object v1, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/FindPasswordActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 172
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->btnNext:Landroid/widget/Button;

    invoke-static {p0, v0}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->isBack:Z

    .line 110
    invoke-direct {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->click()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x7f0d00b1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->initView()V

    .line 64
    invoke-direct {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->initEvent()V

    .line 65
    invoke-direct {p0}, Lcom/dodonew/online/ui/FindPasswordActivity;->registerSMSReceiver()V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 310
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mShortMsgHelper:Lcom/dodonew/online/manager/ShortMsgHelper;

    invoke-virtual {v0}, Lcom/dodonew/online/manager/ShortMsgHelper;->unRigister()V

    .line 313
    :cond_0
    return-void
.end method

.method public onGetCode()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->isAgain:Z

    .line 266
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->mobile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->sendMobileCode(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 253
    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 254
    .local v0, "count":I
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    if-lez v0, :cond_0

    .line 255
    iput-boolean v1, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->isBack:Z

    .line 256
    iget v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->position:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->position:I

    .line 257
    iget-object v2, p0, Lcom/dodonew/online/ui/FindPasswordActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 260
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/dodonew/online/base/TitleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 302
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 303
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 305
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 297
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 299
    return-void
.end method
