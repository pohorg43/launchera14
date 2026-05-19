.class public final enum Lj6/a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj6/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lj6/a;

.field public static final enum d:Lj6/a;

.field public static final enum e:Lj6/a;

.field public static final synthetic f:[Lj6/a;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v6, Lj6/a;

    const-string v1, "NO_ARGUMENTS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj6/a;-><init>(Ljava/lang/String;IZZI)V

    sput-object v6, Lj6/a;->c:Lj6/a;

    new-instance v0, Lj6/a;

    const-string v8, "UNLESS_EMPTY"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lj6/a;-><init>(Ljava/lang/String;IZZI)V

    sput-object v0, Lj6/a;->d:Lj6/a;

    new-instance v1, Lj6/a;

    const-string v2, "ALWAYS_PARENTHESIZED"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Lj6/a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lj6/a;->e:Lj6/a;

    const/4 v2, 0x3

    new-array v2, v2, [Lj6/a;

    const/4 v5, 0x0

    aput-object v6, v2, v5

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    sput-object v2, Lj6/a;->f:[Lj6/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lj6/a;->a:Z

    iput-boolean p4, p0, Lj6/a;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZI)V
    .registers 8

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p3, v1

    :cond_6
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_b

    move p4, v1

    :cond_b
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lj6/a;->a:Z

    iput-boolean p4, p0, Lj6/a;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj6/a;
    .registers 2

    const-class v0, Lj6/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj6/a;

    return-object p0
.end method

.method public static values()[Lj6/a;
    .registers 1

    sget-object v0, Lj6/a;->f:[Lj6/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj6/a;

    return-object v0
.end method
