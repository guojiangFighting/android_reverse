.class Lcn/sharesdk/login/LoginApi$1;
.super Ljava/lang/Object;
.source "LoginApi.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/login/LoginApi;->login(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/login/LoginApi;


# direct methods
.method constructor <init>(Lcn/sharesdk/login/LoginApi;)V
    .locals 0
    .param p1, "this$0"    # Lcn/sharesdk/login/LoginApi;

    .prologue
    .line 58
    iput-object p1, p0, Lcn/sharesdk/login/LoginApi$1;->this$0:Lcn/sharesdk/login/LoginApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 81
    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    .line 82
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 83
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 84
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 85
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcn/sharesdk/login/LoginApi$1;->this$0:Lcn/sharesdk/login/LoginApi;

    invoke-static {v1}, Lcn/sharesdk/login/LoginApi;->access$000(Lcn/sharesdk/login/LoginApi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 4
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    .line 61
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 62
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 63
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 64
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcn/sharesdk/login/LoginApi$1;->this$0:Lcn/sharesdk/login/LoginApi;

    invoke-static {v1}, Lcn/sharesdk/login/LoginApi;->access$000(Lcn/sharesdk/login/LoginApi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    .line 71
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 72
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 73
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 74
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcn/sharesdk/login/LoginApi$1;->this$0:Lcn/sharesdk/login/LoginApi;

    invoke-static {v1}, Lcn/sharesdk/login/LoginApi;->access$000(Lcn/sharesdk/login/LoginApi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    return-void
.end method
