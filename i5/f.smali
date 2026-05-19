.class public final enum Li5/f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li5/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Li5/f;

.field public static final enum b:Li5/f;

.field public static final enum c:Li5/f;

.field public static final enum d:Li5/f;

.field public static final enum e:Li5/f;

.field public static final enum f:Li5/f;

.field public static final synthetic g:[Li5/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    new-instance v0, Li5/f;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    const-string v3, "class"

    invoke-direct {v0, v1, v2, v3}, Li5/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Li5/f;->a:Li5/f;

    new-instance v1, Li5/f;

    const-string v3, "INTERFACE"

    const/4 v4, 0x1

    const-string v5, "interface"

    invoke-direct {v1, v3, v4, v5}, Li5/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Li5/f;->b:Li5/f;

    new-instance v3, Li5/f;

    const-string v5, "ENUM_CLASS"

    const/4 v6, 0x2

    const-string v7, "enum class"

    invoke-direct {v3, v5, v6, v7}, Li5/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Li5/f;->c:Li5/f;

    new-instance v5, Li5/f;

    const-string v7, "ENUM_ENTRY"

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-direct {v5, v7, v8, v9}, Li5/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Li5/f;->d:Li5/f;

    new-instance v7, Li5/f;

    const-string v9, "ANNOTATION_CLASS"

    const/4 v10, 0x4

    const-string v11, "annotation class"

    invoke-direct {v7, v9, v10, v11}, Li5/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Li5/f;->e:Li5/f;

    new-instance v9, Li5/f;

    const-string v11, "OBJECT"

    const/4 v12, 0x5

    const-string v13, "object"

    invoke-direct {v9, v11, v12, v13}, Li5/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Li5/f;->f:Li5/f;

    const/4 v11, 0x6

    new-array v11, v11, [Li5/f;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Li5/f;->g:[Li5/f;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li5/f;
    .registers 2

    const-class v0, Li5/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li5/f;

    return-object p0
.end method

.method public static values()[Li5/f;
    .registers 1

    sget-object v0, Li5/f;->g:[Li5/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li5/f;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    sget-object v0, Li5/f;->f:Li5/f;

    if-eq p0, v0, :cond_b

    sget-object v0, Li5/f;->d:Li5/f;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method
