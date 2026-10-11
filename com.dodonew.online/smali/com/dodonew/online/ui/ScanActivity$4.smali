.class Lcom/dodonew/online/ui/ScanActivity$4;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ScanActivity;->requestNetwork(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ScanActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ScanActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dodonew/online/ui/ScanActivity$4;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity$4;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/ScanActivity;->dissProgress()V

    .line 153
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity$4;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    const-string v1, "\u6570\u636e\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/ScanActivity;->showToast(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity$4;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ScanActivity;->access$200(Lcom/dodonew/online/ui/ScanActivity;)V

    .line 156
    return-void
.end method
