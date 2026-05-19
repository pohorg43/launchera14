.class public final enum Lc6/j;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Li6/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc6/j;",
        ">;",
        "Li6/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lc6/j;

.field public static final enum c:Lc6/j;

.field public static final enum d:Lc6/j;

.field public static final enum e:Lc6/j;

.field public static final synthetic f:[Lc6/j;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lc6/j;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc6/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc6/j;->b:Lc6/j;

    new-instance v1, Lc6/j;

    const-string v3, "FAKE_OVERRIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lc6/j;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc6/j;->c:Lc6/j;

    new-instance v3, Lc6/j;

    const-string v5, "DELEGATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lc6/j;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc6/j;->d:Lc6/j;

    new-instance v5, Lc6/j;

    const-string v7, "SYNTHESIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lc6/j;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lc6/j;->e:Lc6/j;

    const/4 v7, 0x4

    new-array v7, v7, [Lc6/j;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lc6/j;->f:[Lc6/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lc6/j;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc6/j;
    .registers 2

    const-class v0, Lc6/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc6/j;

    return-object p0
.end method

.method public static values()[Lc6/j;
    .registers 1

    sget-object v0, Lc6/j;->f:[Lc6/j;

    invoke-virtual {v0}, [Lc6/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc6/j;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 1

    iget p0, p0, Lc6/j;->a:I

    return p0
.end method
