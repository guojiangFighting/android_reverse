.class public Lcom/dodonew/online/ui/MainActivity;
.super Lcom/dodonew/online/base/BasicActivity;
.source "MainActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private domainId:Ljava/lang/String;

.field private firstime:J

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private fromFragment:Landroid/support/v4/app/Fragment;

.field private homeFragment:Lcom/dodonew/online/fragment/HomeFragment;

.field private mContent:Landroid/support/v4/app/Fragment;

.field private mGson:Lcom/google/gson/Gson;

.field private memberId:Ljava/lang/String;

.field private myFragment:Lcom/dodonew/online/fragment/MyFragment;

.field private netBarId:Ljava/lang/String;

.field private netbarFragment:Lcom/dodonew/online/fragment/NetbarFragment;

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

.field private pos:I

.field private rb_net:Landroid/widget/RadioButton;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private rg:Landroid/widget/RadioGroup;

.field private tipsView:Lcom/dodonew/online/view/TipsView;

.field private toFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dodonew/online/base/BasicActivity;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dodonew/online/ui/MainActivity;->firstime:J

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/ui/MainActivity;->pos:I

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->para:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/MainActivity;)Lcom/dodonew/online/fragment/HomeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MainActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->homeFragment:Lcom/dodonew/online/fragment/HomeFragment;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/ui/MainActivity;Lcom/dodonew/online/fragment/HomeFragment;)Lcom/dodonew/online/fragment/HomeFragment;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MainActivity;
    .param p1, "x1"    # Lcom/dodonew/online/fragment/HomeFragment;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dodonew/online/ui/MainActivity;->homeFragment:Lcom/dodonew/online/fragment/HomeFragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/MainActivity;->getToFragment(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/MainActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MainActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->fromFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/MainActivity;)Lcom/dodonew/online/fragment/NetbarFragment;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MainActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->netbarFragment:Lcom/dodonew/online/fragment/NetbarFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/dodonew/online/ui/MainActivity;Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/fragment/NetbarFragment;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MainActivity;
    .param p1, "x1"    # Lcom/dodonew/online/fragment/NetbarFragment;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dodonew/online/ui/MainActivity;->netbarFragment:Lcom/dodonew/online/fragment/NetbarFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/MainActivity;)Lcom/dodonew/online/fragment/MyFragment;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MainActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->myFragment:Lcom/dodonew/online/fragment/MyFragment;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dodonew/online/ui/MainActivity;Lcom/dodonew/online/fragment/MyFragment;)Lcom/dodonew/online/fragment/MyFragment;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MainActivity;
    .param p1, "x1"    # Lcom/dodonew/online/fragment/MyFragment;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dodonew/online/ui/MainActivity;->myFragment:Lcom/dodonew/online/fragment/MyFragment;

    return-object p1
.end method

.method private getToFragment(I)V
    .locals 2
    .param p1, "postion"    # I

    .prologue
    .line 140
    iget v0, p0, Lcom/dodonew/online/ui/MainActivity;->pos:I

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->homeFragment:Lcom/dodonew/online/fragment/HomeFragment;

    iput-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->fromFragment:Landroid/support/v4/app/Fragment;

    .line 147
    :cond_0
    :goto_0
    iput p1, p0, Lcom/dodonew/online/ui/MainActivity;->pos:I

    .line 148
    return-void

    .line 142
    :cond_1
    iget v0, p0, Lcom/dodonew/online/ui/MainActivity;->pos:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->netbarFragment:Lcom/dodonew/online/fragment/NetbarFragment;

    iput-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->fromFragment:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 144
    :cond_2
    iget v0, p0, Lcom/dodonew/online/ui/MainActivity;->pos:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->myFragment:Lcom/dodonew/online/fragment/MyFragment;

    iput-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->fromFragment:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 66
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/ui/MainActivity;->mGson:Lcom/google/gson/Gson;

    .line 70
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "page"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "page":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    if-nez v2, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/dodonew/online/ui/LoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MainActivity;->finish()V

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/ui/MainActivity;->mGson:Lcom/google/gson/Gson;

    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DodonewUser"

    invoke-static {p0, v2, v3}, Lcom/dodonew/online/util/Utils;->saveJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/dodonew/online/ui/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MainActivity$1;-><init>(Lcom/dodonew/online/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 137
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f0d01a9

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/view/TipsView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->tipsView:Lcom/dodonew/online/view/TipsView;

    .line 89
    const v0, 0x7f0d01aa

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->rg:Landroid/widget/RadioGroup;

    .line 90
    const v0, 0x7f0d01ac

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->rb_net:Landroid/widget/RadioButton;

    .line 91
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 92
    invoke-static {}, Lcom/dodonew/online/fragment/HomeFragment;->newInstance()Lcom/dodonew/online/fragment/HomeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->homeFragment:Lcom/dodonew/online/fragment/HomeFragment;

    .line 93
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->homeFragment:Lcom/dodonew/online/fragment/HomeFragment;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 94
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->homeFragment:Lcom/dodonew/online/fragment/HomeFragment;

    iput-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->mContent:Landroid/support/v4/app/Fragment;

    .line 95
    return-void
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0d01ae

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 104
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParserError"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    .local v0, "secondtime":J
    iget-wide v2, p0, Lcom/dodonew/online/ui/MainActivity;->firstime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 182
    const-string v2, "\u518d\u6309\u4e00\u6b21\u8fd4\u56de\u952e\u9000\u51fa"

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/MainActivity;->showToast(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dodonew/online/ui/MainActivity;->firstime:J

    .line 184
    const/4 v2, 0x1

    .line 191
    .end local v0    # "secondtime":J
    :goto_0
    return v2

    .line 186
    .restart local v0    # "secondtime":J
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MainActivity;->finish()V

    .line 188
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->AppExit(Landroid/content/Context;)V

    .line 191
    .end local v0    # "secondtime":J
    :cond_1
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BasicActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/dodonew/online/base/BasicActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 159
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 160
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->tipsView:Lcom/dodonew/online/view/TipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/TipsView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity;->tipsView:Lcom/dodonew/online/view/TipsView;

    const-string v1, "tips"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/TipsView;->setTips(Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget v0, Lcom/dodonew/online/fragment/NetbarFragment;->requestCode:I

    if-ne p1, v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/dodonew/online/ui/MainActivity;->netbarFragment:Lcom/dodonew/online/fragment/NetbarFragment;

    const-string v0, "city"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/City;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/fragment/NetbarFragment;->setCity(Lcom/dodonew/online/bean/City;)V

    goto :goto_0

    .line 166
    :cond_2
    sget v0, Lcom/dodonew/online/fragment/NetbarFragment;->requestCode:I

    if-ne p2, v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/dodonew/online/ui/MainActivity;->netbarFragment:Lcom/dodonew/online/fragment/NetbarFragment;

    const-string v0, "city"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/City;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/fragment/NetbarFragment;->setCity(Lcom/dodonew/online/bean/City;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MainActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/dodonew/online/ui/MainActivity;->initData()V

    .line 61
    invoke-direct {p0}, Lcom/dodonew/online/ui/MainActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/dodonew/online/ui/MainActivity;->initEvent()V

    .line 63
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lcom/dodonew/online/base/BasicActivity;->onDestroy()V

    .line 235
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/dodonew/online/base/BasicActivity;->onPause()V

    .line 206
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 208
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/dodonew/online/base/BasicActivity;->onResume()V

    .line 200
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    invoke-static {}, Lcom/dodonew/online/fragment/HomeFragment;->newInstance()Lcom/dodonew/online/fragment/HomeFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 229
    :cond_0
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BasicActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method public switchContent(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "from"    # Landroid/support/v4/app/Fragment;
    .param p2, "to"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/dodonew/online/ui/MainActivity;->mContent:Landroid/support/v4/app/Fragment;

    if-eq v1, p2, :cond_0

    .line 213
    iput-object p2, p0, Lcom/dodonew/online/ui/MainActivity;->mContent:Landroid/support/v4/app/Fragment;

    .line 214
    iget-object v1, p0, Lcom/dodonew/online/ui/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 215
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d01ae

    invoke-virtual {v1, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 221
    .end local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 218
    .restart local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
