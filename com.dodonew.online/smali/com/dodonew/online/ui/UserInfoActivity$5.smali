.class Lcom/dodonew/online/ui/UserInfoActivity$5;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcn/sharesdk/login/OnLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/UserInfoActivity;->login(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/UserInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/UserInfoActivity;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/dodonew/online/ui/UserInfoActivity$5;->this$0:Lcom/dodonew/online/ui/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public onLogin(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 5
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
    .line 201
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "openId":Ljava/lang/String;
    const-string v1, "QZone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/dodonew/online/ui/UserInfoActivity$5;->this$0:Lcom/dodonew/online/ui/UserInfoActivity;

    iget-object v2, p0, Lcom/dodonew/online/ui/UserInfoActivity$5;->this$0:Lcom/dodonew/online/ui/UserInfoActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/UserInfoActivity;->access$100(Lcom/dodonew/online/ui/UserInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dodonew/online/ui/UserInfoActivity;->access$200(Lcom/dodonew/online/ui/UserInfoActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 204
    :cond_1
    const-string v1, "Wechat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/dodonew/online/ui/UserInfoActivity$5;->this$0:Lcom/dodonew/online/ui/UserInfoActivity;

    iget-object v2, p0, Lcom/dodonew/online/ui/UserInfoActivity$5;->this$0:Lcom/dodonew/online/ui/UserInfoActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/UserInfoActivity;->access$100(Lcom/dodonew/online/ui/UserInfoActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unionid"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/dodonew/online/ui/UserInfoActivity;->access$300(Lcom/dodonew/online/ui/UserInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRegister(Lcn/sharesdk/login/UserInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/sharesdk/login/UserInfo;

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method
