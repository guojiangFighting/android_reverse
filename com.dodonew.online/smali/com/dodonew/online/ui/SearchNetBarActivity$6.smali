.class Lcom/dodonew/online/ui/SearchNetBarActivity$6;
.super Ljava/lang/Object;
.source "SearchNetBarActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/SearchNetBarActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$6;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 273
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$6;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$1100(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ERROR:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 274
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$6;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->showToast(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$6;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->dissProgress()V

    .line 276
    return-void
.end method
