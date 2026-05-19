.class public final enum Lz5/u;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz5/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz5/u;

.field public static final enum b:Lz5/u;

.field public static final enum c:Lz5/u;

.field public static final synthetic d:[Lz5/u;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lz5/u;

    const-string v1, "FLEXIBLE_LOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz5/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz5/u;->a:Lz5/u;

    new-instance v1, Lz5/u;

    const-string v3, "FLEXIBLE_UPPER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz5/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz5/u;->b:Lz5/u;

    new-instance v3, Lz5/u;

    const-string v5, "INFLEXIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz5/u;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz5/u;->c:Lz5/u;

    const/4 v5, 0x3

    new-array v5, v5, [Lz5/u;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lz5/u;->d:[Lz5/u;

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

.method public static valueOf(Ljava/lang/String;)Lz5/u;
    .registers 2

    const-class v0, Lz5/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz5/u;

    return-object p0
.end method

.method public static values()[Lz5/u;
    .registers 1

    sget-object v0, Lz5/u;->d:[Lz5/u;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz5/u;

    return-object v0
.end method
