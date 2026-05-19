.class public final Lio/branch/search/BranchRemoteZeroStateResult;
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


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lio/branch/search/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static createFromJson(Lio/branch/search/BranchZeroStateRequest;Lorg/json/JSONObject;)Lh4/j;
    .registers 9
    .param p0  # Lio/branch/search/BranchZeroStateRequest;
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
            "Lio/branch/search/BranchZeroStateRequest;",
            "Lorg/json/JSONObject;",
            ")",
            "Lh4/j<",
            "Lio/branch/search/BranchRemoteZeroStateResult;",
            "Lio/branch/search/p0;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/branch/search/p0;

    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "remote_zero_state"

    const-string v3, "remote_app"

    const-string v4, "remote_zero_state"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, p1}, Lio/branch/search/BranchSearchResult;->a(Lio/branch/search/p0;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lh4/j;

    new-instance v0, Lio/branch/search/BranchRemoteZeroStateResult;

    iget-object v1, v6, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lio/branch/search/BranchRemoteZeroStateResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p1, v0, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
