.class Lcom/dodonew/online/ui/UserInfoEditorActivity$4;
.super Ljava/lang/Object;
.source "UserInfoEditorActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/UserInfoEditorActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/dodonew/online/bean/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/UserInfoEditorActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/UserInfoEditorActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$4;->this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$4;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 197
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "user/updUer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$4;->this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/UserResult;

    iget-object v0, v0, Lcom/dodonew/online/bean/UserResult;->user:Lcom/dodonew/online/bean/User;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->access$200(Lcom/dodonew/online/ui/UserInfoEditorActivity;Lcom/dodonew/online/bean/User;)V

    .line 204
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$4;->this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->dissProgress()V

    .line 205
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$4;->this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/UserInfoEditorActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/UserInfoEditorActivity$4;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
