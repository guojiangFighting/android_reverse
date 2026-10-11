.class public Lcom/dodonew/online/view/PlayHeadView;
.super Landroid/widget/FrameLayout;
.source "PlayHeadView.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private channel:Lcom/dodonew/online/bean/Channel;

.field private contanier:Landroid/widget/FrameLayout;

.field private context:Landroid/content/Context;

.field private gson:Lcom/google/gson/Gson;

.field private height:I

.field private imageView:Landroid/widget/ImageView;

.field private request:Lcom/dodonew/online/http/GsonObjectRequest;

.field private tvChannelName:Landroid/widget/TextView;

.field private tvCount:Landroid/widget/TextView;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/view/PlayHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/view/PlayHeadView;->height:I

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->gson:Lcom/google/gson/Gson;

    .line 70
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/PlayHeadView;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/PlayHeadView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/PlayHeadView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/view/PlayHeadView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/PlayHeadView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/PlayHeadView;->initWebView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/view/PlayHeadView;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/PlayHeadView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/view/PlayHeadView;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/PlayHeadView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/view/PlayHeadView;Lcom/dodonew/online/bean/VideoUrlData;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/PlayHeadView;
    .param p1, "x1"    # Lcom/dodonew/online/bean/VideoUrlData;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/PlayHeadView;->setVideoUrlData(Lcom/dodonew/online/bean/VideoUrlData;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bf

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    iput-object p1, p0, Lcom/dodonew/online/view/PlayHeadView;->context:Landroid/content/Context;

    .line 76
    const v0, 0x7f0d0226

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/PlayHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->contanier:Landroid/widget/FrameLayout;

    .line 77
    const v0, 0x7f0d0227

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/PlayHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->imageView:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0d015b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/PlayHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->tvChannelName:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0d015a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/PlayHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->tvCount:Landroid/widget/TextView;

    .line 80
    invoke-static {p1}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x190

    iput v0, p0, Lcom/dodonew/online/view/PlayHeadView;->height:I

    .line 81
    iget-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->contanier:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/dodonew/online/view/PlayHeadView;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const v0, 0x7f0d0228

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/PlayHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/view/PlayHeadView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/PlayHeadView$1;-><init>(Lcom/dodonew/online/view/PlayHeadView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method private initURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 139
    iget-object v2, p0, Lcom/dodonew/online/view/PlayHeadView;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method private initWebView(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    const-string v2, "oneshot"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v2, "configchange"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 150
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/dodonew/online/view/PlayHeadView;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method private queryUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Lcom/dodonew/online/view/PlayHeadView$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/PlayHeadView$2;-><init>(Lcom/dodonew/online/view/PlayHeadView;)V

    .line 108
    invoke-virtual {v0}, Lcom/dodonew/online/view/PlayHeadView$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "roomId"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/dodonew/online/http/GsonObjectRequest;

    iget-object v1, p0, Lcom/dodonew/online/view/PlayHeadView;->context:Landroid/content/Context;

    const-string v2, " http://star.api.plu.cn/live/GetLiveUrl"

    new-instance v4, Lcom/dodonew/online/view/PlayHeadView$3;

    invoke-direct {v4, p0}, Lcom/dodonew/online/view/PlayHeadView$3;-><init>(Lcom/dodonew/online/view/PlayHeadView;)V

    new-instance v5, Lcom/dodonew/online/view/PlayHeadView$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/view/PlayHeadView$4;-><init>(Lcom/dodonew/online/view/PlayHeadView;)V

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/http/GsonObjectRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->request:Lcom/dodonew/online/http/GsonObjectRequest;

    .line 124
    return-void
.end method

.method private setVideoUrlData(Lcom/dodonew/online/bean/VideoUrlData;)V
    .locals 2
    .param p1, "obj"    # Lcom/dodonew/online/bean/VideoUrlData;

    .prologue
    .line 128
    iget-object v0, p1, Lcom/dodonew/online/bean/VideoUrlData;->urls:Ljava/util/List;

    .line 129
    .local v0, "urls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/VideoUrl;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/VideoUrl;

    iget-object v1, v1, Lcom/dodonew/online/bean/VideoUrl;->securityUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/dodonew/online/view/PlayHeadView;->videoUrl:Ljava/lang/String;

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public setChannel(Lcom/dodonew/online/bean/Channel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Lcom/dodonew/online/bean/Channel;
    .param p2, "viewers"    # Ljava/lang/String;
    .param p3, "preview"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f02007d

    .line 94
    iput-object p1, p0, Lcom/dodonew/online/view/PlayHeadView;->channel:Lcom/dodonew/online/bean/Channel;

    .line 95
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Channel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/view/PlayHeadView;->queryUrl(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->tvChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Channel;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/dodonew/online/view/PlayHeadView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/view/PlayHeadView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head><meta charset=\"utf-8\" /></head><body bgcolor=\"#000000\"><embed src=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'  width=100% height=100% align=\"middle\" allowScriptAccess=\"always\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " allowFullScreen=\"true\" wmode=\"transparent\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type=\"application/x-shockwave-flash\"> </embed></body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head><meta charset=UTF-8><script>window.onload=function(){document.domain=\'longzhu.com\';}<script></head><body style=\'margin:0px\'><div style=\'width:100%; height: 00%;\'><iframe src=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?from=mwx-nolive\' style=\'width:100%; height:100%; border:0;\'> </iframe> </div></body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "strHtml":Ljava/lang/String;
    return-void
.end method
