.class Lcom/dy/neu/activity/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/LoginActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity$1;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dy/neu/activity/LoginActivity$1;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const-string v2, "loginTimes"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/dy/neu/activity/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 85
    .local v17, "sp":Landroid/content/SharedPreferences;
    const-string v1, "locked"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 86
    .local v12, "locked":Z
    if-eqz v12, :cond_0

    .line 87
    const-string v1, "lockedDate"

    const-wide/16 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 88
    .local v13, "lockedDate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v7, v1, v13

    .line 89
    .local v7, "diff":J
    const-wide/32 v1, 0x493e0

    cmp-long v1, v7, v1

    if-lez v1, :cond_2

    .line 90
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 91
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "locked"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v1, "times"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v1, "lockedDate"

    const-wide/16 v4, 0x0

    invoke-interface {v11, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    .end local v7    # "diff":J
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "lockedDate":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dy/neu/activity/LoginActivity$1;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 103
    .local v18, "userName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dy/neu/activity/LoginActivity$1;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 104
    .local v16, "password":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dy/neu/activity/LoginActivity$1;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const-string v2, "\u8bf7\u8f93\u5165\u7528\u6237\u540d\u548c\u5bc6\u7801"

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 119
    .end local v16    # "password":Ljava/lang/String;
    .end local v18    # "userName":Ljava/lang/String;
    :goto_0
    return-void

    .line 97
    .restart local v7    # "diff":J
    .restart local v13    # "lockedDate":J
    :cond_2
    const-wide/16 v1, 0x3e8

    div-long v1, v7, v1

    const-wide/16 v4, 0x3c

    div-long/2addr v1, v4

    long-to-int v1, v1

    rsub-int/lit8 v9, v1, 0x5

    .line 98
    .local v9, "diffM":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dy/neu/activity/LoginActivity$1;->this$0:Lcom/dy/neu/activity/LoginActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e10\u6237\u5df2\u88ab\u9501\u5b9a\uff0c\u8bf7"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u5206\u949f\u540e\u518d\u8bd5"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    .end local v7    # "diff":J
    .end local v9    # "diffM":I
    .end local v13    # "lockedDate":J
    .restart local v16    # "password":Ljava/lang/String;
    .restart local v18    # "userName":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    .line 110
    .local v15, "passwd":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/dy/neu/util/MD5;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/dy/neu/common/MD5Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 115
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "userName"

    move-object/from16 v0, v18

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "passwd"

    invoke-direct {v1, v2, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dy/neu/activity/LoginActivity$1;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->MODULE_URL_LOGIN:Ljava/lang/String;
    invoke-static {}, Lcom/dy/neu/activity/LoginActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "login"

    # invokes: Lcom/dy/neu/activity/LoginActivity;->getData(Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lcom/dy/neu/activity/LoginActivity;->access$100(Lcom/dy/neu/activity/LoginActivity;Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :catch_0
    move-exception v10

    .line 112
    .local v10, "e":Lcom/dy/neu/common/MD5Exception;
    const-string v1, ""

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dy/neu/activity/LoginActivity$1;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const-string v2, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
