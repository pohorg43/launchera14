.class public final enum Lc7/b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc7/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc7/b;

.field public static final enum b:Lc7/b;

.field public static final enum c:Lc7/b;

.field public static final synthetic d:[Lc7/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lc7/b;

    const-string v1, "FOR_SUBTYPING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc7/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc7/b;->a:Lc7/b;

    new-instance v1, Lc7/b;

    const-string v3, "FOR_INCORPORATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc7/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc7/b;->b:Lc7/b;

    new-instance v3, Lc7/b;

    const-string v5, "FROM_EXPRESSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc7/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc7/b;->c:Lc7/b;

    const/4 v5, 0x3

    new-array v5, v5, [Lc7/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc7/b;->d:[Lc7/b;

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

.method public static valueOf(Ljava/lang/String;)Lc7/b;
    .registers 2

    const-class v0, Lc7/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc7/b;

    return-object p0
.end method

.method public static values()[Lc7/b;
    .registers 1

    sget-object v0, Lc7/b;->d:[Lc7/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc7/b;

    return-object v0
.end method
