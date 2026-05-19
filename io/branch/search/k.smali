.class public final enum Lio/branch/search/k;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lio/branch/search/k;

.field public static final enum c:Lio/branch/search/k;

.field public static final enum d:Lio/branch/search/k;

.field public static final synthetic e:[Lio/branch/search/k;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lio/branch/search/k;

    const-string v1, "QUERY_HINT_RESULTS"

    const/4 v2, 0x0

    const-string v3, "query_hint"

    invoke-direct {v0, v1, v2, v3}, Lio/branch/search/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/branch/search/k;->b:Lio/branch/search/k;

    new-instance v1, Lio/branch/search/k;

    const-string v3, "AUTOSUGGEST_RESULTS"

    const/4 v4, 0x1

    const-string v5, "autosuggest"

    invoke-direct {v1, v3, v4, v5}, Lio/branch/search/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/search/k;->c:Lio/branch/search/k;

    new-instance v3, Lio/branch/search/k;

    const-string v5, "UNSPECIFIED"

    const/4 v6, 0x2

    const-string v7, "unspecified"

    invoke-direct {v3, v5, v6, v7}, Lio/branch/search/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/search/k;->d:Lio/branch/search/k;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/branch/search/k;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/branch/search/k;->e:[Lio/branch/search/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/branch/search/k;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/k;
    .registers 2

    const-class v0, Lio/branch/search/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/k;

    return-object p0
.end method

.method public static values()[Lio/branch/search/k;
    .registers 1

    sget-object v0, Lio/branch/search/k;->e:[Lio/branch/search/k;

    invoke-virtual {v0}, [Lio/branch/search/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/k;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/k;->a:Ljava/lang/String;

    return-object p0
.end method
