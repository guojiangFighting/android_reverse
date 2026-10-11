.class Lcom/dodonew/online/ui/MyOrderActivity$2;
.super Ljava/lang/Object;
.source "MyOrderActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyOrderActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyOrderActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyOrderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyOrderActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dodonew/online/ui/MyOrderActivity$2;->this$0:Lcom/dodonew/online/ui/MyOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 98
    iget-object v0, p0, Lcom/dodonew/online/ui/MyOrderActivity$2;->this$0:Lcom/dodonew/online/ui/MyOrderActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyOrderActivity;->dissProgress()V

    .line 99
    return-void
.end method
