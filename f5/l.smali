.class public final enum Lf5/l;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf5/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lf5/l;

.field public static final enum c:Lf5/l;

.field public static final enum d:Lf5/l;

.field public static final enum e:Lf5/l;

.field public static final synthetic f:[Lf5/l;


# instance fields
.field public final a:Lh6/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Lf5/l;

    const-string v1, "kotlin/UByteArray"

    invoke-static {v1}, Lh6/b;->e(Ljava/lang/String;)Lh6/b;

    move-result-object v1

    const-string v2, "fromString(\"kotlin/UByteArray\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "UBYTEARRAY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lf5/l;-><init>(Ljava/lang/String;ILh6/b;)V

    sput-object v0, Lf5/l;->b:Lf5/l;

    new-instance v1, Lf5/l;

    const-string v2, "kotlin/UShortArray"

    invoke-static {v2}, Lh6/b;->e(Ljava/lang/String;)Lh6/b;

    move-result-object v2

    const-string v4, "fromString(\"kotlin/UShortArray\")"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "USHORTARRAY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lf5/l;-><init>(Ljava/lang/String;ILh6/b;)V

    sput-object v1, Lf5/l;->c:Lf5/l;

    new-instance v2, Lf5/l;

    const-string v4, "kotlin/UIntArray"

    invoke-static {v4}, Lh6/b;->e(Ljava/lang/String;)Lh6/b;

    move-result-object v4

    const-string v6, "fromString(\"kotlin/UIntArray\")"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "UINTARRAY"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lf5/l;-><init>(Ljava/lang/String;ILh6/b;)V

    sput-object v2, Lf5/l;->d:Lf5/l;

    new-instance v4, Lf5/l;

    const-string v6, "kotlin/ULongArray"

    invoke-static {v6}, Lh6/b;->e(Ljava/lang/String;)Lh6/b;

    move-result-object v6

    const-string v8, "fromString(\"kotlin/ULongArray\")"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "ULONGARRAY"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lf5/l;-><init>(Ljava/lang/String;ILh6/b;)V

    sput-object v4, Lf5/l;->e:Lf5/l;

    const/4 v6, 0x4

    new-array v6, v6, [Lf5/l;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lf5/l;->f:[Lf5/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILh6/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Lh6/b;->j()Lh6/f;

    move-result-object p1

    const-string p2, "classId.shortClassName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lf5/l;->a:Lh6/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf5/l;
    .registers 2

    const-class v0, Lf5/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf5/l;

    return-object p0
.end method

.method public static values()[Lf5/l;
    .registers 1

    sget-object v0, Lf5/l;->f:[Lf5/l;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf5/l;

    return-object v0
.end method
