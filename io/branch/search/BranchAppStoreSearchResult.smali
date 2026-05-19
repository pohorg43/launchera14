.class public final Lio/branch/search/BranchAppStoreSearchResult;
.super Lio/branch/search/BranchBaseLinkSearchResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchAppStoreSearchResult$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/BranchBaseLinkSearchResult<",
        "Lio/branch/search/BranchAppStoreLinkResult;",
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\nB\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"
    }
    d2 = {
        "Lio/branch/search/BranchAppStoreSearchResult;",
        "Lio/branch/search/BranchBaseLinkSearchResult;",
        "Lio/branch/search/BranchAppStoreLinkResult;",
        "",
        "results",
        "",
        "requestId",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;)V",
        "Companion",
        "a",
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
.field public static final Companion:Lio/branch/search/BranchAppStoreSearchResult$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/BranchAppStoreSearchResult$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/BranchAppStoreSearchResult$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/BranchAppStoreSearchResult;->Companion:Lio/branch/search/BranchAppStoreSearchResult$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppStoreLinkResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lio/branch/search/BranchBaseLinkSearchResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final createEmpty(Lio/branch/search/p0;)Lio/branch/search/BranchAppStoreSearchResult;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/BranchAppStoreSearchResult;->Companion:Lio/branch/search/BranchAppStoreSearchResult$a;

    invoke-virtual {v0, p0}, Lio/branch/search/BranchAppStoreSearchResult$a;->a(Lio/branch/search/p0;)Lio/branch/search/BranchAppStoreSearchResult;

    move-result-object p0

    return-object p0
.end method
