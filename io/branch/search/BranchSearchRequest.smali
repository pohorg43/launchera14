.class public Lio/branch/search/BranchSearchRequest;
.super Lio/branch/search/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/f<",
        "Lio/branch/search/BranchSearchRequest;",
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

.field public e:Z

.field public f:Lio/branch/search/k;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lio/branch/search/f;-><init>()V

    sget-object v0, Lio/branch/search/k;->d:Lio/branch/search/k;

    iput-object v0, p0, Lio/branch/search/BranchSearchRequest;->f:Lio/branch/search/k;

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/search/BranchSearchRequest;->g:I

    iput v0, p0, Lio/branch/search/BranchSearchRequest;->h:I

    iput-object p1, p0, Lio/branch/search/BranchSearchRequest;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/branch/search/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchSearchRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public static Create(Ljava/lang/String;)Lio/branch/search/BranchSearchRequest;
    .registers 1
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Lio/branch/search/BranchAutoSuggestion;)Lio/branch/search/BranchSearchRequest;
    .registers 2
    .param p0  # Lio/branch/search/BranchAutoSuggestion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/branch/search/m;->trackClick(Lio/branch/search/BranchAutoSuggestion;)V

    invoke-virtual {p0}, Lio/branch/search/BranchAutoSuggestion;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/branch/search/BranchSearchRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchSearchRequest;

    move-result-object p0

    sget-object v0, Lio/branch/search/k;->c:Lio/branch/search/k;

    invoke-virtual {p0, v0}, Lio/branch/search/BranchSearchRequest;->setQuerySource(Lio/branch/search/k;)Lio/branch/search/BranchSearchRequest;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/branch/search/BranchQueryHint;)Lio/branch/search/BranchSearchRequest;
    .registers 2
    .param p0  # Lio/branch/search/BranchQueryHint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/branch/search/m;->trackClick(Lio/branch/search/BranchQueryHint;)V

    invoke-virtual {p0}, Lio/branch/search/BranchQueryHint;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/branch/search/BranchSearchRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchSearchRequest;

    move-result-object p0

    sget-object v0, Lio/branch/search/k;->b:Lio/branch/search/k;

    invoke-virtual {p0, v0}, Lio/branch/search/BranchSearchRequest;->setQuerySource(Lio/branch/search/k;)Lio/branch/search/BranchSearchRequest;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lio/branch/search/BranchSearchRequest;
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/branch/search/BranchSearchRequest;

    invoke-direct {v0, p0}, Lio/branch/search/BranchSearchRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/branch/search/i4;
    .registers 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v7, Lio/branch/search/i4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lio/branch/search/BranchSearchRequest;->c:Ljava/lang/String;

    const/4 p0, 0x1

    invoke-static {v5, p0}, Lio/branch/search/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/branch/search/i4;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public a()Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_4
    iget v1, p0, Lio/branch/search/BranchSearchRequest;->g:I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_6} :catch_38

    if-lez v1, :cond_11

    const-string v2, "limit_app_results"

    :try_start_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    iget v1, p0, Lio/branch/search/BranchSearchRequest;->h:I
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_13} :catch_38

    if-lez v1, :cond_1e

    const-string v2, "limit_link_results"

    :try_start_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_1e} :catch_38

    :cond_1e
    const-string v1, "user_query"

    :try_start_20
    iget-object v2, p0, Lio/branch/search/BranchSearchRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lio/branch/search/BranchSearchRequest;->e:Z
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_27} :catch_38

    if-eqz v1, :cond_30

    const-string v1, "do_not_modify"

    :try_start_2b
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_30} :catch_38

    :cond_30
    const-string v1, "query_source"

    :try_start_32
    iget-object p0, p0, Lio/branch/search/BranchSearchRequest;->f:Lio/branch/search/k;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception p0

    const-string v1, "BranchSearchRequest.toJson"

    invoke-static {v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3e
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchSearchRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchSearchRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxAppResults(I)Lio/branch/search/BranchSearchRequest;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lio/branch/search/BranchSearchRequest;->g:I

    return-object p0
.end method

.method public setMaxContentPerAppResults(I)Lio/branch/search/BranchSearchRequest;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lio/branch/search/BranchSearchRequest;->h:I

    return-object p0
.end method

.method public setQuerySource(Lio/branch/search/k;)Lio/branch/search/BranchSearchRequest;
    .registers 2
    .param p1  # Lio/branch/search/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lio/branch/search/BranchSearchRequest;->f:Lio/branch/search/k;

    return-object p0
.end method
