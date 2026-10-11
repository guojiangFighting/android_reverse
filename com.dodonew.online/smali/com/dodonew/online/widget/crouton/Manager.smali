.class final Lcom/dodonew/online/widget/crouton/Manager;
.super Landroid/os/Handler;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/crouton/Manager$Messages;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/dodonew/online/widget/crouton/Manager;


# instance fields
.field private final croutonQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/dodonew/online/widget/crouton/Crouton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/crouton/Manager;Lcom/dodonew/online/widget/crouton/Crouton;IJ)V
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/crouton/Manager;
    .param p1, "x1"    # Lcom/dodonew/online/widget/crouton/Crouton;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dodonew/online/widget/crouton/Manager;->sendMessageDelayed(Lcom/dodonew/online/widget/crouton/Crouton;IJ)V

    return-void
.end method

.method private addCroutonToView(Lcom/dodonew/online/widget/crouton/Crouton;)V
    .locals 7
    .param p1, "crouton"    # Lcom/dodonew/online/widget/crouton/Crouton;

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, "croutonView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_3

    .line 200
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 201
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_2

    .line 202
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 206
    .restart local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 207
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    .line 208
    .local v2, "croutonViewGroup":Landroid/view/ViewGroup;
    invoke-direct {p0, v2}, Lcom/dodonew/online/widget/crouton/Manager;->shouldAddViewWithoutPosition(Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 209
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .end local v2    # "croutonViewGroup":Landroid/view/ViewGroup;
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 227
    .local v3, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v3, :cond_0

    .line 228
    new-instance v5, Lcom/dodonew/online/widget/crouton/Manager$1;

    invoke-direct {v5, p0, v1, p1}, Lcom/dodonew/online/widget/crouton/Manager$1;-><init>(Lcom/dodonew/online/widget/crouton/Manager;Landroid/view/View;Lcom/dodonew/online/widget/crouton/Crouton;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 211
    .end local v3    # "observer":Landroid/view/ViewTreeObserver;
    .restart local v2    # "croutonViewGroup":Landroid/view/ViewGroup;
    .restart local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 214
    .end local v2    # "croutonViewGroup":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 215
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    .line 218
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v5, v0}, Lcom/dodonew/online/widget/crouton/Manager;->handleTranslucentActionBar(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    move-object v5, v4

    .line 219
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v5, v0}, Lcom/dodonew/online/widget/crouton/Manager;->handleActionBarOverlay(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    .line 221
    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public static announceForAccessibilityCompat(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 442
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz p0, :cond_0

    .line 445
    const-string v3, "accessibility"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 447
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 473
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_1
    :goto_0
    return-void

    .line 455
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    .line 456
    const/16 v2, 0x8

    .line 463
    .local v2, "eventType":I
    :goto_1
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 464
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    const-class v3, Lcom/dodonew/online/widget/crouton/Manager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 471
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 458
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "eventType":I
    :cond_3
    const/16 v2, 0x4000

    .restart local v2    # "eventType":I
    goto :goto_1
.end method

.method private calculateCroutonDuration(Lcom/dodonew/online/widget/crouton/Crouton;)J
    .locals 4
    .param p1, "crouton"    # Lcom/dodonew/online/widget/crouton/Crouton;

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getConfiguration()Lcom/dodonew/online/widget/crouton/Configuration;

    move-result-object v2

    iget v2, v2, Lcom/dodonew/online/widget/crouton/Configuration;->durationInMilliseconds:I

    int-to-long v0, v2

    .line 114
    .local v0, "croutonDuration":J
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 115
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 116
    return-wide v0
.end method

.method private displayCrouton()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/crouton/Crouton;

    .line 97
    .local v0, "currentCrouton":Lcom/dodonew/online/widget/crouton/Crouton;
    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 101
    :cond_2
    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Crouton;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    const v1, -0x3dff8b23

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/widget/crouton/Manager;->sendMessage(Lcom/dodonew/online/widget/crouton/Crouton;I)V

    .line 104
    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Crouton;->getLifecycleCallback()Lcom/dodonew/online/widget/crouton/LifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Crouton;->getLifecycleCallback()Lcom/dodonew/online/widget/crouton/LifecycleCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/dodonew/online/widget/crouton/LifecycleCallback;->onDisplayed()V

    goto :goto_0

    .line 108
    :cond_3
    const v1, 0xc2007

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->calculateCroutonDuration(Lcom/dodonew/online/widget/crouton/Crouton;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dodonew/online/widget/crouton/Manager;->sendMessageDelayed(Lcom/dodonew/online/widget/crouton/Crouton;IJ)V

    goto :goto_0
.end method

.method static declared-synchronized getInstance()Lcom/dodonew/online/widget/crouton/Manager;
    .locals 2

    .prologue
    .line 67
    const-class v1, Lcom/dodonew/online/widget/crouton/Manager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dodonew/online/widget/crouton/Manager;->INSTANCE:Lcom/dodonew/online/widget/crouton/Manager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/dodonew/online/widget/crouton/Manager;

    invoke-direct {v0}, Lcom/dodonew/online/widget/crouton/Manager;-><init>()V

    sput-object v0, Lcom/dodonew/online/widget/crouton/Manager;->INSTANCE:Lcom/dodonew/online/widget/crouton/Manager;

    .line 71
    :cond_0
    sget-object v0, Lcom/dodonew/online/widget/crouton/Manager;->INSTANCE:Lcom/dodonew/online/widget/crouton/Manager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleActionBarOverlay(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 271
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 272
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    .line 273
    .local v0, "flags":Z
    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/crouton/Manager;->setActionBarMargin(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    .line 277
    .end local v0    # "flags":Z
    :cond_0
    return-void
.end method

.method private handleTranslucentActionBar(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V
    .locals 5
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/high16 v4, 0x4000000

    .line 259
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 260
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 261
    .local v0, "flags":I
    const/high16 v1, 0x4000000

    .line 262
    .local v1, "translucentStatusFlag":I
    and-int v2, v0, v4

    if-ne v2, v4, :cond_0

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/crouton/Manager;->setActionBarMargin(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    .line 266
    .end local v0    # "flags":I
    .end local v1    # "translucentStatusFlag":I
    :cond_0
    return-void
.end method

.method private removeAllMessages()V
    .locals 1

    .prologue
    .line 411
    const v0, -0x3dff8b23

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->removeMessages(I)V

    .line 412
    const v0, 0xc2007

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->removeMessages(I)V

    .line 413
    const v0, -0x3dff821f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->removeMessages(I)V

    .line 414
    return-void
.end method

.method private removeAllMessagesForCrouton(Lcom/dodonew/online/widget/crouton/Crouton;)V
    .locals 1
    .param p1, "crouton"    # Lcom/dodonew/online/widget/crouton/Crouton;

    .prologue
    .line 417
    const v0, -0x3dff8b23

    invoke-virtual {p0, v0, p1}, Lcom/dodonew/online/widget/crouton/Manager;->removeMessages(ILjava/lang/Object;)V

    .line 418
    const v0, 0xc2007

    invoke-virtual {p0, v0, p1}, Lcom/dodonew/online/widget/crouton/Manager;->removeMessages(ILjava/lang/Object;)V

    .line 419
    const v0, -0x3dff821f

    invoke-virtual {p0, v0, p1}, Lcom/dodonew/online/widget/crouton/Manager;->removeMessages(ILjava/lang/Object;)V

    .line 421
    return-void
.end method

.method private removeCroutonFromViewParent(Lcom/dodonew/online/widget/crouton/Crouton;)V
    .locals 2
    .param p1, "crouton"    # Lcom/dodonew/online/widget/crouton/Crouton;

    .prologue
    .line 402
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 404
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 408
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private sendMessage(Lcom/dodonew/online/widget/crouton/Crouton;I)V
    .locals 1
    .param p1, "crouton"    # Lcom/dodonew/online/widget/crouton/Crouton;
    .param p2, "messageId"    # I

    .prologue
    .line 128
    invoke-virtual {p0, p2}, Lcom/dodonew/online/widget/crouton/Manager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method

.method private sendMessageDelayed(Lcom/dodonew/online/widget/crouton/Crouton;IJ)V
    .locals 1
    .param p1, "crouton"    # Lcom/dodonew/online/widget/crouton/Crouton;
    .param p2, "messageId"    # I
    .param p3, "delay"    # J

    .prologue
    .line 144
    invoke-virtual {p0, p2}, Lcom/dodonew/online/widget/crouton/Manager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    invoke-virtual {p0, v0, p3, p4}, Lcom/dodonew/online/widget/crouton/Manager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    return-void
.end method

.method private setActionBarMargin(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V
    .locals 6
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 280
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 281
    .local v1, "actionBarContainerId":I
    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "actionBarContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 286
    :cond_0
    return-void
.end method

.method private shouldAddViewWithoutPosition(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "croutonViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 252
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method add(Lcom/dodonew/online/widget/crouton/Crouton;)V
    .locals 1
    .param p1, "crouton"    # Lcom/dodonew/online/widget/crouton/Crouton;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-direct {p0}, Lcom/dodonew/online/widget/crouton/Manager;->displayCrouton()V

    .line 83
    return-void
.end method

.method clearCroutonQueue()V
    .locals 3

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/dodonew/online/widget/crouton/Manager;->removeAllMessages()V

    .line 375
    iget-object v1, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/crouton/Crouton;

    .line 376
    .local v0, "crouton":Lcom/dodonew/online/widget/crouton/Crouton;
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->removeCroutonFromViewParent(Lcom/dodonew/online/widget/crouton/Crouton;)V

    goto :goto_0

    .line 378
    .end local v0    # "crouton":Lcom/dodonew/online/widget/crouton/Crouton;
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 379
    return-void
.end method

.method clearCroutonsForActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 386
    iget-object v2, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 387
    .local v1, "croutonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dodonew/online/widget/crouton/Crouton;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/crouton/Crouton;

    .line 389
    .local v0, "crouton":Lcom/dodonew/online/widget/crouton/Crouton;
    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->removeCroutonFromViewParent(Lcom/dodonew/online/widget/crouton/Crouton;)V

    .line 393
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->removeAllMessagesForCrouton(Lcom/dodonew/online/widget/crouton/Crouton;)V

    .line 396
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 399
    .end local v0    # "crouton":Lcom/dodonew/online/widget/crouton/Crouton;
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/widget/crouton/Crouton;

    .line 157
    .local v0, "crouton":Lcom/dodonew/online/widget/crouton/Crouton;
    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 180
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 162
    :sswitch_0
    invoke-direct {p0}, Lcom/dodonew/online/widget/crouton/Manager;->displayCrouton()V

    goto :goto_0

    .line 167
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->addCroutonToView(Lcom/dodonew/online/widget/crouton/Crouton;)V

    goto :goto_0

    .line 172
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->removeCrouton(Lcom/dodonew/online/widget/crouton/Crouton;)V

    .line 173
    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Crouton;->getLifecycleCallback()Lcom/dodonew/online/widget/crouton/LifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Crouton;->getLifecycleCallback()Lcom/dodonew/online/widget/crouton/LifecycleCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/dodonew/online/widget/crouton/LifecycleCallback;->onRemoved()V

    goto :goto_0

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3dff8b23 -> :sswitch_1
        -0x3dff821f -> :sswitch_2
        0xc2007 -> :sswitch_0
    .end sparse-switch
.end method

.method protected removeCrouton(Lcom/dodonew/online/widget/crouton/Crouton;)V
    .locals 6
    .param p1, "crouton"    # Lcom/dodonew/online/widget/crouton/Crouton;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/crouton/Manager;->removeAllMessagesForCrouton(Lcom/dodonew/online/widget/crouton/Crouton;)V

    .line 302
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v1

    .line 303
    .local v1, "croutonView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 305
    .local v0, "croutonParentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    iget-object v3, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/crouton/Crouton;

    .line 312
    .local v2, "removed":Lcom/dodonew/online/widget/crouton/Crouton;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 313
    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {v2}, Lcom/dodonew/online/widget/crouton/Crouton;->detachActivity()V

    .line 315
    invoke-virtual {v2}, Lcom/dodonew/online/widget/crouton/Crouton;->detachViewGroup()V

    .line 316
    invoke-virtual {v2}, Lcom/dodonew/online/widget/crouton/Crouton;->getLifecycleCallback()Lcom/dodonew/online/widget/crouton/LifecycleCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 317
    invoke-virtual {v2}, Lcom/dodonew/online/widget/crouton/Crouton;->getLifecycleCallback()Lcom/dodonew/online/widget/crouton/LifecycleCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/dodonew/online/widget/crouton/LifecycleCallback;->onRemoved()V

    .line 319
    :cond_0
    invoke-virtual {v2}, Lcom/dodonew/online/widget/crouton/Crouton;->detachLifecycleCallback()V

    .line 324
    :cond_1
    const v3, 0xc2007

    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/dodonew/online/widget/crouton/Manager;->sendMessageDelayed(Lcom/dodonew/online/widget/crouton/Crouton;IJ)V

    .line 326
    .end local v2    # "removed":Lcom/dodonew/online/widget/crouton/Crouton;
    :cond_2
    return-void
.end method

.method removeCroutonImmediately(Lcom/dodonew/online/widget/crouton/Crouton;)V
    .locals 4
    .param p1, "crouton"    # Lcom/dodonew/online/widget/crouton/Crouton;

    .prologue
    .line 341
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/dodonew/online/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 345
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/crouton/Manager;->removeAllMessagesForCrouton(Lcom/dodonew/online/widget/crouton/Crouton;)V

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 349
    .local v1, "croutonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dodonew/online/widget/crouton/Crouton;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/crouton/Crouton;

    .line 351
    .local v0, "c":Lcom/dodonew/online/widget/crouton/Crouton;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 353
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/crouton/Manager;->removeCroutonFromViewParent(Lcom/dodonew/online/widget/crouton/Crouton;)V

    .line 356
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/crouton/Manager;->removeAllMessagesForCrouton(Lcom/dodonew/online/widget/crouton/Crouton;)V

    .line 359
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 365
    .end local v0    # "c":Lcom/dodonew/online/widget/crouton/Crouton;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manager{croutonQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
