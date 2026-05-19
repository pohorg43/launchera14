.class public final enum Lz4/v;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz4/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz4/v;

.field public static final enum b:Lz4/v;

.field public static final enum c:Lz4/v;

.field public static final enum d:Lz4/v;

.field public static final synthetic e:[Lz4/v;

.field public static final synthetic f:Lo4/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lz4/v;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz4/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz4/v;->a:Lz4/v;

    new-instance v1, Lz4/v;

    const-string v3, "PROTECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz4/v;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz4/v;->b:Lz4/v;

    new-instance v3, Lz4/v;

    const-string v5, "INTERNAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz4/v;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz4/v;->c:Lz4/v;

    new-instance v5, Lz4/v;

    const-string v7, "PRIVATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lz4/v;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lz4/v;->d:Lz4/v;

    const/4 v7, 0x4

    new-array v7, v7, [Lz4/v;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lz4/v;->e:[Lz4/v;

    invoke-static {v7}, Lo4/b;->a([Ljava/lang/Enum;)Lo4/a;

    move-result-object v0

    sput-object v0, Lz4/v;->f:Lo4/a;

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

.method public static valueOf(Ljava/lang/String;)Lz4/v;
    .registers 2

    const-class v0, Lz4/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz4/v;

    return-object p0
.end method

.method public static values()[Lz4/v;
    .registers 1

    sget-object v0, Lz4/v;->e:[Lz4/v;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz4/v;

    return-object v0
.end method
