.class public Lio/branch/search/BranchSearchResult;
.super Lio/branch/search/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/d<",
        "Lio/branch/search/BranchAppResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/branch/search/BranchSearchRequest;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lio/branch/search/BranchSearchRequest;Ljava/lang/String;)V
    .registers 5
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/BranchSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppResult;",
            ">;",
            "Ljava/lang/String;",
            "Lio/branch/search/BranchSearchRequest;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lio/branch/search/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p3, p0, Lio/branch/search/BranchSearchResult;->b:Lio/branch/search/BranchSearchRequest;

    iput-object p4, p0, Lio/branch/search/BranchSearchResult;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lio/branch/search/BranchSearchRequest;Lorg/json/JSONObject;)Lh4/j;
    .registers 9
    .param p0  # Lio/branch/search/BranchSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchSearchRequest;",
            "Lorg/json/JSONObject;",
            ")",
            "Lh4/j<",
            "Lio/branch/search/BranchSearchResult;",
            "Lio/branch/search/p0;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/branch/search/p0;

    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "search"

    const-string v3, "remote_app"

    const-string v4, "search"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, p1}, Lio/branch/search/BranchSearchResult;->a(Lio/branch/search/p0;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lh4/j;

    new-instance v2, Lio/branch/search/BranchSearchResult;

    iget-object v3, v6, Lio/branch/search/p0;->f:Ljava/lang/String;

    const-string v4, "search_query_string"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, v3, p0, p1}, Lio/branch/search/BranchSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;Lio/branch/search/BranchSearchRequest;Ljava/lang/String;)V

    invoke-direct {v1, v2, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Lio/branch/search/BranchSearchRequest;Ljava/lang/String;)Lio/branch/search/BranchSearchResult;
    .registers 5
    .param p0  # Lio/branch/search/BranchSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/branch/search/BranchSearchResult;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2, p0, p1}, Lio/branch/search/BranchSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;Lio/branch/search/BranchSearchRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lio/branch/search/p0;Lorg/json/JSONObject;)Ljava/util/List;
    .registers 7
    .param p0  # Lio/branch/search/p0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/p0;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "success"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "results"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3d

    const/4 v1, 0x0

    :goto_16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_23

    goto :goto_3a

    :cond_23
    const-string v3, "request_id"

    :try_start_25
    iget-object v4, p0, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception v3

    const-string v4, "BranchSearchResult.createFromJson"

    invoke-static {v4, v3}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    invoke-static {p0, v2}, Lio/branch/search/BranchAppResult;->a(Lio/branch/search/p0;Lorg/json/JSONObject;)Lio/branch/search/BranchAppResult;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_3d
    return-object v0
.end method


# virtual methods
.method public getBranchSearchRequest()Lio/branch/search/BranchSearchRequest;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchSearchResult;->b:Lio/branch/search/BranchSearchRequest;

    return-object p0
.end method

.method public getCorrectedQuery()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchSearchResult;->a:Ljava/lang/String;

    return-object p0
.end method
