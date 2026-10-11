.class Lcom/dodonew/online/ui/ChooseCityActivity$1;
.super Ljava/lang/Object;
.source "ChooseCityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ChooseCityActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ChooseCityActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$1;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$1;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$1;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$100(Lcom/dodonew/online/ui/ChooseCityActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/City;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$200(Lcom/dodonew/online/ui/ChooseCityActivity;Lcom/dodonew/online/bean/City;)V

    .line 164
    return-void
.end method
