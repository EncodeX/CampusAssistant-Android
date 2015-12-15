.class public Lcom/dy/neu/common/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field resCode:I

.field resData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "res"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/dy/neu/common/ResponseData;->resCode:I

    .line 16
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dy/neu/common/ResponseData;->resData:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/dy/neu/common/ResponseData;->resData:Ljava/lang/String;

    const-string v1, "\"data\":\"[{"

    const-string v2, "\"data\":[{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "}]\"}"

    const-string v2, "}]}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dy/neu/common/ResponseData;->resData:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/dy/neu/common/ResponseData;->resData:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/dy/neu/common/ResponseData;->resData:Ljava/lang/String;

    const-string v1, "\"data\":{"

    const-string v2, "\"data\":[{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "}}"

    const-string v2, "}]}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dy/neu/common/ResponseData;->resData:Ljava/lang/String;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public getResCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/dy/neu/common/ResponseData;->resCode:I

    return v0
.end method

.method public getResData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dy/neu/common/ResponseData;->resData:Ljava/lang/String;

    return-object v0
.end method

.method public setResCode(I)V
    .locals 0
    .param p1, "resCode"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/dy/neu/common/ResponseData;->resCode:I

    .line 28
    return-void
.end method

.method public setResData(Ljava/lang/String;)V
    .locals 0
    .param p1, "resData"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/dy/neu/common/ResponseData;->resData:Ljava/lang/String;

    .line 36
    return-void
.end method
