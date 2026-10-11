.class Lcom/dodonew/online/view/TableView$4;
.super Ljava/lang/Object;
.source "TableView.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/TableView;->setTablesAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/TableView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/TableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/TableView;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v2, "termId":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$100(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/bean/TableArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/TableArea;->getIsRoom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$100(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/bean/TableArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/TableArea;->getAllowStandalone()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$200(Lcom/dodonew/online/view/TableView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 155
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$200(Lcom/dodonew/online/view/TableView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Table;

    .line 156
    .local v1, "table":Lcom/dodonew/online/bean/Table;
    const-string v3, "1"

    invoke-virtual {v1, v3}, Lcom/dodonew/online/bean/Table;->setType(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Table;->getSeatNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$200(Lcom/dodonew/online/view/TableView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 159
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$300(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/adapter/TablesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/adapter/TablesAdapter;->notifyDataSetChanged()V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    .end local v1    # "table":Lcom/dodonew/online/bean/Table;
    :cond_1
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$200(Lcom/dodonew/online/view/TableView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Table;

    .line 165
    .restart local v1    # "table":Lcom/dodonew/online/bean/Table;
    const-string v3, "1"

    invoke-virtual {v1, v3}, Lcom/dodonew/online/bean/Table;->setType(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$300(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/adapter/TablesAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/dodonew/online/adapter/TablesAdapter;->notifyItemChanged(I)V

    .line 167
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$400(Lcom/dodonew/online/view/TableView;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 168
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$200(Lcom/dodonew/online/view/TableView;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v4}, Lcom/dodonew/online/view/TableView;->access$400(Lcom/dodonew/online/view/TableView;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/bean/Table;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/dodonew/online/bean/Table;->setType(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$300(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/adapter/TablesAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v4}, Lcom/dodonew/online/view/TableView;->access$400(Lcom/dodonew/online/view/TableView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/dodonew/online/adapter/TablesAdapter;->notifyItemChanged(I)V

    .line 171
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3, p2}, Lcom/dodonew/online/view/TableView;->access$402(Lcom/dodonew/online/view/TableView;I)I

    .line 172
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Table;->getSeatNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .end local v1    # "table":Lcom/dodonew/online/bean/Table;
    :cond_3
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$500(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/interfaces/OnOrderTableListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 175
    iget-object v3, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v3}, Lcom/dodonew/online/view/TableView;->access$500(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/interfaces/OnOrderTableListener;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/TableView$4;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-static {v4}, Lcom/dodonew/online/view/TableView;->access$100(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/bean/TableArea;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/dodonew/online/interfaces/OnOrderTableListener;->onTableClick(Lcom/dodonew/online/bean/TableArea;Ljava/lang/String;)V

    .line 177
    :cond_4
    return-void
.end method
