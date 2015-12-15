.class public Lcom/dy/neu/util/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/dy/neu/util/HttpUtils;->httpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Lcom/dy/neu/common/ResponseData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dy/neu/common/HttpTransException;
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "param":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "getMethod":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    sget-object v4, Lcom/dy/neu/util/HttpUtils;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 31
    .local v3, "res":Lorg/apache/http/HttpResponse;
    new-instance v4, Lcom/dy/neu/common/ResponseData;

    invoke-direct {v4, v3}, Lcom/dy/neu/common/ResponseData;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    .line 32
    .end local v3    # "res":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v4, Lcom/dy/neu/common/HttpTransException;

    invoke-direct {v4}, Lcom/dy/neu/common/HttpTransException;-><init>()V

    throw v4

    .line 34
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/dy/neu/common/HttpTransException;

    invoke-direct {v4}, Lcom/dy/neu/common/HttpTransException;-><init>()V

    throw v4
.end method

.method public static post(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Lcom/dy/neu/common/ResponseData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dy/neu/common/HttpTransException;
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "postMethod":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p1, :cond_0

    .line 42
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 44
    :cond_0
    sget-object v3, Lcom/dy/neu/util/HttpUtils;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 45
    .local v2, "res":Lorg/apache/http/HttpResponse;
    new-instance v3, Lcom/dy/neu/common/ResponseData;

    invoke-direct {v3, v2}, Lcom/dy/neu/common/ResponseData;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v3

    .line 46
    .end local v2    # "res":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/dy/neu/common/HttpTransException;

    invoke-direct {v3}, Lcom/dy/neu/common/HttpTransException;-><init>()V

    throw v3

    .line 48
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v3, Lcom/dy/neu/common/HttpTransException;

    invoke-direct {v3}, Lcom/dy/neu/common/HttpTransException;-><init>()V

    throw v3

    .line 50
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/dy/neu/common/HttpTransException;

    invoke-direct {v3}, Lcom/dy/neu/common/HttpTransException;-><init>()V

    throw v3
.end method
