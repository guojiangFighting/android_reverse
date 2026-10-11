.class Lcom/dodonew/online/widget/popup/ConfirmPopup$1;
.super Ljava/lang/Object;
.source "ConfirmPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/popup/ConfirmPopup;->makeHeaderView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/popup/ConfirmPopup;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/popup/ConfirmPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/popup/ConfirmPopup;

    .prologue
    .line 220
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup$1;, "Lcom/dodonew/online/widget/popup/ConfirmPopup$1;"
    iput-object p1, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup$1;->this$0:Lcom/dodonew/online/widget/popup/ConfirmPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    .local p0, "this":Lcom/dodonew/online/widget/popup/ConfirmPopup$1;, "Lcom/dodonew/online/widget/popup/ConfirmPopup$1;"
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup$1;->this$0:Lcom/dodonew/online/widget/popup/ConfirmPopup;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/popup/ConfirmPopup;->dismiss()V

    .line 224
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/ConfirmPopup$1;->this$0:Lcom/dodonew/online/widget/popup/ConfirmPopup;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/popup/ConfirmPopup;->onCancel()V

    .line 225
    return-void
.end method
