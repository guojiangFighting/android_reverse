.class Lcom/dodonew/online/ui/ChooseCityActivity$5;
.super Ljava/lang/Object;
.source "ChooseCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ChooseCityActivity;->queryCities(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ChooseCityActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$5;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/ChooseCityActivity$5;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 246
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 247
    .local v1, "factorys":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v4, 0x0

    .line 250
    .local v4, "saxparser":Ljavax/xml/parsers/SAXParser;
    :try_start_0
    iget-object v5, p0, Lcom/dodonew/online/ui/ChooseCityActivity$5;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-virtual {v5}, Lcom/dodonew/online/ui/ChooseCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iget-object v6, p0, Lcom/dodonew/online/ui/ChooseCityActivity$5;->val$fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 251
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 252
    new-instance v3, Lcom/dodonew/online/bean/PlistHandler;

    invoke-direct {v3}, Lcom/dodonew/online/bean/PlistHandler;-><init>()V

    .line 253
    .local v3, "plistHandler":Lcom/dodonew/online/bean/PlistHandler;
    invoke-virtual {v4, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 254
    iget-object v5, p0, Lcom/dodonew/online/ui/ChooseCityActivity$5;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/PlistHandler;->getArrayResult()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1102(Lcom/dodonew/online/ui/ChooseCityActivity;Ljava/util/List;)Ljava/util/List;

    .line 255
    iget-object v5, p0, Lcom/dodonew/online/ui/ChooseCityActivity$5;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v5}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1200(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "plistHandler":Lcom/dodonew/online/bean/PlistHandler;
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    iget-object v5, p0, Lcom/dodonew/online/ui/ChooseCityActivity$5;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-virtual {v5}, Lcom/dodonew/online/ui/ChooseCityActivity;->dissProgress()V

    goto :goto_0
.end method
