.class Lcom/dodonew/online/ui/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/FeedbackActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/FeedbackActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 129
    iget-object v5, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    iget-object v5, v5, Lcom/dodonew/online/ui/FeedbackActivity;->userReplyContentEdit:Landroid/widget/EditText;

    .line 130
    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "content":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    iget-object v5, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    const-string v6, "\u53d1\u9001\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a\u3002"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 133
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 160
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v5, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    iget-object v5, v5, Lcom/dodonew/online/ui/FeedbackActivity;->userReplyContentEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->clear()V

    .line 137
    iget-object v5, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-static {v5}, Lcom/dodonew/online/ui/FeedbackActivity;->access$000(Lcom/dodonew/online/ui/FeedbackActivity;)Lcom/umeng/fb/model/Conversation;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/umeng/fb/model/Conversation;->addUserReply(Ljava/lang/String;)V

    .line 138
    iget-object v5, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-virtual {v5}, Lcom/dodonew/online/ui/FeedbackActivity;->sync()V

    .line 139
    iget-object v5, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/dodonew/online/ui/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 140
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_1

    .line 141
    iget-object v5, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    iget-object v5, v5, Lcom/dodonew/online/ui/FeedbackActivity;->userReplyContentEdit:Landroid/widget/EditText;

    .line 142
    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 141
    invoke-virtual {v3, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 144
    :cond_1
    iget-object v5, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-static {v5}, Lcom/dodonew/online/ui/FeedbackActivity;->access$100(Lcom/dodonew/online/ui/FeedbackActivity;)Lcom/umeng/fb/FeedbackAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/fb/FeedbackAgent;->getUserInfo()Lcom/umeng/fb/model/UserInfo;

    move-result-object v4

    .line 145
    .local v4, "info":Lcom/umeng/fb/model/UserInfo;
    if-nez v4, :cond_2

    .line 146
    new-instance v4, Lcom/umeng/fb/model/UserInfo;

    .end local v4    # "info":Lcom/umeng/fb/model/UserInfo;
    invoke-direct {v4}, Lcom/umeng/fb/model/UserInfo;-><init>()V

    .line 147
    .restart local v4    # "info":Lcom/umeng/fb/model/UserInfo;
    :cond_2
    invoke-virtual {v4}, Lcom/umeng/fb/model/UserInfo;->getContact()Ljava/util/Map;

    move-result-object v0

    .line 148
    .local v0, "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, ""

    .line 149
    .local v1, "contact_info":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 150
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .restart local v0    # "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-static {v6}, Lcom/dodonew/online/ui/FeedbackActivity;->access$200(Lcom/dodonew/online/ui/FeedbackActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-static {v6}, Lcom/dodonew/online/ui/FeedbackActivity;->access$300(Lcom/dodonew/online/ui/FeedbackActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_1
    const-string v5, "plain"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v4, v0}, Lcom/umeng/fb/model/UserInfo;->setContact(Ljava/util/Map;)V

    .line 159
    iget-object v5, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-static {v5}, Lcom/dodonew/online/ui/FeedbackActivity;->access$100(Lcom/dodonew/online/ui/FeedbackActivity;)Lcom/umeng/fb/FeedbackAgent;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/umeng/fb/FeedbackAgent;->setUserInfo(Lcom/umeng/fb/model/UserInfo;)V

    goto/16 :goto_0

    .line 153
    :cond_3
    iget-object v5, p0, Lcom/dodonew/online/ui/FeedbackActivity$3;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-static {v5}, Lcom/dodonew/online/ui/FeedbackActivity;->access$100(Lcom/dodonew/online/ui/FeedbackActivity;)Lcom/umeng/fb/FeedbackAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/fb/FeedbackAgent;->getUserInfo()Lcom/umeng/fb/model/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/fb/model/UserInfo;->getContact()Ljava/util/Map;

    move-result-object v5

    const-string v6, "plain"

    .line 154
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "contact_info":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "contact_info":Ljava/lang/String;
    goto :goto_1
.end method
