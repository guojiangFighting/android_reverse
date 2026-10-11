.class Lcom/dodonew/online/ui/AddressActivity$5;
.super Ljava/lang/Object;
.source "AddressActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;


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
    .line 169
    iput-object p1, p0, Lcom/dodonew/online/ui/AddressActivity$5;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightClick(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    .line 173
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$5;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-static {v0, p2}, Lcom/dodonew/online/ui/AddressActivity;->access$202(Lcom/dodonew/online/ui/AddressActivity;I)I

    .line 174
    iget-object v1, p0, Lcom/dodonew/online/ui/AddressActivity$5;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity$5;->this$0:Lcom/dodonew/online/ui/AddressActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/AddressActivity;->access$300(Lcom/dodonew/online/ui/AddressActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Address;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Address;->getAddressId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/AddressActivity;->access$500(Lcom/dodonew/online/ui/AddressActivity;Ljava/lang/String;)V

    .line 176
    return-void
.end method
