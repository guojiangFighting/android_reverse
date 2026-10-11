.class public Lcom/dodonew/online/base/ProgressActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProgressActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private dialog:Lcom/dodonew/online/widget/dialog/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/base/ProgressActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dissProgress()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/base/ProgressActivity;->dialog:Lcom/dodonew/online/widget/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/dialog/ProgressDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/dodonew/online/base/ProgressActivity;->dialog:Lcom/dodonew/online/widget/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/dialog/ProgressDialog;->dismiss()V

    .line 50
    :cond_0
    return-void
.end method

.method public intentLoginActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    const-string v1, "\u5f53\u524d\u8d26\u53f7\u5df2\u5728\u5176\u5b83\u8bbe\u5907\u767b\u5f55."

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/base/ProgressActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/dodonew/online/ui/LoginActivity;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/dodonew/online/DodonewOnlineApplication;->removeAllActivity([Ljava/lang/Class;)Z

    .line 72
    return-void
.end method

.method public intentMainActivity()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "page"

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/dodonew/online/base/ProgressActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/dodonew/online/base/ProgressActivity;->finish()V

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/base/ProgressActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addActivity(Landroid/app/Activity;)V

    .line 31
    invoke-static {}, Lcom/dodonew/online/widget/dialog/ProgressDialog;->newInstance()Lcom/dodonew/online/widget/dialog/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/base/ProgressActivity;->dialog:Lcom/dodonew/online/widget/dialog/ProgressDialog;

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 77
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->removeActivity(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 87
    const-string v0, "\u6570\u636e\u52a0\u8f7d\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/base/ProgressActivity;->showToast(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 55
    return-void
.end method

.method public showProgress()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/base/ProgressActivity;->dialog:Lcom/dodonew/online/widget/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/dialog/ProgressDialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/dodonew/online/base/ProgressActivity;->dialog:Lcom/dodonew/online/widget/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/dodonew/online/base/ProgressActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/dialog/ProgressDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 81
    const/16 v0, 0x11

    invoke-static {p0, p1, v0}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;I)V

    .line 82
    return-void
.end method
