.class Lcom/dodonew/online/ui/FunctionActivity$3;
.super Ljava/lang/Object;
.source "FunctionActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/FunctionActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/FunctionActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/FunctionActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/FunctionActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/dodonew/online/ui/FunctionActivity$3;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/FunctionActivity$3;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 130
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/online/state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/dodonew/online/ui/FunctionActivity$3;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/OnlineState;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/FunctionActivity;->access$000(Lcom/dodonew/online/ui/FunctionActivity;Lcom/dodonew/online/bean/OnlineState;)V

    .line 139
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity$3;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/FunctionActivity;->dissProgress()V

    .line 140
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/online/end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/dodonew/online/ui/FunctionActivity$3;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Offline;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/FunctionActivity;->access$100(Lcom/dodonew/online/ui/FunctionActivity;Lcom/dodonew/online/bean/Offline;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity$3;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FunctionActivity;->access$200(Lcom/dodonew/online/ui/FunctionActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 127
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/FunctionActivity$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
