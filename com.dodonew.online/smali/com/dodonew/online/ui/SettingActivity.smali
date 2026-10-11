.class public Lcom/dodonew/online/ui/SettingActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;


# instance fields
.field private cbNotification:Lcom/dodonew/online/widget/SmoothCheckBox;

.field private informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/SettingActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dodonew/online/ui/SettingActivity;->logout()V

    return-void
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dodonew/online/ui/SettingActivity;->cbNotification:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->setOnCheckedChangeListener(Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;)V

    .line 50
    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0d0117

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0d0118

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f0d0119

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0d011a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0d0115

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 39
    const-string v1, "\u8bbe\u7f6e"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SettingActivity;->setTitle(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SettingActivity;->setNavigationIcon(I)V

    .line 41
    const v1, 0x7f0d0116

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/SmoothCheckBox;

    iput-object v1, p0, Lcom/dodonew/online/ui/SettingActivity;->cbNotification:Lcom/dodonew/online/widget/SmoothCheckBox;

    .line 42
    const-string v1, "cbNews"

    invoke-static {p0, v1}, Lcom/dodonew/online/util/Utils;->getBooleanData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 43
    .local v0, "isNews":Z
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/dodonew/online/ui/SettingActivity;->cbNotification:Lcom/dodonew/online/widget/SmoothCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/SmoothCheckBox;->setChecked(Z)V

    .line 46
    :cond_0
    return-void
.end method

.method private logout()V
    .locals 5

    .prologue
    .line 116
    const-string v1, ""

    const-string v2, "DodonewUser"

    invoke-static {p0, v1, v2}, Lcom/dodonew/online/util/Utils;->saveJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/dodonew/online/ui/LoginActivity;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/dodonew/online/DodonewOnlineApplication;->removeAllActivity([Ljava/lang/Class;)Z

    .line 120
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/dodonew/online/widget/SmoothCheckBox;Z)V
    .locals 1
    .param p1, "checkBox"    # Lcom/dodonew/online/widget/SmoothCheckBox;
    .param p2, "isChecked"    # Z

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/dodonew/online/widget/SmoothCheckBox;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 143
    :pswitch_0
    const-string v0, "cbNews"

    invoke-static {p0, p2, v0}, Lcom/dodonew/online/util/Utils;->saveBooleanData(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7f0d0116
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x10000000

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 63
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    const-string v5, "tel:400-668-3755"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_1
    const-string v4, "com.tencent.mobileqq"

    invoke-static {p0, v4}, Lcom/dodonew/online/util/Utils;->isQQClientAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    const-string v3, "mqqwpa://im/chat?chat_type=wpa&uin=187168925"

    .line 70
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/dodonew/online/ui/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/dodonew/online/ui/WebViewActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "title"

    const-string v5, "\u5e38\u89c1\u95ee\u9898"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v4, "url"

    const-string v5, "http://wxpay.dodonew.com/share/faq.html"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dodonew/online/ui/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 85
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SettingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/dodonew/online/ui/AboutActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 97
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_5
    const-string v4, "\u9000\u51fa\u767b\u5f55"

    invoke-static {v4}, Lcom/dodonew/online/widget/dialog/InformationDialog;->newInstance(Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/InformationDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/dodonew/online/ui/SettingActivity;->informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

    .line 98
    iget-object v4, p0, Lcom/dodonew/online/ui/SettingActivity;->informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

    invoke-virtual {p0}, Lcom/dodonew/online/ui/SettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "informationDialog"

    invoke-virtual {v4, v5, v6}, Lcom/dodonew/online/widget/dialog/InformationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/dodonew/online/ui/SettingActivity;->informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

    new-instance v5, Lcom/dodonew/online/ui/SettingActivity$1;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/SettingActivity$1;-><init>(Lcom/dodonew/online/ui/SettingActivity;)V

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/dialog/InformationDialog;->setOnOkClickListener(Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;)V

    goto/16 :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d008e -> :sswitch_0
        0x7f0d0115 -> :sswitch_5
        0x7f0d0117 -> :sswitch_1
        0x7f0d0118 -> :sswitch_2
        0x7f0d0119 -> :sswitch_3
        0x7f0d011a -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/SettingActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/dodonew/online/ui/SettingActivity;->initView()V

    .line 35
    invoke-direct {p0}, Lcom/dodonew/online/ui/SettingActivity;->initEvent()V

    .line 36
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 135
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 129
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 131
    return-void
.end method
