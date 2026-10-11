.class Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/GuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideViewTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GuideActivity;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/ui/GuideActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/ui/GuideActivity;Lcom/dodonew/online/ui/GuideActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/ui/GuideActivity;
    .param p2, "x1"    # Lcom/dodonew/online/ui/GuideActivity$1;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;-><init>(Lcom/dodonew/online/ui/GuideActivity;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v2, p0, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/GuideActivity;->access$200(Lcom/dodonew/online/ui/GuideActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 141
    const-string v2, "yang"

    const-string v3, "   currentItem....................."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 142
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/GuideActivity;->access$300(Lcom/dodonew/online/ui/GuideActivity;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/GuideActivity;->access$300(Lcom/dodonew/online/ui/GuideActivity;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/GuideActivity;->access$300(Lcom/dodonew/online/ui/GuideActivity;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    const-class v3, Lcom/dodonew/online/ui/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-static {v2, v1}, Lcom/dodonew/online/util/Tools;->saveGuide(Landroid/content/Context;Z)V

    .line 150
    iget-object v1, p0, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/ui/GuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    iget-object v1, p0, Lcom/dodonew/online/ui/GuideActivity$GuideViewTouch;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-virtual {v1}, Lcom/dodonew/online/ui/GuideActivity;->finish()V

    .line 152
    const/4 v1, 0x1

    .line 156
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return v1
.end method
