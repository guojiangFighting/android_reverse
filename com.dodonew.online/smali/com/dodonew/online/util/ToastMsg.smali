.class public Lcom/dodonew/online/util/ToastMsg;
.super Ljava/lang/Object;
.source "ToastMsg.java"


# static fields
.field private static isDefine:Ljava/lang/Boolean;

.field private static toast:Landroid/widget/Toast;

.field private static toastRoot:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/util/ToastMsg;->isDefine:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeToastMsg()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    .line 72
    return-void
.end method

.method public static showToastMsg(Landroid/content/Context;I)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "strId"    # I

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/util/ToastMsg;->isDefine:Ljava/lang/Boolean;

    invoke-static {p0, v0, v1}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 32
    return-void
.end method

.method public static showToastMsg(Landroid/content/Context;ILjava/lang/Boolean;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "strId"    # I
    .param p2, "isDefine"    # Ljava/lang/Boolean;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 36
    return-void
.end method

.method public static showToastMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->isDefine:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 28
    return-void
.end method

.method public static showToastMsg(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "gravity"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    .line 59
    :cond_0
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 60
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 61
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toastRoot:Landroid/view/View;

    if-nez v0, :cond_1

    .line 62
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/util/ToastMsg;->toastRoot:Landroid/view/View;

    .line 64
    :cond_1
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toastRoot:Landroid/view/View;

    const v1, 0x7f0d01f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    sget-object v1, Lcom/dodonew/online/util/ToastMsg;->toastRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 66
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    return-void
.end method

.method public static showToastMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isDefine"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 39
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    .line 42
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 44
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 48
    sget-object v0, Lcom/dodonew/online/util/ToastMsg;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
