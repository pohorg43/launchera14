.class public final enum Lio/branch/search/u4;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/u4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/u4;

.field public static final enum b:Lio/branch/search/u4;

.field public static final enum c:Lio/branch/search/u4;

.field public static final enum d:Lio/branch/search/u4;

.field public static final synthetic e:[Lio/branch/search/u4;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Lio/branch/search/u4;

    new-instance v1, Lio/branch/search/u4;

    const-string v2, "LocalSearch"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/branch/search/u4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/u4;->a:Lio/branch/search/u4;

    aput-object v1, v0, v3

    new-instance v1, Lio/branch/search/u4;

    const-string v2, "RemoteSearch"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/branch/search/u4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/u4;->b:Lio/branch/search/u4;

    aput-object v1, v0, v3

    new-instance v1, Lio/branch/search/u4;

    const-string v2, "ZeroState"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lio/branch/search/u4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/u4;->c:Lio/branch/search/u4;

    aput-object v1, v0, v3

    new-instance v1, Lio/branch/search/u4;

    const-string v2, "AppStore"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lio/branch/search/u4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/u4;->d:Lio/branch/search/u4;

    aput-object v1, v0, v3

    sput-object v0, Lio/branch/search/u4;->e:[Lio/branch/search/u4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/u4;
    .registers 2

    const-class v0, Lio/branch/search/u4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/u4;

    return-object p0
.end method

.method public static values()[Lio/branch/search/u4;
    .registers 1

    sget-object v0, Lio/branch/search/u4;->e:[Lio/branch/search/u4;

    invoke-virtual {v0}, [Lio/branch/search/u4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/u4;

    return-object v0
.end method
