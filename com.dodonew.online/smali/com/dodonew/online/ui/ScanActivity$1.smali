.class Lcom/dodonew/online/ui/ScanActivity$1;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ScanActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 51
    iput-object p1, p0, Lcom/dodonew/online/ui/ScanActivity$1;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity$1;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/ScanActivity;->finish()V

    .line 55
    return-void
.end method
