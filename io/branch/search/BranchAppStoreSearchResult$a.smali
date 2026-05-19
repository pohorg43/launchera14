.class public final Lio/branch/search/BranchAppStoreSearchResult$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchAppStoreSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/BranchAppStoreSearchResult$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/p0;)Lio/branch/search/BranchAppStoreSearchResult;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "virtualRequest"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/BranchAppStoreSearchResult;

    sget-object v0, Li4/y;->a:Li4/y;

    iget-object p1, p1, Lio/branch/search/p0;->f:Ljava/lang/String;

    const-string v1, "virtualRequest.id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lio/branch/search/BranchAppStoreSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method
