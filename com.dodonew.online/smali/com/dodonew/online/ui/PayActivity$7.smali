.class Lcom/dodonew/online/ui/PayActivity$7;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/PayActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/PayActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/PayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/PayActivity;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/dodonew/online/ui/PayActivity$7;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 299
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$7;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/PayActivity;->dissProgress()V

    .line 300
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$7;->this$0:Lcom/dodonew/online/ui/PayActivity;

    const-string v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/PayActivity;->showToast(Ljava/lang/String;)V

    .line 301
    return-void
.end method
