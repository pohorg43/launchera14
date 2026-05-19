.class public final Lio/branch/search/t;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/j;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/branch/search/t;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception p0

    const-string v1, "LinkingParser.parseStringToLinking"

    invoke-static {v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-object v0
.end method

.method public static final a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/j;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_29

    :try_start_e
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lio/branch/search/j;->a(Lorg/json/JSONObject;)Lio/branch/search/j;

    move-result-object v3

    const-string v4, "BranchLinkHandler.from(it.getJSONObject(i))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception v3

    const-string v4, "LinkingParser.parseJsonArrayToLinking"

    invoke-static {v4, v3}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_28
    const/4 v0, 0x0

    :cond_29
    return-object v0
.end method
