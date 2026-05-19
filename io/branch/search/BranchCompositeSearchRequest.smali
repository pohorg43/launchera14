.class public Lio/branch/search/BranchCompositeSearchRequest;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lio/branch/search/BranchLocalSearchRequest;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lio/branch/search/BranchSearchRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lio/branch/search/BranchAppStoreRequest;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/BranchSearchRequest;)V
    .registers 3
    .param p1  # Lio/branch/search/BranchLocalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/BranchSearchRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchCompositeSearchRequest;->a:Lio/branch/search/BranchLocalSearchRequest;

    iput-object p2, p0, Lio/branch/search/BranchCompositeSearchRequest;->b:Lio/branch/search/BranchSearchRequest;

    invoke-virtual {p1}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/BranchAppStoreRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchAppStoreRequest;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchCompositeSearchRequest;->c:Lio/branch/search/BranchAppStoreRequest;

    return-void
.end method

.method public static create(Lio/branch/search/BranchAutoSuggestion;)Lio/branch/search/BranchCompositeSearchRequest;
    .registers 3
    .param p0  # Lio/branch/search/BranchAutoSuggestion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/branch/search/m;->trackClick(Lio/branch/search/BranchAutoSuggestion;)V

    invoke-virtual {p0}, Lio/branch/search/BranchAutoSuggestion;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/BranchLocalSearchRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchLocalSearchRequest;

    move-result-object v0

    sget-object v1, Lio/branch/search/k;->c:Lio/branch/search/k;

    invoke-virtual {v0, v1}, Lio/branch/search/BranchLocalSearchRequest;->a(Lio/branch/search/k;)Lio/branch/search/BranchLocalSearchRequest;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/BranchAutoSuggestion;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/branch/search/BranchSearchRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchSearchRequest;

    move-result-object p0

    invoke-virtual {p0, v1}, Lio/branch/search/BranchSearchRequest;->setQuerySource(Lio/branch/search/k;)Lio/branch/search/BranchSearchRequest;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/BranchCompositeSearchRequest;->create(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/BranchSearchRequest;)Lio/branch/search/BranchCompositeSearchRequest;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/BranchSearchRequest;)Lio/branch/search/BranchCompositeSearchRequest;
    .registers 4
    .param p0  # Lio/branch/search/BranchLocalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lio/branch/search/BranchSearchRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/BranchSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and remote search requests\' queries must be identical when constructing BranchCompositeSearchRequest."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    new-instance v0, Lio/branch/search/BranchCompositeSearchRequest;

    invoke-direct {v0, p0, p1}, Lio/branch/search/BranchCompositeSearchRequest;-><init>(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/BranchSearchRequest;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lio/branch/search/BranchCompositeSearchRequest;
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lio/branch/search/BranchSearchRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchSearchRequest;

    move-result-object v0

    invoke-static {p0}, Lio/branch/search/BranchLocalSearchRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchLocalSearchRequest;

    move-result-object p0

    invoke-static {p0, v0}, Lio/branch/search/BranchCompositeSearchRequest;->create(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/BranchSearchRequest;)Lio/branch/search/BranchCompositeSearchRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLocalRequest()Lio/branch/search/BranchLocalSearchRequest;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchCompositeSearchRequest;->a:Lio/branch/search/BranchLocalSearchRequest;

    return-object p0
.end method

.method public getRemoteRequest()Lio/branch/search/BranchSearchRequest;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchCompositeSearchRequest;->b:Lio/branch/search/BranchSearchRequest;

    return-object p0
.end method
