.class public Lio/branch/search/BranchQueryHintRequest;
.super Lio/branch/search/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/f<",
        "Lio/branch/search/BranchQueryHintRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/search/BranchQueryHintRequest;->c:I

    return-void
.end method

.method public static create()Lio/branch/search/BranchQueryHintRequest;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/branch/search/BranchQueryHintRequest;

    invoke-direct {v0}, Lio/branch/search/BranchQueryHintRequest;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_4
    iget p0, p0, Lio/branch/search/BranchQueryHintRequest;->c:I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_6} :catch_12

    if-lez p0, :cond_18

    const-string v1, "num"

    :try_start_a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception p0

    const-string v1, "BranchQueryHintRequest.toJson"

    invoke-static {v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    return-object v0
.end method

.method public setMaxResults(I)Lio/branch/search/BranchQueryHintRequest;
    .registers 2

    iput p1, p0, Lio/branch/search/BranchQueryHintRequest;->c:I

    return-object p0
.end method
