.class Lcom/dodonew/online/ui/ChooseCityActivity$2;
.super Ljava/lang/Object;
.source "ChooseCityActivity.java"

# interfaces
.implements Lcom/dodonew/online/view/SearchView$MyTextWatcher;


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
    .line 166
    iput-object p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 204
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 199
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 169
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$300(Lcom/dodonew/online/ui/ChooseCityActivity;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$400(Lcom/dodonew/online/ui/ChooseCityActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    new-instance v1, Lcom/dodonew/online/view/SearchRecordView;

    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    iget-object v3, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$400(Lcom/dodonew/online/ui/ChooseCityActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/dodonew/online/view/SearchRecordView;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$502(Lcom/dodonew/online/ui/ChooseCityActivity;Lcom/dodonew/online/view/SearchRecordView;)Lcom/dodonew/online/view/SearchRecordView;

    .line 174
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$600(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/view/SearchRecordView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$800(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$700(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    :cond_0
    :goto_1
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/view/SearchRecordView;->refresh()V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/view/SearchRecordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$800(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$902(Lcom/dodonew/online/ui/ChooseCityActivity;I)I

    .line 189
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$400(Lcom/dodonew/online/ui/ChooseCityActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/view/SearchRecordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$800(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$2;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method
