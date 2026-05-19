.class Landroidx/room/migration/bundle/SchemaEqualityUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSchemaEquality(Landroidx/room/migration/bundle/SchemaEquality;Landroidx/room/migration/bundle/SchemaEquality;)Z
    .registers 3
    .param p0  # Landroidx/room/migration/bundle/SchemaEquality;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1  # Landroidx/room/migration/bundle/SchemaEquality;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Landroidx/room/migration/bundle/SchemaEquality<",
            "TK;>;>(TK;TK;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :cond_7
    if-nez p1, :cond_a

    return v0

    :cond_a
    invoke-interface {p0, p1}, Landroidx/room/migration/bundle/SchemaEquality;->isSchemaEqual(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static checkSchemaEquality(Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .param p0  # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Landroidx/room/migration/bundle/SchemaEquality<",
            "TK;>;>(",
            "Ljava/util/List<",
            "TK;>;",
            "Ljava/util/List<",
            "TK;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    if-nez p1, :cond_c

    return v1

    :cond_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/migration/bundle/SchemaEquality;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/room/migration/bundle/SchemaEquality;

    invoke-static {v2, v4}, Landroidx/room/migration/bundle/SchemaEqualityUtil;->checkSchemaEquality(Landroidx/room/migration/bundle/SchemaEquality;Landroidx/room/migration/bundle/SchemaEquality;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move v2, v0

    goto :goto_40

    :cond_3f
    move v2, v1

    :goto_40
    if-nez v2, :cond_1b

    return v1

    :cond_43
    return v0
.end method

.method public static checkSchemaEquality(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 6
    .param p0  # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1  # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K::",
            "Landroidx/room/migration/bundle/SchemaEquality<",
            "TK;>;>(",
            "Ljava/util/Map<",
            "TT;TK;>;",
            "Ljava/util/Map<",
            "TT;TK;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    if-nez p1, :cond_c

    return v1

    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/migration/bundle/SchemaEquality;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/migration/bundle/SchemaEquality;

    invoke-static {v3, v2}, Landroidx/room/migration/bundle/SchemaEqualityUtil;->checkSchemaEquality(Landroidx/room/migration/bundle/SchemaEquality;Landroidx/room/migration/bundle/SchemaEquality;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    :cond_42
    return v0
.end method
