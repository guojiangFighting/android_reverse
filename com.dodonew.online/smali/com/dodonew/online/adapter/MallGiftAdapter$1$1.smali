.class Lcom/dodonew/online/adapter/MallGiftAdapter$1$1;
.super Ljava/lang/Object;
.source "MallGiftAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/MallGiftAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dodonew/online/adapter/MallGiftAdapter$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/MallGiftAdapter$1;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/dodonew/online/adapter/MallGiftAdapter$1;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/MallGiftAdapter$1;

    iput-object p2, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Z)V
    .locals 3
    .param p1, "isOk"    # Z

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/MallGiftAdapter$1;

    iget-object v0, v0, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/MallGiftAdapter;->access$100(Lcom/dodonew/online/adapter/MallGiftAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1$1;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$1$1;->this$1:Lcom/dodonew/online/adapter/MallGiftAdapter$1;

    iget v2, v2, Lcom/dodonew/online/adapter/MallGiftAdapter$1;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/interfaces/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 97
    :cond_0
    return-void
.end method
