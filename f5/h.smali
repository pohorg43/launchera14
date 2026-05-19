.class public final enum Lf5/h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf5/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lf5/h;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final enum f:Lf5/h;

.field public static final enum g:Lf5/h;

.field public static final enum h:Lf5/h;

.field public static final enum i:Lf5/h;

.field public static final enum j:Lf5/h;

.field public static final enum k:Lf5/h;

.field public static final enum l:Lf5/h;

.field public static final enum m:Lf5/h;

.field public static final synthetic n:[Lf5/h;


# instance fields
.field public final a:Lh6/f;

.field public final b:Lh6/f;

.field public final c:Lh4/f;

.field public final d:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lf5/h;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const-string v3, "Boolean"

    invoke-direct {v0, v1, v2, v3}, Lf5/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf5/h;->f:Lf5/h;

    new-instance v1, Lf5/h;

    const-string v3, "CHAR"

    const/4 v4, 0x1

    const-string v5, "Char"

    invoke-direct {v1, v3, v4, v5}, Lf5/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lf5/h;->g:Lf5/h;

    new-instance v3, Lf5/h;

    const-string v5, "BYTE"

    const/4 v6, 0x2

    const-string v7, "Byte"

    invoke-direct {v3, v5, v6, v7}, Lf5/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lf5/h;->h:Lf5/h;

    new-instance v5, Lf5/h;

    const-string v7, "SHORT"

    const/4 v8, 0x3

    const-string v9, "Short"

    invoke-direct {v5, v7, v8, v9}, Lf5/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lf5/h;->i:Lf5/h;

    new-instance v7, Lf5/h;

    const-string v9, "INT"

    const/4 v10, 0x4

    const-string v11, "Int"

    invoke-direct {v7, v9, v10, v11}, Lf5/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lf5/h;->j:Lf5/h;

    new-instance v9, Lf5/h;

    const-string v11, "FLOAT"

    const/4 v12, 0x5

    const-string v13, "Float"

    invoke-direct {v9, v11, v12, v13}, Lf5/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lf5/h;->k:Lf5/h;

    new-instance v11, Lf5/h;

    const-string v13, "LONG"

    const/4 v14, 0x6

    const-string v15, "Long"

    invoke-direct {v11, v13, v14, v15}, Lf5/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lf5/h;->l:Lf5/h;

    new-instance v13, Lf5/h;

    const-string v15, "DOUBLE"

    const/4 v14, 0x7

    const-string v12, "Double"

    invoke-direct {v13, v15, v14, v12}, Lf5/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lf5/h;->m:Lf5/h;

    const/16 v12, 0x8

    new-array v12, v12, [Lf5/h;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lf5/h;->n:[Lf5/h;

    new-array v0, v14, [Lf5/h;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    aput-object v5, v0, v6

    aput-object v7, v0, v8

    aput-object v9, v0, v10

    const/4 v1, 0x5

    aput-object v11, v0, v1

    const/4 v1, 0x6

    aput-object v13, v0, v1

    invoke-static {v0}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lf5/h;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p1

    const-string p2, "identifier(typeName)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lf5/h;->a:Lh6/f;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Array"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p1

    const-string p2, "identifier(\"${typeName}Array\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lf5/h;->b:Lh6/f;

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lf5/h$b;

    invoke-direct {p2, p0}, Lf5/h$b;-><init>(Lf5/h;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lf5/h;->c:Lh4/f;

    new-instance p2, Lf5/h$a;

    invoke-direct {p2, p0}, Lf5/h$a;-><init>(Lf5/h;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lf5/h;->d:Lh4/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf5/h;
    .registers 2

    const-class v0, Lf5/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf5/h;

    return-object p0
.end method

.method public static values()[Lf5/h;
    .registers 1

    sget-object v0, Lf5/h;->n:[Lf5/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf5/h;

    return-object v0
.end method
