.class public final enum Lj6/p;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj6/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lj6/p;

.field public static final enum b:Lj6/p;

.field public static final enum c:Lj6/p;

.field public static final synthetic d:[Lj6/p;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lj6/p;

    const-string v1, "PRETTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj6/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj6/p;->a:Lj6/p;

    new-instance v1, Lj6/p;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj6/p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj6/p;->b:Lj6/p;

    new-instance v3, Lj6/p;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj6/p;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj6/p;->c:Lj6/p;

    const/4 v5, 0x3

    new-array v5, v5, [Lj6/p;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lj6/p;->d:[Lj6/p;

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

.method public static valueOf(Ljava/lang/String;)Lj6/p;
    .registers 2

    const-class v0, Lj6/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj6/p;

    return-object p0
.end method

.method public static values()[Lj6/p;
    .registers 1

    sget-object v0, Lj6/p;->d:[Lj6/p;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj6/p;

    return-object v0
.end method
