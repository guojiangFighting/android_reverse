.class Lcom/dodonew/online/view/CityView$1;
.super Ljava/lang/Object;
.source "CityView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/CityView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/CityView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/CityView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/CityView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dodonew/online/view/CityView$1;->this$0:Lcom/dodonew/online/view/CityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 64
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/dodonew/online/view/CityView$1;->this$0:Lcom/dodonew/online/view/CityView;

    invoke-static {v0}, Lcom/dodonew/online/view/CityView;->access$000(Lcom/dodonew/online/view/CityView;)Lcom/dodonew/online/view/CityView$OnCityClcikListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/dodonew/online/view/CityView$1;->this$0:Lcom/dodonew/online/view/CityView;

    invoke-static {v0}, Lcom/dodonew/online/view/CityView;->access$000(Lcom/dodonew/online/view/CityView;)Lcom/dodonew/online/view/CityView$OnCityClcikListener;

    move-result-object v1

    iget-object v0, p0, Lcom/dodonew/online/view/CityView$1;->this$0:Lcom/dodonew/online/view/CityView;

    invoke-static {v0}, Lcom/dodonew/online/view/CityView;->access$100(Lcom/dodonew/online/view/CityView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/City;

    invoke-interface {v1, v0}, Lcom/dodonew/online/view/CityView$OnCityClcikListener;->click(Lcom/dodonew/online/bean/City;)V

    .line 67
    :cond_0
    return-void
.end method
