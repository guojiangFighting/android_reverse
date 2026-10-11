.class Lcom/dodonew/online/ui/ShopActivity$2;
.super Ljava/lang/Object;
.source "ShopActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ShopActivity;->initPara()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dodonew/online/interfaces/OnViewClickListener",
        "<",
        "Lcom/dodonew/online/bean/Menu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ShopActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity$2;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/dodonew/online/bean/Menu;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Lcom/dodonew/online/bean/Menu;

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$2;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ShopActivity;->access$302(Lcom/dodonew/online/ui/ShopActivity;Z)Z

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    :pswitch_0
    return-void

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$2;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/dodonew/online/ui/ShopActivity;->access$400(Lcom/dodonew/online/ui/ShopActivity;Lcom/dodonew/online/bean/Menu;I)V

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$2;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v0, p1}, Lcom/dodonew/online/ui/ShopActivity;->access$500(Lcom/dodonew/online/ui/ShopActivity;Landroid/view/View;)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$2;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v0, p2, v1}, Lcom/dodonew/online/ui/ShopActivity;->access$400(Lcom/dodonew/online/ui/ShopActivity;Lcom/dodonew/online/bean/Menu;I)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x7f0d0170
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p2, Lcom/dodonew/online/bean/Menu;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/ui/ShopActivity$2;->onClick(Landroid/view/View;Lcom/dodonew/online/bean/Menu;)V

    return-void
.end method
