.class public Lio/branch/search/BranchLocalSearchRequest;
.super Lio/branch/search/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/f<",
        "Lio/branch/search/BranchLocalSearchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Lio/branch/search/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lio/branch/search/f;-><init>()V

    sget-object v0, Lio/branch/search/k;->d:Lio/branch/search/k;

    iput-object v0, p0, Lio/branch/search/BranchLocalSearchRequest;->e:Lio/branch/search/k;

    iput-object p1, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/branch/search/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lio/branch/search/BranchLocalSearchRequest;
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/branch/search/BranchLocalSearchRequest;

    invoke-direct {v0, p0}, Lio/branch/search/BranchLocalSearchRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lio/branch/search/k;)Lio/branch/search/BranchLocalSearchRequest;
    .registers 2
    .param p1  # Lio/branch/search/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lio/branch/search/BranchLocalSearchRequest;->e:Lio/branch/search/k;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/branch/search/i4;
    .registers 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v7, Lio/branch/search/i4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    iget-object v6, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/branch/search/i4;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public a()Lorg/json/JSONObject;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "query_source"

    :try_start_6
    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->e:Lio/branch/search/k;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v1
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_17} :catch_58

    if-nez v1, :cond_5e

    const-string v1, "user_query_len"

    :try_start_1b
    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_28} :catch_58

    const-string v1, "user_query"

    :try_start_2a
    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x100

    if-le v2, v4, :cond_3c

    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3e

    :cond_3c
    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    :goto_3e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_41} :catch_58

    const-string v1, "user_query_norm"

    :try_start_43
    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_52

    iget-object p0, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_54

    :cond_52
    iget-object p0, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    :goto_54
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_57} :catch_58

    goto :goto_5e

    :catch_58
    move-exception p0

    const-string v1, "BranchLocalSearchRequest.toJson"

    invoke-static {v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    return-object p0
.end method
