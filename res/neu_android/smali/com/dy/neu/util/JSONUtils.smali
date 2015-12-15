.class public Lcom/dy/neu/util/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/dy/neu/common/Result;
    .locals 13
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dy/neu/common/Result",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v9, Lcom/dy/neu/common/Result;

    invoke-direct {v9}, Lcom/dy/neu/common/Result;-><init>()V

    .line 16
    .local v9, "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .local v8, "result":Lorg/json/JSONObject;
    const-string v12, "success"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 18
    .local v10, "success":I
    if-nez v10, :cond_4

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/dy/neu/common/Result;->setSuccess(Z)V

    .line 21
    const-string v12, "data"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 23
    :cond_0
    const/4 v9, 0x0

    .line 44
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :goto_0
    return-object v9

    .line 25
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v9    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 26
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 27
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 28
    .local v2, "item":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 29
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 32
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 33
    .local v11, "value":Ljava/lang/String;
    invoke-interface {v7, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 35
    .end local v4    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v9, v6}, Lcom/dy/neu/common/Result;->setData(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/dy/neu/common/Result;->setSuccess(Z)V

    .line 41
    const-string v12, "errCode"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/dy/neu/common/Result;->setErrCode(Ljava/lang/String;)V

    .line 42
    const-string v12, "errMsg"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/dy/neu/common/Result;->setErrMsg(Ljava/lang/String;)V

    goto :goto_0
.end method
