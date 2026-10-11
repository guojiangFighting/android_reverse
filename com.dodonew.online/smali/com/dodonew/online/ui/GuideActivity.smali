.class public Lcom/dodonew/online/ui/GuideActivity;
.super Lcom/dodonew/online/base/ProgressActivity;
.source "GuideActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;,
        Lcom/dodonew/online/ui/GuideActivity$MyPageChangeListener;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "pic_app.jpg"

.field public static TEST_IMAGE:Ljava/lang/String;


# instance fields
.field private currentItem:I

.field private flaggingWidth:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private guideAdapter:Lcom/dodonew/online/adapter/GuideAdapter;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dodonew/online/base/ProgressActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/ui/GuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/ui/GuideActivity;->currentItem:I

    .line 136
    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/GuideActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuideActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/ui/GuideActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/GuideActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuideActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/dodonew/online/ui/GuideActivity;->currentItem:I

    return v0
.end method

.method static synthetic access$202(Lcom/dodonew/online/ui/GuideActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuideActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/dodonew/online/ui/GuideActivity;->currentItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/GuideActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuideActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/dodonew/online/ui/GuideActivity;->flaggingWidth:I

    return v0
.end method

.method private findViewById()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/dodonew/online/ui/GuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 62
    return-void
.end method

.method private initGuide()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/GuideActivity;->list:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lcom/dodonew/online/ui/GuideActivity;->list:Ljava/util/List;

    const v1, 0x7f02008d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/ui/GuideActivity;->list:Ljava/util/List;

    const v1, 0x7f02008e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/ui/GuideActivity;->list:Ljava/util/List;

    const v1, 0x7f02008f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/dodonew/online/ui/GuideActivity;->list:Ljava/util/List;

    const v1, 0x7f020090

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dodonew/online/ui/GuideActivity;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lcom/dodonew/online/base/ProgressActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method protected initView()V
    .locals 4

    .prologue
    .line 65
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;-><init>(Lcom/dodonew/online/ui/GuideActivity;Lcom/dodonew/online/ui/GuideActivity$1;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/GuideActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 67
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 68
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/dodonew/online/ui/GuideActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 69
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/dodonew/online/ui/GuideActivity;->flaggingWidth:I

    .line 70
    iget-object v1, p0, Lcom/dodonew/online/ui/GuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 71
    iget-object v1, p0, Lcom/dodonew/online/ui/GuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/dodonew/online/adapter/GuideAdapter;

    iget-object v3, p0, Lcom/dodonew/online/ui/GuideActivity;->list:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/dodonew/online/adapter/GuideAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 81
    iget-object v1, p0, Lcom/dodonew/online/ui/GuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/dodonew/online/ui/GuideActivity$1;

    invoke-direct {v2, p0}, Lcom/dodonew/online/ui/GuideActivity$1;-><init>(Lcom/dodonew/online/ui/GuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/dodonew/online/base/ProgressActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/GuideActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/dodonew/online/ui/GuideActivity;->findViewById()V

    .line 56
    invoke-direct {p0}, Lcom/dodonew/online/ui/GuideActivity;->initGuide()V

    .line 57
    invoke-virtual {p0}, Lcom/dodonew/online/ui/GuideActivity;->initView()V

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/dodonew/online/base/ProgressActivity;->onPause()V

    .line 171
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/dodonew/online/base/ProgressActivity;->onResume()V

    .line 165
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 167
    return-void
.end method
