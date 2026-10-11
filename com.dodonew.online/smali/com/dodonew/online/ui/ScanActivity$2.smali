.class Lcom/dodonew/online/ui/ScanActivity$2;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/zxing/HandleDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ScanActivity;->initView()V
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
    .line 63
    iput-object p1, p0, Lcom/dodonew/online/ui/ScanActivity$2;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Lcom/google/zxing/Result;)V
    .locals 2
    .param p1, "obj"    # Lcom/google/zxing/Result;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity$2;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ScanActivity;->access$000(Lcom/dodonew/online/ui/ScanActivity;Ljava/lang/String;)V

    .line 67
    return-void
.end method
