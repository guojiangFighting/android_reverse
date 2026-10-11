.class public final Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;
.super Ljava/lang/Object;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/YoYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YoYoString"
.end annotation


# instance fields
.field private animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

.field private target:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "animator"    # Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;->target:Landroid/view/View;

    .line 168
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;Landroid/view/View;Lcom/dodonew/online/widget/swipelayout/YoYo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/dodonew/online/widget/swipelayout/YoYo$1;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;-><init>(Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "reset"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->cancel()V

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;->target:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->reset(Landroid/view/View;)V

    .line 184
    :cond_0
    return-void
.end method
