.class public Lcom/dodonew/online/bean/PlistHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PlistHandler.java"


# instance fields
.field private isRootElement:Z

.field private key:Ljava/lang/String;

.field private keyElementBegin:Z

.field private root:Ljava/lang/Object;

.field stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private valueElementBegin:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/dodonew/online/bean/PlistHandler;->isRootElement:Z

    .line 22
    iput-boolean v1, p0, Lcom/dodonew/online/bean/PlistHandler;->keyElementBegin:Z

    .line 26
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    .line 28
    iput-boolean v1, p0, Lcom/dodonew/online/bean/PlistHandler;->valueElementBegin:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 110
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "characters:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    if-lez p3, :cond_2

    .line 112
    iget-boolean v3, p0, Lcom/dodonew/online/bean/PlistHandler;->keyElementBegin:Z

    if-eqz v3, :cond_0

    .line 113
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, p0, Lcom/dodonew/online/bean/PlistHandler;->key:Ljava/lang/String;

    .line 114
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/bean/PlistHandler;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-boolean v3, p0, Lcom/dodonew/online/bean/PlistHandler;->valueElementBegin:Z

    if-eqz v3, :cond_2

    .line 117
    const-class v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    iget-object v3, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 119
    .local v1, "parent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 120
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/dodonew/online/bean/PlistHandler;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v1    # "parent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    :cond_2
    return-void

    .line 121
    :cond_3
    const-class v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 123
    .local v0, "parent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 124
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u7ed3\u675f\u89e3\u6790"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    const-string v0, "plist"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :cond_0
    const-string v0, "key"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iput-boolean v1, p0, Lcom/dodonew/online/bean/PlistHandler;->keyElementBegin:Z

    .line 139
    :cond_1
    const-string v0, "string"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iput-boolean v1, p0, Lcom/dodonew/online/bean/PlistHandler;->valueElementBegin:Z

    .line 142
    :cond_2
    const-string v0, "array"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/PlistHandler;->root:Ljava/lang/Object;

    .line 145
    :cond_3
    const-string v0, "dict"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/PlistHandler;->root:Ljava/lang/Object;

    .line 148
    :cond_4
    return-void
.end method

.method public getArrayResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/bean/PlistHandler;->root:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getMapResult()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dodonew/online/bean/PlistHandler;->root:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5f00\u59cb\u89e3\u6790"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 56
    const-string v4, "plist"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    iput-boolean v5, p0, Lcom/dodonew/online/bean/PlistHandler;->isRootElement:Z

    .line 59
    :cond_0
    const-string v4, "dict"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    iget-boolean v4, p0, Lcom/dodonew/online/bean/PlistHandler;->isRootElement:Z

    if-eqz v4, :cond_7

    .line 61
    iget-object v4, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-boolean v4, p0, Lcom/dodonew/online/bean/PlistHandler;->isRootElement:Z

    if-nez v4, :cond_6

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/dodonew/online/bean/PlistHandler;->isRootElement:Z

    .line 74
    :cond_1
    :goto_1
    const-string v4, "key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    iput-boolean v5, p0, Lcom/dodonew/online/bean/PlistHandler;->keyElementBegin:Z

    .line 85
    :cond_2
    const-string v4, "array"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    iget-boolean v4, p0, Lcom/dodonew/online/bean/PlistHandler;->isRootElement:Z

    if-eqz v4, :cond_a

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-boolean v4, p0, Lcom/dodonew/online/bean/PlistHandler;->isRootElement:Z

    if-nez v4, :cond_3

    move v6, v5

    :cond_3
    iput-boolean v6, p0, Lcom/dodonew/online/bean/PlistHandler;->isRootElement:Z

    .line 97
    .end local v1    # "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    :goto_2
    const-string v4, "string"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    iput-boolean v5, p0, Lcom/dodonew/online/bean/PlistHandler;->valueElementBegin:Z

    .line 100
    :cond_5
    return-void

    :cond_6
    move v4, v6

    .line 62
    goto :goto_0

    .line 64
    :cond_7
    iget-object v4, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    .line 65
    .local v2, "object":Ljava/lang/Object;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v0, "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v4, v2, Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 67
    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 68
    .restart local v2    # "object":Ljava/lang/Object;
    :cond_9
    instance-of v4, v2, Ljava/util/HashMap;

    if-eqz v4, :cond_8

    .line 69
    check-cast v2, Ljava/util/HashMap;

    .end local v2    # "object":Ljava/lang/Object;
    iget-object v4, p0, Lcom/dodonew/online/bean/PlistHandler;->key:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 91
    .end local v0    # "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    iget-object v4, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 92
    .local v3, "parent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .restart local v1    # "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/dodonew/online/bean/PlistHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v4, p0, Lcom/dodonew/online/bean/PlistHandler;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
