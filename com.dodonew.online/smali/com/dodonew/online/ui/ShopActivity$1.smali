.class Lcom/dodonew/online/ui/ShopActivity$1;
.super Ljava/lang/Object;
.source "ShopActivity.java"

# interfaces
.implements Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ShopActivity;->initAddshopAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ShopActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity$1;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$1;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ShopActivity;->access$100(Lcom/dodonew/online/ui/ShopActivity;)Lcom/dodonew/online/widget/BadgeView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity$1;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ShopActivity;->access$000(Lcom/dodonew/online/ui/ShopActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$1;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ShopActivity;->access$100(Lcom/dodonew/online/ui/ShopActivity;)Lcom/dodonew/online/widget/BadgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/widget/BadgeView;->show()V

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$1;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ShopActivity;->access$200(Lcom/dodonew/online/ui/ShopActivity;)V

    .line 139
    return-void
.end method
