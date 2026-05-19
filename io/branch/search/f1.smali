.class public Lio/branch/search/f1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/f1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/f1$a;

.field public static final b:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/branch/search/t5;",
            "Lio/branch/search/r1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lio/branch/search/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/f1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/f1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/branch/search/t5;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lio/branch/search/f1;->b:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m;)V
    .registers 6

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-static {}, Lio/branch/search/t5;->values()[Lio/branch/search/t5;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p1, :cond_21

    aget-object v1, p0, v0

    sget-object v2, Lio/branch/search/f1;->b:Ljava/util/EnumMap;

    new-instance v3, Lio/branch/search/r1;

    invoke-direct {v3, v1}, Lio/branch/search/r1;-><init>(Lio/branch/search/t5;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_21
    return-void
.end method

.method public static final synthetic a(Lio/branch/search/f1;)Lio/branch/search/m;
    .registers 1

    iget-object p0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    return-object p0
.end method

.method public static a(Lio/branch/search/f1;Lio/branch/search/BranchSearchRequest;Ll4/d;)Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->a()Lio/branch/search/internal/control/AllFeatures;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v0, v1}, Lio/branch/search/internal/control/FeatureFlag;->a(Lio/branch/search/m;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance p0, Lio/branch/search/f5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->p:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_21
    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Lio/branch/search/BranchSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    if-eqz v0, :cond_36

    goto :goto_7c

    :cond_36
    sget-object v2, Lio/branch/search/t5;->i:Lio/branch/search/t5;

    iget-object v0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    const-string v1, "branchSearch.branchConfiguration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->o()Ljava/lang/String;

    move-result-object v3

    const-string v0, "branchSearch.branchConfiguration.searchUrl"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    iget-object v4, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v4}, Lio/branch/search/m;->e()Lio/branch/search/e;

    move-result-object v4

    iget-object v5, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v5}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v5

    invoke-virtual {p1, v0, v1, v4, v5}, Lio/branch/search/f;->a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/e;Lio/branch/search/KBranchRemoteConfiguration;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "request.toPayload(branch…Configuration).toString()"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Lio/branch/search/f1;->a(Lio/branch/search/f1;Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7c
    :goto_7c
    new-instance p0, Lio/branch/search/f5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->b:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/f1;Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 14

    if-nez p7, :cond_1a

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_f

    invoke-static {}, Lio/branch/search/BranchAnalytics;->d()Ljava/lang/String;

    move-result-object p4

    const-string p6, "BranchAnalytics.getSessionId()"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/f1;->a(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: makePost"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lio/branch/search/f1;Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    if-nez p6, :cond_c

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/f1;->a(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: makeGet"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a()Ljava/util/EnumMap;
    .registers 1

    sget-object v0, Lio/branch/search/f1;->b:Ljava/util/EnumMap;

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/f1$a;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/f1$a;->a(Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lio/branch/search/f1$a;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/BranchAppStoreRequest;Lio/branch/search/p0;Ll4/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchAppStoreRequest;",
            "Lio/branch/search/p0;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->a()Lio/branch/search/internal/control/AllFeatures;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v0, v1}, Lio/branch/search/internal/control/FeatureFlag;->a(Lio/branch/search/m;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance p0, Lio/branch/search/f5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->p:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_21
    new-instance v0, Lio/branch/search/x1$a;

    invoke-direct {v0, p1, p2}, Lio/branch/search/x1$a;-><init>(Lio/branch/search/BranchAppStoreRequest;Lio/branch/search/p0;)V

    invoke-virtual {p0, v0}, Lio/branch/search/f1;->a(Lio/branch/search/x1$a;)Ljava/util/Map;

    move-result-object v4

    sget-object v2, Lio/branch/search/t5;->j:Lio/branch/search/t5;

    iget-object p1, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {p1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p1

    const-string v0, "branchSearch.branchConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/BranchConfiguration;->c()Ljava/lang/String;

    move-result-object v3

    const-string p1, "branchSearch.branchConfiguration.appStoreSearchUrl"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p2, Lio/branch/search/p0;->f:Ljava/lang/String;

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/f1;->a(Lio/branch/search/t5;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Lio/branch/search/BranchSearchRequest;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchSearchRequest;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/branch/search/f1;->a(Lio/branch/search/f1;Lio/branch/search/BranchSearchRequest;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/branch/search/BranchZeroStateRequest;Ll4/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchZeroStateRequest;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v1, Lio/branch/search/t5;->k:Lio/branch/search/t5;

    iget-object v0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v2}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v2

    iget-object v3, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v3}, Lio/branch/search/m;->e()Lio/branch/search/e;

    move-result-object v3

    iget-object v4, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v4}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Lio/branch/search/f;->a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/e;Lio/branch/search/KBranchRemoteConfiguration;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string p1, "request.toPayload(branch…Configuration).toString()"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "https://vulcan.branch.io/v2/zero-state-links"

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lio/branch/search/f1;->a(Lio/branch/search/f1;Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
    .registers 13
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/t5;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lio/branch/search/f1;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/branch/search/r1;

    if-nez v1, :cond_30

    iget-object p0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "KNetworkInterfaceImpl."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpPool not found"

    invoke-virtual {p0, p1, p2}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/f5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_30
    iget-object v4, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/r1;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/t5;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lio/branch/search/f1;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/r1;

    iget-object p0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    if-nez v0, :cond_3a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "KNetworkInterfaceImpl."

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lh4/j;

    const-string p4, "request_id"

    invoke-direct {p2, p4, p3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "HttpPool not found"

    invoke-virtual {p0, p1, p3, p2}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p0, Lio/branch/search/f5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_3a
    invoke-virtual {v0, p2, p0, p3, p4}, Lio/branch/search/r1;->a(Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/branch/search/t5;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/t5;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lio/branch/search/f1$e;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lio/branch/search/f1$e;

    iget v3, v2, Lio/branch/search/f1$e;->b:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lio/branch/search/f1$e;->b:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lio/branch/search/f1$e;

    invoke-direct {v2, v0, v1}, Lio/branch/search/f1$e;-><init>(Lio/branch/search/f1;Ll4/d;)V

    :goto_1c
    iget-object v1, v2, Lio/branch/search/f1$e;->a:Ljava/lang/Object;

    sget-object v3, Lm4/a;->a:Lm4/a;

    iget v4, v2, Lio/branch/search/f1$e;->b:I

    const/4 v5, 0x1

    if-eqz v4, :cond_34

    if-ne v4, v5, :cond_2c

    invoke-static {v1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_bd

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    invoke-static {v1}, Lh4/l;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_38
    new-instance v4, Le8/r$a;

    invoke-direct {v4}, Le8/r$a;-><init>()V

    move-object/from16 v6, p2

    invoke-virtual {v4, v1, v6}, Le8/r$a;->c(Le8/r;Ljava/lang/String;)Le8/r$a;

    invoke-virtual {v4}, Le8/r$a;->a()Le8/r;

    move-result-object v4
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-object v4, v1

    :goto_48
    if-eqz v4, :cond_c2

    invoke-virtual {v4}, Le8/r;->j()Le8/r$a;

    move-result-object v4

    if-eqz p3, :cond_a5

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_58
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "name == null"

    invoke-static {v9, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v8, v4, Le8/r$a;->g:Ljava/util/List;

    if-nez v8, :cond_81

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Le8/r$a;->g:Ljava/util/List;

    :cond_81
    iget-object v8, v4, Le8/r$a;->g:Ljava/util/List;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const-string v10, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    invoke-static/range {v9 .. v14}, Le8/r;->b(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Le8/r$a;->g:Ljava/util/List;

    if-eqz v7, :cond_a0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-string v11, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v10, v7

    invoke-static/range {v10 .. v15}, Le8/r;->b(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v7

    goto :goto_a1

    :cond_a0
    move-object v7, v1

    :goto_a1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_a5
    invoke-virtual {v4}, Le8/r$a;->a()Le8/r;

    move-result-object v1

    iget-object v1, v1, Le8/r;->i:Ljava/lang/String;

    const-string v4, "this.toString()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v5, v2, Lio/branch/search/f1$e;->b:I

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-virtual {v0, v4, v1, v5, v2}, Lio/branch/search/f1;->a(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_bd

    return-object v3

    :cond_bd
    :goto_bd
    check-cast v1, Lio/branch/search/f5;

    if-eqz v1, :cond_c2

    goto :goto_ce

    :cond_c2
    new-instance v1, Lio/branch/search/f5$a;

    new-instance v0, Lio/branch/search/BranchSearchError;

    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->b:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {v0, v2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {v1, v0}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    :goto_ce
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v1, Lio/branch/search/t5;->r:Lio/branch/search/t5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v2}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v2

    const-string v3, "branchSearch.branchConfiguration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/branch/search/BranchConfiguration;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lio/branch/search/f1;->a(Lio/branch/search/f1;Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/branch/search/x1$a;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/x1$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {p0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/KBranchRemoteConfiguration;->c()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/branch/search/x1$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lh4/j;

    invoke-direct {v3, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_40
    invoke-static {v0}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 10

    if-eqz p1, :cond_13

    sget-object v0, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    sget-object v3, Lio/branch/search/t5;->n:Lio/branch/search/t5;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lio/branch/search/f1$a;->a(Lio/branch/search/f1$a;Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public a(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "request"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v3}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/KBranchRemoteConfiguration;->a()Lio/branch/search/internal/control/AllFeatures;

    move-result-object v3

    iget-object v3, v3, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v4, v0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v3, v4}, Lio/branch/search/internal/control/FeatureFlag;->a(Lio/branch/search/m;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_38

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v6

    sget-object v7, Lr7/v;->a:Lm7/b2;

    new-instance v9, Lio/branch/search/f1$b;

    invoke-direct {v9, v2, v5}, Lio/branch/search/f1$b;-><init>(Lio/branch/search/IBranchAutoSuggestEvents;Ll4/d;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return v4

    :cond_38
    invoke-virtual/range {p1 .. p1}, Lio/branch/search/BranchAutoSuggestRequest;->getQuery()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    if-eqz v3, :cond_48

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_46

    goto :goto_48

    :cond_46
    move v3, v4

    goto :goto_49

    :cond_48
    :goto_48
    move v3, v6

    :goto_49
    if-eqz v3, :cond_5d

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v7

    sget-object v8, Lr7/v;->a:Lm7/b2;

    new-instance v10, Lio/branch/search/f1$c;

    invoke-direct {v10, v2, v5}, Lio/branch/search/f1$c;-><init>(Lio/branch/search/IBranchAutoSuggestEvents;Ll4/d;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return v4

    :cond_5d
    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v13

    sget-object v14, Lm7/y0;->d:Lm7/f0;

    new-instance v3, Lio/branch/search/f1$d;

    invoke-direct {v3, v0, v1, v2, v5}, Lio/branch/search/f1$d;-><init>(Lio/branch/search/f1;Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;Ll4/d;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v13 .. v18}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return v6
.end method

.method public a(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchQueryHintEvents;)Z
    .registers 11

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->a()Lio/branch/search/internal/control/AllFeatures;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p0, Lio/branch/search/f1;->a:Lio/branch/search/m;

    invoke-virtual {v0, v1}, Lio/branch/search/internal/control/FeatureFlag;->a(Lio/branch/search/m;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v2

    sget-object v3, Lr7/v;->a:Lm7/b2;

    new-instance v5, Lio/branch/search/f1$f;

    invoke-direct {v5, p2, v1}, Lio/branch/search/f1$f;-><init>(Lio/branch/search/IBranchQueryHintEvents;Ll4/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    const/4 p0, 0x0

    return p0

    :cond_32
    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v0

    sget-object v2, Lm7/y0;->d:Lm7/f0;

    new-instance v3, Lio/branch/search/f1$g;

    invoke-direct {v3, p0, p1, p2, v1}, Lio/branch/search/f1$g;-><init>(Lio/branch/search/f1;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchQueryHintEvents;Ll4/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 p0, 0x0

    move-object v1, v2

    move v2, p0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    const/4 p0, 0x1

    return p0
.end method

.method public a(Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;)Z
    .registers 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v1

    sget-object v2, Lm7/y0;->d:Lm7/f0;

    new-instance v4, Lio/branch/search/f1$h;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lio/branch/search/f1$h;-><init>(Lio/branch/search/f1;Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;Ll4/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    const/4 p0, 0x1

    return p0
.end method

.method public a(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchRemoteZeroStateEvents;)Z
    .registers 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v1

    sget-object v2, Lm7/y0;->d:Lm7/f0;

    new-instance v4, Lio/branch/search/f1$i;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lio/branch/search/f1$i;-><init>(Lio/branch/search/f1;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchRemoteZeroStateEvents;Ll4/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    const/4 p0, 0x1

    return p0
.end method
