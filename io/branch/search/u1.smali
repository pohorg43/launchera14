.class public final Lio/branch/search/u1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lio/branch/search/u1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/u1;

    invoke-direct {v0}, Lio/branch/search/u1;-><init>()V

    sput-object v0, Lio/branch/search/u1;->a:Lio/branch/search/u1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    goto :goto_3e

    :cond_f
    new-instance v0, Ly4/d;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ly4/d;-><init>(II)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ly4/b;->a()Li4/f0;

    move-result-object v0

    :goto_2a
    move-object v2, v0

    check-cast v2, Ly4/c;

    iget-boolean v2, v2, Ly4/c;->c:Z

    if-eqz v2, :cond_3d

    invoke-virtual {v0}, Li4/f0;->nextInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3d
    move-object p0, v1

    :goto_3e
    if-eqz p0, :cond_41

    goto :goto_43

    :cond_41
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_43
    return-object p0
.end method


# virtual methods
.method public final a(Lio/branch/search/p0;Lio/branch/search/m;Lio/branch/search/BranchAppStoreRequest;Lorg/json/JSONObject;Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/p0;",
            "Lio/branch/search/m;",
            "Lio/branch/search/BranchAppStoreRequest;",
            "Lorg/json/JSONObject;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lh4/j<",
            "Lio/branch/search/BranchAppStoreSearchResult;",
            "+",
            "Lio/branch/search/p0;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_1
    invoke-virtual {p2}, Lio/branch/search/m;->g()Lio/branch/search/internal/interfaces/LocalInterface;

    move-result-object p2

    iget-object p2, p2, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    invoke-virtual {p2, p1, p3, p4}, Lio/branch/search/k2;->a(Lio/branch/search/p0;Lio/branch/search/BranchAppStoreRequest;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Lio/branch/search/BranchAppStoreSearchResult;

    const-string p4, "results"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p1, Lio/branch/search/p0;->f:Ljava/lang/String;

    const-string p5, "virtualRequest.id"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p2, p4}, Lio/branch/search/BranchAppStoreSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_24

    :catch_1d
    move-exception p2

    const-string p3, "AppStorePostProcessor"

    invoke-static {p3, p2}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, p0

    :goto_24
    if-nez p3, :cond_27

    goto :goto_31

    :cond_27
    new-instance p0, Lio/branch/search/f5$b;

    new-instance p2, Lh4/j;

    invoke-direct {p2, p3, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    :goto_31
    if-eqz p0, :cond_34

    goto :goto_40

    :cond_34
    new-instance p0, Lio/branch/search/f5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->k:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    :goto_40
    return-object p0
.end method
