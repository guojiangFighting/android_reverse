.class public Lcom/dodonew/online/ui/FeedbackActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;
    }
.end annotation


# static fields
.field private static final KEY_UMENG_CONTACT_INFO_PLAIN_TEXT:Ljava/lang/String; = "plain"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;

.field private agent:Lcom/umeng/fb/FeedbackAgent;

.field private content:Ljava/lang/String;

.field private defaultConversation:Lcom/umeng/fb/model/Conversation;

.field private dialog:Landroid/app/Dialog;

.field private email:Ljava/lang/String;

.field private feedbackAdapter:Lcom/dodonew/online/adapter/FeedbackAdapter;

.field private headReply:Lcom/umeng/fb/model/Reply;

.field header:Landroid/widget/RelativeLayout;

.field headerHeight:I

.field headerPaddingOriginal:I

.field private mLastMotionY:I

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private nickName:Ljava/lang/String;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private replies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;"
        }
    .end annotation
.end field

.field userEmail:Landroid/widget/EditText;

.field userName:Landroid/widget/EditText;

.field userReplyContentEdit:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/ui/FeedbackActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->email:Ljava/lang/String;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/FeedbackActivity;)Lcom/umeng/fb/model/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/FeedbackActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->defaultConversation:Lcom/umeng/fb/model/Conversation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/FeedbackActivity;)Lcom/umeng/fb/FeedbackAgent;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/FeedbackActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/FeedbackActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/FeedbackActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/FeedbackActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/FeedbackActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/FeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/FeedbackActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/ui/FeedbackActivity;->setFeedbackAdapter()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/ui/FeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/FeedbackActivity$2;-><init>(Lcom/dodonew/online/ui/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 125
    const v0, 0x7f0d0204

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/ui/FeedbackActivity$3;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/FeedbackActivity$3;-><init>(Lcom/dodonew/online/ui/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method private initUserInfo()V
    .locals 5

    .prologue
    .line 166
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/FeedbackActivity;->nickName:Ljava/lang/String;

    .line 167
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/FeedbackActivity;->email:Ljava/lang/String;

    .line 168
    iget-object v3, p0, Lcom/dodonew/online/ui/FeedbackActivity;->nickName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/FeedbackActivity;->nickName:Ljava/lang/String;

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/dodonew/online/ui/FeedbackActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v3}, Lcom/umeng/fb/FeedbackAgent;->getUserInfo()Lcom/umeng/fb/model/UserInfo;

    move-result-object v2

    .line 172
    .local v2, "info":Lcom/umeng/fb/model/UserInfo;
    if-nez v2, :cond_1

    .line 173
    new-instance v2, Lcom/umeng/fb/model/UserInfo;

    .end local v2    # "info":Lcom/umeng/fb/model/UserInfo;
    invoke-direct {v2}, Lcom/umeng/fb/model/UserInfo;-><init>()V

    .line 174
    .restart local v2    # "info":Lcom/umeng/fb/model/UserInfo;
    :cond_1
    invoke-virtual {v2}, Lcom/umeng/fb/model/UserInfo;->getContact()Ljava/util/Map;

    move-result-object v0

    .line 175
    .local v0, "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 176
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .restart local v0    # "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/ui/FeedbackActivity;->nickName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/ui/FeedbackActivity;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "contact_info":Ljava/lang/String;
    const-string v3, "plain"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v2, v0}, Lcom/umeng/fb/model/UserInfo;->setContact(Ljava/util/Map;)V

    .line 181
    iget-object v3, p0, Lcom/dodonew/online/ui/FeedbackActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v3, v2}, Lcom/umeng/fb/FeedbackAgent;->setUserInfo(Lcom/umeng/fb/model/UserInfo;)V

    .line 182
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    const-string v0, "\u610f\u89c1\u53cd\u9988"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FeedbackActivity;->setTitle(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/FeedbackActivity;->setNavigationIcon(I)V

    .line 107
    const v0, 0x7f0d0242

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 108
    const v0, 0x7f0d0243

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 109
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 113
    const v0, 0x7f0d0205

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->userReplyContentEdit:Landroid/widget/EditText;

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->userReplyContentEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    return-void
.end method

.method private sendFeedback()V
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->userReplyContentEdit:Landroid/widget/EditText;

    .line 298
    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->userReplyContentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 300
    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->defaultConversation:Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v1, v0}, Lcom/umeng/fb/model/Conversation;->addUserReply(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FeedbackActivity;->sync()V

    .line 306
    return-void
.end method

.method private setFeedbackAdapter()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->feedbackAdapter:Lcom/dodonew/online/adapter/FeedbackAdapter;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/dodonew/online/adapter/FeedbackAdapter;

    iget-object v2, p0, Lcom/dodonew/online/ui/FeedbackActivity;->defaultConversation:Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v2}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/dodonew/online/adapter/FeedbackAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->feedbackAdapter:Lcom/dodonew/online/adapter/FeedbackAdapter;

    .line 90
    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/dodonew/online/ui/FeedbackActivity;->feedbackAdapter:Lcom/dodonew/online/adapter/FeedbackAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 91
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->feedbackAdapter:Lcom/dodonew/online/adapter/FeedbackAdapter;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;)V

    .line 92
    .local v0, "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 93
    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->feedbackAdapter:Lcom/dodonew/online/adapter/FeedbackAdapter;

    new-instance v2, Lcom/dodonew/online/ui/FeedbackActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/dodonew/online/ui/FeedbackActivity$1;-><init>(Lcom/dodonew/online/ui/FeedbackActivity;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/adapter/FeedbackAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 100
    .end local v0    # "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->feedbackAdapter:Lcom/dodonew/online/adapter/FeedbackAdapter;

    invoke-virtual {v1}, Lcom/dodonew/online/adapter/FeedbackAdapter;->notifyDataSetChanged()V

    .line 101
    iget-object v1, p0, Lcom/dodonew/online/ui/FeedbackActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 102
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v2, 0x7f0300b3

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/FeedbackActivity;->setContentView(I)V

    .line 74
    invoke-direct {p0}, Lcom/dodonew/online/ui/FeedbackActivity;->initView()V

    .line 75
    invoke-direct {p0}, Lcom/dodonew/online/ui/FeedbackActivity;->initEvent()V

    .line 76
    new-instance v2, Lcom/umeng/fb/FeedbackAgent;

    invoke-direct {v2, p0}, Lcom/umeng/fb/FeedbackAgent;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dodonew/online/ui/FeedbackActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    .line 77
    iget-object v2, p0, Lcom/dodonew/online/ui/FeedbackActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v2}, Lcom/umeng/fb/FeedbackAgent;->getDefaultConversation()Lcom/umeng/fb/model/Conversation;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/FeedbackActivity;->defaultConversation:Lcom/umeng/fb/model/Conversation;

    .line 78
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 81
    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/FeedbackActivity;->content:Ljava/lang/String;

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/dodonew/online/ui/FeedbackActivity;->initUserInfo()V

    .line 84
    invoke-virtual {p0}, Lcom/dodonew/online/ui/FeedbackActivity;->sync()V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 319
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 320
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 322
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 313
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 314
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 316
    return-void
.end method

.method sync()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity;->defaultConversation:Lcom/umeng/fb/model/Conversation;

    new-instance v1, Lcom/dodonew/online/ui/FeedbackActivity$4;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/FeedbackActivity$4;-><init>(Lcom/dodonew/online/ui/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/fb/model/Conversation;->sync(Lcom/umeng/fb/SyncListener;)V

    .line 198
    return-void
.end method
