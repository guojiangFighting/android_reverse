.class Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReplyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/dodonew/online/ui/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/ui/FeedbackActivity;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/ui/FeedbackActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;->mContext:Landroid/content/Context;

    .line 206
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 207
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/FeedbackActivity;->access$000(Lcom/dodonew/online/ui/FeedbackActivity;)Lcom/umeng/fb/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, "replyList":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/Reply;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FeedbackActivity;->access$000(Lcom/dodonew/online/ui/FeedbackActivity;)Lcom/umeng/fb/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 285
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, -0x2

    .line 225
    if-nez p2, :cond_0

    .line 226
    iget-object v3, p0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300b5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 228
    new-instance v0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;-><init>(Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;)V

    .line 230
    .local v0, "holder":Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;
    const v3, 0x7f0d0207

    .line 231
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;->replyDate:Landroid/widget/TextView;

    .line 233
    const v3, 0x7f0d0205

    .line 234
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    .line 236
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 240
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/FeedbackActivity;->access$000(Lcom/dodonew/online/ui/FeedbackActivity;)Lcom/umeng/fb/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/fb/model/Reply;

    .line 242
    .local v2, "reply":Lcom/umeng/fb/model/Reply;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    instance-of v3, v2, Lcom/umeng/fb/model/Reply;

    if-eqz v3, :cond_1

    .line 247
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    iget-object v3, v0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v3, v0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    const v4, 0x7f0200ac

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 262
    :goto_1
    iget-object v3, v0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;->replyDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    iget-wide v6, v2, Lcom/umeng/fb/model/Reply;->created_at:J

    .line 263
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v3, v0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/umeng/fb/model/Reply;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-object p2

    .line 238
    .end local v0    # "holder":Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;
    goto :goto_0

    .line 255
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_1
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 257
    iget-object v3, v0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v3, v0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    const v4, 0x7f02012d

    .line 259
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method
