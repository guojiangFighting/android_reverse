.class public Lcom/dodonew/online/ui/OrderBarActivity;
.super Lcom/dodonew/online/base/BaseActivity;
.source "OrderBarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dodonew/online/interfaces/OnOrderTableListener;
.implements Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;


# static fields
.field public static final RECEIVER_ORDER_REFRESH:Ljava/lang/String; = "com.dodonew.online.receiver.orderrefresh"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private dateTime:Ljava/lang/String;

.field private domainId:Ljava/lang/String;

.field private memberId:Ljava/lang/String;

.field private netBarId:Ljava/lang/String;

.field private now:Ljava/util/Calendar;

.field private nowDate:Ljava/util/Date;

.field private onlyTimeFragment:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

.field private openId:Ljava/lang/String;

.field private orderRefreshReceiver:Landroid/content/BroadcastReceiver;

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

.field private sdf:Ljava/text/SimpleDateFormat;

.field private sdf_:Ljava/text/SimpleDateFormat;

.field private slideDateTimeListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

.field private slideDateTimePicker:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private tableArea:Lcom/dodonew/online/bean/TableArea;

.field private tableAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/TableArea;",
            ">;"
        }
    .end annotation
.end field

.field private tablePagerAdapter:Lcom/dodonew/online/adapter/TablePagerAdapter;

.field private tag:Ljava/lang/String;

.field private termId:Ljava/lang/String;

.field private tvDate:Landroid/widget/TextView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->sdf_:Ljava/text/SimpleDateFormat;

    .line 273
    new-instance v0, Lcom/dodonew/online/ui/OrderBarActivity$5;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/OrderBarActivity$5;-><init>(Lcom/dodonew/online/ui/OrderBarActivity;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->slideDateTimeListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    .line 325
    new-instance v0, Lcom/dodonew/online/ui/OrderBarActivity$6;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/OrderBarActivity$6;-><init>(Lcom/dodonew/online/ui/OrderBarActivity;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->orderRefreshReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/OrderBarActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/OrderBarActivity;Lcom/dodonew/online/bean/TableAreaResult$Center;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderBarActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/TableAreaResult$Center;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/OrderBarActivity;->setTableAreas(Lcom/dodonew/online/bean/TableAreaResult$Center;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/OrderBarActivity;Lcom/dodonew/online/bean/OrderResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderBarActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/OrderResult;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/OrderBarActivity;->setOrderResult(Lcom/dodonew/online/bean/OrderResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/OrderBarActivity;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->sdf:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/OrderBarActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tvDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/dodonew/online/ui/OrderBarActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderBarActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->dateTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/OrderBarActivity;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->sdf_:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/OrderBarActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dodonew/online/ui/OrderBarActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tableAreas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dodonew/online/ui/OrderBarActivity;)Lcom/dodonew/online/adapter/TablePagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tablePagerAdapter:Lcom/dodonew/online/adapter/TablePagerAdapter;

    return-object v0
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 137
    const v0, 0x7f0d0100

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f0d022e

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method private initOnlyTime()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 269
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->now:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderBarActivity;->now:Ljava/util/Calendar;

    const/16 v3, 0xc

    .line 270
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 269
    invoke-static {v0, v1, v2, v4, v4}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->newInstance(IIIZZ)Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->onlyTimeFragment:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    .line 271
    return-void
.end method

.method private initSlideDateTimePicker()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;

    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->nowDate:Ljava/util/Date;

    .line 261
    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->setInitialDate(Ljava/util/Date;)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 262
    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->setIs24HourTime(Z)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->slideDateTimeListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    .line 263
    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->setListener(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->build()Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->slideDateTimePicker:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;

    .line 266
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x1

    .line 97
    const v3, 0x7f0d0125

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 98
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/OrderBarActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 100
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    const v3, 0x7f0d022c

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CollapsingToolbarLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitleEnabled(Z)V

    .line 103
    const v3, 0x7f0d0101

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u9884\u5b9a\u5ea7\u4f4d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v3, 0x7f0d017f

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tvDate:Landroid/widget/TextView;

    .line 105
    const v3, 0x7f0d00cc

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 106
    const v3, 0x7f0d00cb

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout;

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 107
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v5}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 108
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->now:Ljava/util/Calendar;

    .line 110
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->now:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 111
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->now:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/dodonew/online/ui/OrderBarActivity;->now:Ljava/util/Calendar;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 112
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->now:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->nowDate:Ljava/util/Date;

    .line 113
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->sdf_:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/dodonew/online/ui/OrderBarActivity;->nowDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->dateTime:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tvDate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dodonew/online/ui/OrderBarActivity;->dateTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    .line 116
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "netBarId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->netBarId:Ljava/lang/String;

    .line 118
    const-string v3, "domainId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->domainId:Ljava/lang/String;

    .line 119
    const-string v3, "memberId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->memberId:Ljava/lang/String;

    .line 120
    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    .line 121
    .local v1, "label":Ljava/lang/String;
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->netBarId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->netBarId:Ljava/lang/String;

    iget-object v4, p0, Lcom/dodonew/online/ui/OrderBarActivity;->domainId:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/dodonew/online/ui/OrderBarActivity;->queryTableArea(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    const-string v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->openId:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_3
    const-string v3, "QQ"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getQqId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->openId:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_4
    const-string v3, "WX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getOpenId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->openId:Ljava/lang/String;

    goto :goto_0
.end method

.method private order(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "netBarId"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "termId"    # Ljava/lang/String;
    .param p5, "bookTime"    # Ljava/lang/String;
    .param p6, "memberId"    # Ljava/lang/String;
    .param p7, "openId"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "order"

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tag:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/dodonew/online/ui/OrderBarActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/OrderBarActivity$2;-><init>(Lcom/dodonew/online/ui/OrderBarActivity;)V

    .line 162
    invoke-virtual {v0}, Lcom/dodonew/online/ui/OrderBarActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "payState"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "termId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "bookTime"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "memberId"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "openId"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "oth/bookEntrence"

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderBarActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/OrderBarActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 173
    return-void
.end method

.method private queryTableArea(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "netBarId"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "queryTableArea"

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tag:Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/dodonew/online/ui/OrderBarActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/OrderBarActivity$1;-><init>(Lcom/dodonew/online/ui/OrderBarActivity;)V

    .line 151
    invoke-virtual {v0}, Lcom/dodonew/online/ui/OrderBarActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 152
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "payState"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "oth/bookEntrence"

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderBarActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/OrderBarActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 157
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
    .line 181
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->showProgress()V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/book/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/OrderBarActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/OrderBarActivity$3;-><init>(Lcom/dodonew/online/ui/OrderBarActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/OrderBarActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/OrderBarActivity$4;-><init>(Lcom/dodonew/online/ui/OrderBarActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 207
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 208
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method private setOrderResult(Lcom/dodonew/online/bean/OrderResult;)V
    .locals 6
    .param p1, "orderResult"    # Lcom/dodonew/online/bean/OrderResult;

    .prologue
    .line 231
    iget-object v0, p1, Lcom/dodonew/online/bean/OrderResult;->center:Lcom/dodonew/online/bean/OrderResult$Center;

    .line 232
    .local v0, "center":Lcom/dodonew/online/bean/OrderResult$Center;
    iget-object v3, v0, Lcom/dodonew/online/bean/OrderResult$Center;->code:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    iget-object v2, v0, Lcom/dodonew/online/bean/OrderResult$Center;->data:Ljava/util/List;

    .line 234
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/OrderDetail;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/dodonew/online/ui/OrderPayActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "orderDetail"

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    const-string v3, "orderSign"

    iget-object v4, p1, Lcom/dodonew/online/bean/OrderResult;->orderSign:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v3, "domainId"

    iget-object v4, p0, Lcom/dodonew/online/ui/OrderBarActivity;->domainId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderBarActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/OrderDetail;>;"
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p1, Lcom/dodonew/online/bean/OrderResult;->message:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method private setTableAreas(Lcom/dodonew/online/bean/TableAreaResult$Center;)V
    .locals 2
    .param p1, "center"    # Lcom/dodonew/online/bean/TableAreaResult$Center;

    .prologue
    .line 218
    iget-object v0, p1, Lcom/dodonew/online/bean/TableAreaResult$Center;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tableAreas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tableAreas:Ljava/util/List;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tableAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tableAreas:Ljava/util/List;

    iget-object v1, p1, Lcom/dodonew/online/bean/TableAreaResult$Center;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-direct {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->setTablePagerAdapter()V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v0, "\u6682\u65e0\u6570\u636e."

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderBarActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTablePagerAdapter()V
    .locals 6

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tablePagerAdapter:Lcom/dodonew/online/adapter/TablePagerAdapter;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/dodonew/online/adapter/TablePagerAdapter;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tableAreas:Ljava/util/List;

    iget-object v3, p0, Lcom/dodonew/online/ui/OrderBarActivity;->netBarId:Ljava/lang/String;

    iget-object v4, p0, Lcom/dodonew/online/ui/OrderBarActivity;->domainId:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/adapter/TablePagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/dodonew/online/interfaces/OnOrderTableListener;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tablePagerAdapter:Lcom/dodonew/online/adapter/TablePagerAdapter;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tablePagerAdapter:Lcom/dodonew/online/adapter/TablePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 256
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 257
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 286
    :sswitch_0
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->finish()V

    goto :goto_0

    .line 289
    :sswitch_1
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->onlyTimeFragment:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "onlyTimeFragment"

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, "bookTime":Ljava/lang/String;
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->termId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "\u8bf7\u9009\u62e9\u8981\u9884\u5b9a\u7684\u5ea7\u4f4d"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderBarActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const-string v0, "\u8bf7\u9009\u62e9\u9884\u5b9a\u65f6\u95f4"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderBarActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->netBarId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderBarActivity;->domainId:Ljava/lang/String;

    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tableArea:Lcom/dodonew/online/bean/TableArea;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/TableArea;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/ui/OrderBarActivity;->termId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dodonew/online/ui/OrderBarActivity;->dateTime:Ljava/lang/String;

    iget-object v6, p0, Lcom/dodonew/online/ui/OrderBarActivity;->memberId:Ljava/lang/String;

    iget-object v7, p0, Lcom/dodonew/online/ui/OrderBarActivity;->openId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/dodonew/online/ui/OrderBarActivity;->order(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :sswitch_data_0
    .sparse-switch
        0x7f0d00d5 -> :sswitch_2
        0x7f0d0100 -> :sswitch_0
        0x7f0d022e -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderBarActivity;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->initView()V

    .line 87
    invoke-direct {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->initOnlyTime()V

    .line 89
    invoke-direct {p0}, Lcom/dodonew/online/ui/OrderBarActivity;->initEvent()V

    .line 90
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->orderRefreshReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.dodonew.online.receiver.orderrefresh"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/ui/OrderBarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-void
.end method

.method public onDateTimeSet(II)V
    .locals 3
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "m":Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->dateTime:Ljava/lang/String;

    .line 368
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tvDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderBarActivity;->dateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onDestroy()V

    .line 337
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity;->orderRefreshReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderBarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 338
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 351
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onPause()V

    .line 352
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 354
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 345
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onResume()V

    .line 346
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 348
    return-void
.end method

.method public onTableClick(Lcom/dodonew/online/bean/TableArea;Ljava/lang/String;)V
    .locals 0
    .param p1, "tableArea"    # Lcom/dodonew/online/bean/TableArea;
    .param p2, "termId"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p2, p0, Lcom/dodonew/online/ui/OrderBarActivity;->termId:Ljava/lang/String;

    .line 321
    iput-object p1, p0, Lcom/dodonew/online/ui/OrderBarActivity;->tableArea:Lcom/dodonew/online/bean/TableArea;

    .line 322
    return-void
.end method

.method public onTimeChanged(II)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 359
    return-void
.end method
