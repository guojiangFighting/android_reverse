.class Lcom/dodonew/online/payzfb/ZFBPayUtils$2;
.super Landroid/os/Handler;
.source "ZFBPayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/payzfb/ZFBPayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/payzfb/ZFBPayUtils;


# direct methods
.method constructor <init>(Lcom/dodonew/online/payzfb/ZFBPayUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/payzfb/ZFBPayUtils;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils$2;->this$0:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    iget v5, p1, Landroid/os/Message;->what:I

    if-nez v5, :cond_0

    .line 49
    new-instance v1, Lcom/dodonew/online/payzfb/PayResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/dodonew/online/payzfb/PayResult;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "payResult":Lcom/dodonew/online/payzfb/PayResult;
    invoke-virtual {v1}, Lcom/dodonew/online/payzfb/PayResult;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "resultInfo":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/dodonew/online/payzfb/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "resultStatus":Ljava/lang/String;
    const-string v4, ""

    .line 56
    .local v4, "toast":Ljava/lang/String;
    const-string v5, "9000"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    const-string v4, "\u652f\u4ed8\u6210\u529f"

    .line 58
    const/4 v0, 0x1

    .line 69
    .local v0, "isSuccess":Z
    :goto_0
    iget-object v5, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils$2;->this$0:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    invoke-static {v5}, Lcom/dodonew/online/payzfb/ZFBPayUtils;->access$200(Lcom/dodonew/online/payzfb/ZFBPayUtils;)Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x11

    invoke-static {v5, v4, v6}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;I)V

    .line 70
    iget-object v5, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils$2;->this$0:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    invoke-static {v5}, Lcom/dodonew/online/payzfb/ZFBPayUtils;->access$300(Lcom/dodonew/online/payzfb/ZFBPayUtils;)Lcom/dodonew/online/interfaces/OnZFBPayListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 71
    iget-object v5, p0, Lcom/dodonew/online/payzfb/ZFBPayUtils$2;->this$0:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    invoke-static {v5}, Lcom/dodonew/online/payzfb/ZFBPayUtils;->access$300(Lcom/dodonew/online/payzfb/ZFBPayUtils;)Lcom/dodonew/online/interfaces/OnZFBPayListener;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/dodonew/online/interfaces/OnZFBPayListener;->result(Z)V

    .line 74
    .end local v0    # "isSuccess":Z
    .end local v1    # "payResult":Lcom/dodonew/online/payzfb/PayResult;
    .end local v2    # "resultInfo":Ljava/lang/String;
    .end local v3    # "resultStatus":Ljava/lang/String;
    .end local v4    # "toast":Ljava/lang/String;
    :cond_0
    return-void

    .line 60
    .restart local v1    # "payResult":Lcom/dodonew/online/payzfb/PayResult;
    .restart local v2    # "resultInfo":Ljava/lang/String;
    .restart local v3    # "resultStatus":Ljava/lang/String;
    .restart local v4    # "toast":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 63
    .restart local v0    # "isSuccess":Z
    const-string v5, "8000"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    const-string v4, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    goto :goto_0

    .line 66
    :cond_2
    const-string v4, "\u652f\u4ed8\u5931\u8d25"

    goto :goto_0
.end method
