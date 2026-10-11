.class Lcom/dodonew/online/ui/OrderDetailActivity$2;
.super Ljava/lang/Object;
.source "OrderDetailActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/OrderDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/OrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/OrderDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/OrderDetailActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dodonew/online/ui/OrderDetailActivity$2;->this$0:Lcom/dodonew/online/ui/OrderDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderDetailActivity$2;->this$0:Lcom/dodonew/online/ui/OrderDetailActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/OrderDetailActivity;->dissProgress()V

    .line 115
    return-void
.end method
