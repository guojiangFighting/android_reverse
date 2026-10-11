.class Lcom/dodonew/online/ui/MyGuessActivity$4;
.super Ljava/lang/Object;
.source "MyGuessActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyGuessActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyGuessActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyGuessActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyGuessActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dodonew/online/ui/MyGuessActivity$4;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 153
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$4;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    const-string v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/MyGuessActivity;->showToast(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$4;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyGuessActivity;->access$100(Lcom/dodonew/online/ui/MyGuessActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$4;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyGuessActivity;->access$500(Lcom/dodonew/online/ui/MyGuessActivity;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ERROR:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$4;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyGuessActivity;->access$600(Lcom/dodonew/online/ui/MyGuessActivity;)V

    .line 158
    return-void
.end method
