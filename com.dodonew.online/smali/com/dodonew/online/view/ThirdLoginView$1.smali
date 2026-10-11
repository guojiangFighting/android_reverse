.class Lcom/dodonew/online/view/ThirdLoginView$1;
.super Ljava/lang/Object;
.source "ThirdLoginView.java"

# interfaces
.implements Lcn/sharesdk/login/OnLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/ThirdLoginView;->login(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/ThirdLoginView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/ThirdLoginView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/ThirdLoginView;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dodonew/online/view/ThirdLoginView$1;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView$1;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-static {v0}, Lcom/dodonew/online/view/ThirdLoginView;->access$200(Lcom/dodonew/online/view/ThirdLoginView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u53d6\u6d88"

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView$1;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-static {v0}, Lcom/dodonew/online/view/ThirdLoginView;->access$200(Lcom/dodonew/online/view/ThirdLoginView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 104
    return-void
.end method

.method public onLogin(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 6
    .param p1, "platform"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    .line 84
    .local v2, "pdb":Lcn/sharesdk/framework/PlatformDb;
    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "openId":Ljava/lang/String;
    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "nickName":Ljava/lang/String;
    const-string v3, "QZone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/dodonew/online/view/ThirdLoginView$1;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "figureurl_qq_2"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0}, Lcom/dodonew/online/view/ThirdLoginView;->access$000(Lcom/dodonew/online/view/ThirdLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 88
    :cond_1
    const-string v3, "Wechat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/dodonew/online/view/ThirdLoginView$1;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unionid"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getUserIcon()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v1, v0, v5}, Lcom/dodonew/online/view/ThirdLoginView;->access$100(Lcom/dodonew/online/view/ThirdLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRegister(Lcn/sharesdk/login/UserInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/sharesdk/login/UserInfo;

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
