.class public Lcom/dodonew/online/ui/AboutActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    return-void
.end method

.method private checkUpdate()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "\u5173\u4e8e\u6211\u4eec"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AboutActivity;->setTitle(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AboutActivity;->setNavigationIcon(I)V

    .line 30
    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/dodonew/online/ui/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 58
    :goto_0
    :pswitch_0
    return-void

    .line 44
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    const-string v2, "\u7528\u6237\u534f\u8bae"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "url"

    const-string v2, "http://wxpay.dodonew.com/share/agreement.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 50
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel:400-668-3755"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 51
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-direct {p0}, Lcom/dodonew/online/ui/AboutActivity;->checkUpdate()V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d008c
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AboutActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lcom/dodonew/online/ui/AboutActivity;->initView()V

    .line 24
    invoke-direct {p0}, Lcom/dodonew/online/ui/AboutActivity;->initEvent()V

    .line 25
    return-void
.end method
