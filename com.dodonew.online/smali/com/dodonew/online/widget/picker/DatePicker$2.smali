.class Lcom/dodonew/online/widget/picker/DatePicker$2;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/picker/DatePicker;->makeCenterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/picker/DatePicker;

.field final synthetic val$dayView:Lcom/dodonew/online/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/picker/DatePicker;Lcom/dodonew/online/widget/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/picker/DatePicker;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    iput-object p2, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->val$dayView:Lcom/dodonew/online/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(ZILjava/lang/String;)V
    .locals 6
    .param p1, "isUserScroll"    # Z
    .param p2, "selectedIndex"    # I
    .param p3, "item"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v2, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v2, p2}, Lcom/dodonew/online/widget/picker/DatePicker;->access$002(Lcom/dodonew/online/widget/picker/DatePicker;I)I

    .line 246
    iget-object v2, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v2}, Lcom/dodonew/online/widget/picker/DatePicker;->access$100(Lcom/dodonew/online/widget/picker/DatePicker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v2, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v2, p3}, Lcom/dodonew/online/widget/picker/DatePicker;->access$200(Lcom/dodonew/online/widget/picker/DatePicker;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    iget-object v2, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v2}, Lcom/dodonew/online/widget/picker/DatePicker;->access$400(Lcom/dodonew/online/widget/picker/DatePicker;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v5}, Lcom/dodonew/online/widget/picker/DatePicker;->access$300(Lcom/dodonew/online/widget/picker/DatePicker;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/dodonew/online/widget/picker/DatePicker;->access$200(Lcom/dodonew/online/widget/picker/DatePicker;Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Lcom/dodonew/online/util/DateUtils;->calculateDaysInMonth(II)I

    move-result v1

    .line 248
    .local v1, "maxDays":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 249
    iget-object v2, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v2}, Lcom/dodonew/online/widget/picker/DatePicker;->access$100(Lcom/dodonew/online/widget/picker/DatePicker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Lcom/dodonew/online/util/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v2}, Lcom/dodonew/online/widget/picker/DatePicker;->access$500(Lcom/dodonew/online/widget/picker/DatePicker;)I

    move-result v2

    if-lt v2, v1, :cond_1

    .line 253
    iget-object v2, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    iget-object v3, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v3}, Lcom/dodonew/online/widget/picker/DatePicker;->access$100(Lcom/dodonew/online/widget/picker/DatePicker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/picker/DatePicker;->access$502(Lcom/dodonew/online/widget/picker/DatePicker;I)I

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->val$dayView:Lcom/dodonew/online/widget/WheelView;

    iget-object v3, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v3}, Lcom/dodonew/online/widget/picker/DatePicker;->access$100(Lcom/dodonew/online/widget/picker/DatePicker;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/widget/picker/DatePicker$2;->this$0:Lcom/dodonew/online/widget/picker/DatePicker;

    invoke-static {v4}, Lcom/dodonew/online/widget/picker/DatePicker;->access$500(Lcom/dodonew/online/widget/picker/DatePicker;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dodonew/online/widget/WheelView;->setItems(Ljava/util/List;I)V

    .line 256
    return-void
.end method
