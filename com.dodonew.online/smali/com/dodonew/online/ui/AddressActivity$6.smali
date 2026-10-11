.class Lcom/dodonew/online/ui/AddressActivity$6;
.super Ljava/lang/Object;
.source "AddressActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/AddressActivity;->setAddressAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/AddressActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/AddressActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/AddressActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/dodonew/online/ui/AddressActivity$6;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lcom/dodonew/online/ui/AddressActivity$6;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$6;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/AddressActivity;->access$300(Lcom/dodonew/online/ui/AddressActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Address;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/AddressActivity;->access$600(Lcom/dodonew/online/ui/AddressActivity;Lcom/dodonew/online/bean/Address;)V

    .line 182
    return-void
.end method
