.class Lcom/dodonew/online/ui/OrderBarActivity$4;
.super Ljava/lang/Object;
.source "OrderBarActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/OrderBarActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/OrderBarActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/OrderBarActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/dodonew/online/ui/OrderBarActivity$4;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 203
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity$4;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/OrderBarActivity;->showToast(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity$4;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/OrderBarActivity;->dissProgress()V

    .line 205
    return-void
.end method
