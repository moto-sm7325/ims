.class public Lorg/codeaurora/ims/parser/SAXXMLParser;
.super Ljava/lang/Object;
.source "SAXXMLParser.java"


# static fields
.field private static sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

.field private static sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSAXXMLParser()Lorg/codeaurora/ims/parser/SAXXMLParser;
    .locals 1

    .line 44
    sget-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/codeaurora/ims/parser/SAXXMLParser;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/SAXXMLParser;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    .line 47
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .line 22
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 25
    .local v0, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v1, Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-direct {v1}, Lorg/codeaurora/ims/parser/SAXXMLHandler;-><init>()V

    sput-object v1, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    .line 27
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 28
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 29
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 31
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "xmlReader":Lorg/xml/sax/XMLReader;
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "ex":Ljava/lang/Exception;
    instance-of v1, v0, Lorg/codeaurora/ims/parser/InvalidConfVersionException;

    const-string v2, "SAXXMLHandler"

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "Exception caught at SAXParser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :cond_0
    instance-of v1, v0, Ljava/text/ParseException;

    if-eqz v1, :cond_1

    .line 36
    const-string v1, "InValid Format , Exception in Parser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/SAXXMLHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfInfoHandle()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    .line 51
    sget-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/SAXXMLHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;

    move-result-object v0

    return-object v0
.end method
