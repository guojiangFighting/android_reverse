.class Lcom/dodonew/online/ui/MyCardActivity$5;
.super Ljava/lang/Object;
.source "MyCardActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyCardActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyCardActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyCardActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/dodonew/online/ui/MyCardActivity$5;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$5;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCardActivity;->access$500(Lcom/dodonew/online/ui/MyCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$5;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyCardActivity;->dissProgress()V

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$5;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/MyCardActivity;->showToast(Ljava/lang/String;)V

    .line 162
    return-void
.end method
