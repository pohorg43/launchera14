.class public final enum Lf5/m;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf5/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lf5/m;

.field public static final enum e:Lf5/m;

.field public static final enum f:Lf5/m;

.field public static final enum g:Lf5/m;

.field public static final synthetic h:[Lf5/m;


# instance fields
.field public final a:Lh6/b;

.field public final b:Lh6/f;

.field public final c:Lh6/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Lf5/m;

    const-string v1, "kotlin/UByte"

    invoke-static {v1}, Lh6/b;->e(Ljava/lang/String;)Lh6/b;

    move-result-object v1

    const-string v2, "fromString(\"kotlin/UByte\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "UBYTE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lf5/m;-><init>(Ljava/lang/String;ILh6/b;)V

    sput-object v0, Lf5/m;->d:Lf5/m;

    new-instance v1, Lf5/m;

    const-string v2, "kotlin/UShort"

    invoke-static {v2}, Lh6/b;->e(Ljava/lang/String;)Lh6/b;

    move-result-object v2

    const-string v4, "fromString(\"kotlin/UShort\")"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "USHORT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lf5/m;-><init>(Ljava/lang/String;ILh6/b;)V

    sput-object v1, Lf5/m;->e:Lf5/m;

    new-instance v2, Lf5/m;

    const-string v4, "kotlin/UInt"

    invoke-static {v4}, Lh6/b;->e(Ljava/lang/String;)Lh6/b;

    move-result-object v4

    const-string v6, "fromString(\"kotlin/UInt\")"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "UINT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lf5/m;-><init>(Ljava/lang/String;ILh6/b;)V

    sput-object v2, Lf5/m;->f:Lf5/m;

    new-instance v4, Lf5/m;

    const-string v6, "kotlin/ULong"

    invoke-static {v6}, Lh6/b;->e(Ljava/lang/String;)Lh6/b;

    move-result-object v6

    const-string v8, "fromString(\"kotlin/ULong\")"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "ULONG"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lf5/m;-><init>(Ljava/lang/String;ILh6/b;)V

    sput-object v4, Lf5/m;->g:Lf5/m;

    const/4 v6, 0x4

    new-array v6, v6, [Lf5/m;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lf5/m;->h:[Lf5/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILh6/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lf5/m;->a:Lh6/b;

    invoke-virtual {p3}, Lh6/b;->j()Lh6/f;

    move-result-object p1

    const-string p2, "classId.shortClassName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lf5/m;->b:Lh6/f;

    new-instance p2, Lh6/b;

    invoke-virtual {p3}, Lh6/b;->h()Lh6/c;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Array"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    iput-object p2, p0, Lf5/m;->c:Lh6/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf5/m;
    .registers 2

    const-class v0, Lf5/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf5/m;

    return-object p0
.end method

.method public static values()[Lf5/m;
    .registers 1

    sget-object v0, Lf5/m;->h:[Lf5/m;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf5/m;

    return-object v0
.end method
