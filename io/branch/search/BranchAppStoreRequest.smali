.class public final Lio/branch/search/BranchAppStoreRequest;
.super Lio/branch/search/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchAppStoreRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/f<",
        "Lio/branch/search/BranchAppStoreRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u0011\b\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\u0003\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0003\u0010\tR\u0019\u0010\u000e\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0019\u0010\u0011\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u000b\u001a\u0004\b\u0010\u0010\r¨\u0006\u0015"
    }
    d2 = {
        "Lio/branch/search/BranchAppStoreRequest;",
        "Lio/branch/search/f;",
        "Lorg/json/JSONObject;",
        "a",
        "()Lorg/json/JSONObject;",
        "",
        "id",
        "api",
        "Lio/branch/search/i4;",
        "(Ljava/lang/String;Ljava/lang/String;)Lio/branch/search/i4;",
        "c",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "normalizedQuery",
        "d",
        "getQuery",
        "query",
        "<init>",
        "(Ljava/lang/String;)V",
        "Companion",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/BranchAppStoreRequest$Companion;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/BranchAppStoreRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/BranchAppStoreRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/BranchAppStoreRequest;->Companion:Lio/branch/search/BranchAppStoreRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lio/branch/search/f;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/branch/search/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QueryNormalizer.normalize(query, true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/branch/search/BranchAppStoreRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/branch/search/BranchAppStoreRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final create(Ljava/lang/String;)Lio/branch/search/BranchAppStoreRequest;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/BranchAppStoreRequest;->Companion:Lio/branch/search/BranchAppStoreRequest$Companion;

    invoke-virtual {v0, p0}, Lio/branch/search/BranchAppStoreRequest$Companion;->create(Ljava/lang/String;)Lio/branch/search/BranchAppStoreRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/branch/search/i4;
    .registers 11

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/i4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    iget-object v7, p0, Lio/branch/search/BranchAppStoreRequest;->c:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lio/branch/search/i4;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 8

    invoke-super {p0}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "super.toJson()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    if-eqz v1, :cond_69

    const-string v2, "BranchSearchInternal.getInstance() ?: return res"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_query_len"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    const/4 v4, 0x0

    const/16 v5, 0x100

    if-le v1, v5, :cond_49

    iget-object v1, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4b

    :cond_49
    iget-object v1, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    :goto_4b
    const-string v6, "user_query"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/search/BranchAppStoreRequest;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p0, p0, Lio/branch/search/BranchAppStoreRequest;->c:Ljava/lang/String;

    if-le v1, v5, :cond_64

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_64
    const-string v1, "user_query_norm"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_69
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchAppStoreRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuery()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    return-object p0
.end method
