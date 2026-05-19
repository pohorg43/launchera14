.class public final enum Lz4/u;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz4/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz4/u;

.field public static final enum b:Lz4/u;

.field public static final enum c:Lz4/u;

.field public static final synthetic d:[Lz4/u;

.field public static final synthetic e:Lo4/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lz4/u;

    const-string v1, "INVARIANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz4/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz4/u;->a:Lz4/u;

    new-instance v1, Lz4/u;

    const-string v3, "IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz4/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz4/u;->b:Lz4/u;

    new-instance v3, Lz4/u;

    const-string v5, "OUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz4/u;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz4/u;->c:Lz4/u;

    const/4 v5, 0x3

    new-array v5, v5, [Lz4/u;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lz4/u;->d:[Lz4/u;

    invoke-static {v5}, Lo4/b;->a([Ljava/lang/Enum;)Lo4/a;

    move-result-object v0

    sput-object v0, Lz4/u;->e:Lo4/a;

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

.method public static valueOf(Ljava/lang/String;)Lz4/u;
    .registers 2

    const-class v0, Lz4/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz4/u;

    return-object p0
.end method

.method public static values()[Lz4/u;
    .registers 1

    sget-object v0, Lz4/u;->d:[Lz4/u;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz4/u;

    return-object v0
.end method
