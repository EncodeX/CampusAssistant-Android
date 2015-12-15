.class public abstract Lcom/dy/neu/common/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static final METHOD_GET:I = 0x2

.field public static final METHOD_POST:I = 0x1


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field protected errMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dy/neu/common/BaseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/common/BaseActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dy/neu/common/BaseActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private checkToken(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p0}, Lcom/dy/neu/common/BaseActivity;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "token":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 173
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .restart local p1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected checkResult(Lcom/dy/neu/common/Result;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dy/neu/common/Result",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 124
    if-nez p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/dy/neu/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 137
    :goto_0
    return v1

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/dy/neu/common/Result;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/dy/neu/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dy/neu/common/Result;->getErrMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/dy/neu/common/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    .local v0, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/dy/neu/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u6ca1\u6709\u6570\u636e\u8bb0\u5f55"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 137
    goto :goto_0
.end method

.method protected clearUserInfo()V
    .locals 4

    .prologue
    .line 194
    const-string v2, "userInfo"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/dy/neu/common/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 196
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    return-void
.end method

.method protected abstract fetchData(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected getData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dy/neu/common/BaseActivity;->getData(Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    .line 36
    return-void
.end method

.method protected getData(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "method"    # I
    .param p4, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dy/neu/common/BaseActivity;->getData(Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    .line 48
    return-void
.end method

.method protected getData(Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "method"    # I
    .param p4, "isCheckCount"    # Z
    .param p5, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v3, 0x1

    .line 50
    new-instance v6, Lcom/dy/neu/common/BaseActivity$1;

    invoke-direct {v6, p0, p4, p5}, Lcom/dy/neu/common/BaseActivity$1;-><init>(Lcom/dy/neu/common/BaseActivity;ZLjava/lang/String;)V

    .line 93
    .local v6, "handler":Landroid/os/Handler;
    const/4 v1, 0x0

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/dy/neu/common/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/dy/neu/common/BaseActivity$2;

    invoke-direct {v5, p0}, Lcom/dy/neu/common/BaseActivity$2;-><init>(Lcom/dy/neu/common/BaseActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dy/neu/common/BaseActivity;->dialog:Landroid/app/ProgressDialog;

    .line 100
    new-instance v0, Lcom/dy/neu/common/BaseActivity$3;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/dy/neu/common/BaseActivity$3;-><init>(Lcom/dy/neu/common/BaseActivity;ILjava/lang/String;Ljava/util/List;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/dy/neu/common/BaseActivity$3;->start()V

    .line 121
    return-void
.end method

.method protected getData(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/dy/neu/common/BaseActivity;->getData(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 42
    return-void
.end method

.method protected getData(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "isCheckCount"    # Z
    .param p4, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dy/neu/common/BaseActivity;->getData(Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    .line 45
    return-void
.end method

.method protected getData(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isCheckCount"    # Z
    .param p3, "op"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dy/neu/common/BaseActivity;->getData(Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    .line 39
    return-void
.end method

.method protected getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
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

    .prologue
    .line 157
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-direct {p0, p2}, Lcom/dy/neu/common/BaseActivity;->checkToken(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 158
    invoke-virtual {p0, p1}, Lcom/dy/neu/common/BaseActivity;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "realUrl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 161
    .local v2, "resData":Lcom/dy/neu/common/ResponseData;
    :try_start_0
    invoke-static {v1, p2}, Lcom/dy/neu/util/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    :try_end_0
    .catch Lcom/dy/neu/common/HttpTransException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 165
    :goto_0
    if-nez v2, :cond_0

    .line 166
    const/4 v2, 0x0

    .line 168
    .end local v2    # "resData":Lcom/dy/neu/common/ResponseData;
    :cond_0
    return-object v2

    .line 162
    .restart local v2    # "resData":Lcom/dy/neu/common/ResponseData;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lcom/dy/neu/common/HttpTransException;
    const-string v3, ""

    const-string v4, "\u83b7\u53d6\u6570\u636e\u9519\u8bef"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getPostData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    .locals 5
    .param p1, "moduleUrl"    # Ljava/lang/String;
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

    .prologue
    .line 141
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-direct {p0, p2}, Lcom/dy/neu/common/BaseActivity;->checkToken(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 142
    invoke-virtual {p0, p1}, Lcom/dy/neu/common/BaseActivity;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 146
    .local v1, "resData":Lcom/dy/neu/common/ResponseData;
    :try_start_0
    invoke-static {v2, p2}, Lcom/dy/neu/util/HttpUtils;->post(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    :try_end_0
    .catch Lcom/dy/neu/common/HttpTransException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    :goto_0
    if-nez v1, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 153
    .end local v1    # "resData":Lcom/dy/neu/common/ResponseData;
    :cond_0
    return-object v1

    .line 147
    .restart local v1    # "resData":Lcom/dy/neu/common/ResponseData;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lcom/dy/neu/common/HttpTransException;
    const-string v3, ""

    const-string v4, "\u83b7\u53d6\u6570\u636e\u9519\u8bef"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getRealName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    const-string v1, "userInfo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/dy/neu/common/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "realName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    const-string v1, "userInfo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/dy/neu/common/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 208
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/dy/neu/common/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/dy/neu/common/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v1, "userInfo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/dy/neu/common/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    const-string v1, "userInfo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/dy/neu/common/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 213
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "userName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected isTeacher()Z
    .locals 3

    .prologue
    .line 221
    const-string v1, "userInfo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/dy/neu/common/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "isTeacher"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected setUserInfo(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "userInfo"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/dy/neu/common/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "userName"

    const-string v2, "userName"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v3, "realName"

    const-string v2, "realName"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v3, "isTeacher"

    const-string v2, "isTeacher"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v3, "token"

    const-string v2, "token"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v2, "pwd"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "pwd"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 189
    const-string v3, "pwd"

    const-string v2, "pwd"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    return-void
.end method
