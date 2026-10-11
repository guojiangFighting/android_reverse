.class Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 175
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$2;->$SwitchMap$com$dodonew$online$widget$swipelayout$SwipeLayout$DragEdge:[I

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 213
    .end local p2    # "left":I
    :cond_0
    :goto_0
    return p2

    .line 178
    .restart local p2    # "left":I
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    add-int p2, v0, v1

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 194
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$2;->$SwitchMap$com$dodonew$online$widget$swipelayout$SwipeLayout$DragEdge:[I

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 197
    :pswitch_3
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto/16 :goto_0

    .line 199
    :pswitch_4
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$200(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto/16 :goto_0

    .line 205
    :pswitch_5
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$200(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto/16 :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 194
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 219
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$2;->$SwitchMap$com$dodonew$online$widget$swipelayout$SwipeLayout$DragEdge:[I

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 265
    .end local p2    # "top":I
    :cond_0
    :goto_0
    return p2

    .line 222
    .restart local p2    # "top":I
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    add-int p2, v0, v1

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_0

    .line 238
    :cond_3
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$2;->$SwitchMap$com$dodonew$online$widget$swipelayout$SwipeLayout$DragEdge:[I

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 243
    :pswitch_3
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$200(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v0, v1, :cond_4

    .line 244
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    .line 241
    :pswitch_4
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 248
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    add-int p2, v0, v1

    goto/16 :goto_0

    .line 254
    :pswitch_5
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$200(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v0, v1, :cond_6

    .line 255
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto/16 :goto_0

    .line 258
    :cond_6
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 259
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    .line 260
    :cond_7
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto/16 :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 238
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$100(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)I

    move-result v0

    return v0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 14
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 303
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    .local v3, "evLeft":I
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    .line 304
    .local v4, "evRight":I
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    .local v5, "evTop":I
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    .line 305
    .local v2, "evBottom":I
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    if-ne p1, v9, :cond_3

    .line 307
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$200(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v9

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v9, v10, :cond_1

    .line 308
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_2

    .line 309
    :cond_0
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->offsetLeftAndRight(I)V

    .line 334
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9, v3, v5, v4, v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->dispatchRevealEvent(IIII)V

    .line 336
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v9, v3, v5, v0, v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->dispatchSwipeEvent(IIII)V

    .line 338
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->invalidate()V

    .line 339
    return-void

    .line 311
    :cond_2
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v9

    if-ne p1, v9, :cond_1

    .line 316
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$200(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v9

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v9, v10, :cond_4

    .line 317
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->offsetLeftAndRight(I)V

    .line 318
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 320
    :cond_4
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    iget-object v10, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v10}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$700(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;)Landroid/graphics/Rect;

    move-result-object v8

    .line 321
    .local v8, "rect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v9

    iget v10, v8, Landroid/graphics/Rect;->left:I

    iget v11, v8, Landroid/graphics/Rect;->top:I

    iget v12, v8, Landroid/graphics/Rect;->right:I

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 323
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v9

    add-int v6, v9, p4

    .local v6, "newLeft":I
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    add-int v7, v9, p5

    .line 325
    .local v7, "newTop":I
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v9

    if-ge v6, v9, :cond_6

    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v6

    .line 330
    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v10}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v6

    iget-object v11, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v11}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v9, v6, v7, v10, v11}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_0

    .line 326
    :cond_6
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v9

    if-le v6, v9, :cond_7

    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingLeft()I

    move-result v6

    goto :goto_1

    .line 327
    :cond_7
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v9

    if-ge v7, v9, :cond_8

    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v7

    goto :goto_1

    .line 328
    :cond_8
    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Bottom:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_5

    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v9

    if-le v7, v9, :cond_5

    iget-object v9, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v9}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getPaddingTop()I

    move-result v7

    goto :goto_1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 285
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 286
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$300(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;

    .line 287
    .local v0, "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-interface {v0, v2, p2, p3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;->onHandRelease(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;FF)V

    goto :goto_0

    .line 288
    .end local v0    # "l":Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1, p2, p3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$400(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;FF)V

    .line 298
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->invalidate()V

    .line 299
    return-void

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getShowMode()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v1, v2, :cond_3

    .line 292
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1, p2, p3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$500(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;FF)V

    goto :goto_1

    .line 293
    :cond_3
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getShowMode()Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->LayDown:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    if-ne v1, v2, :cond_1

    .line 294
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v1, p2, p3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$600(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;FF)V

    goto :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$1;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
