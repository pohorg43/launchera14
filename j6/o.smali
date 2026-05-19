.class public final enum Lj6/o;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj6/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lj6/o;

.field public static final enum b:Lj6/o;

.field public static final enum c:Lj6/o;

.field public static final synthetic d:[Lj6/o;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lj6/o;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj6/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj6/o;->a:Lj6/o;

    new-instance v1, Lj6/o;

    const-string v3, "ONLY_NON_SYNTHESIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj6/o;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj6/o;->b:Lj6/o;

    new-instance v3, Lj6/o;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj6/o;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj6/o;->c:Lj6/o;

    const/4 v5, 0x3

    new-array v5, v5, [Lj6/o;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lj6/o;->d:[Lj6/o;

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

.method public static valueOf(Ljava/lang/String;)Lj6/o;
    .registers 2

    const-class v0, Lj6/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj6/o;

    return-object p0
.end method

.method public static values()[Lj6/o;
    .registers 1

    sget-object v0, Lj6/o;->d:[Lj6/o;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj6/o;

    return-object v0
.end method
