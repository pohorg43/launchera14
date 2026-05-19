.class public final enum Lc6/x;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Li6/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc6/x;",
        ">;",
        "Li6/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lc6/x;

.field public static final enum c:Lc6/x;

.field public static final enum d:Lc6/x;

.field public static final enum e:Lc6/x;

.field public static final enum f:Lc6/x;

.field public static final enum g:Lc6/x;

.field public static final synthetic h:[Lc6/x;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lc6/x;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc6/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc6/x;->b:Lc6/x;

    new-instance v1, Lc6/x;

    const-string v3, "PRIVATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lc6/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc6/x;->c:Lc6/x;

    new-instance v3, Lc6/x;

    const-string v5, "PROTECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lc6/x;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc6/x;->d:Lc6/x;

    new-instance v5, Lc6/x;

    const-string v7, "PUBLIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lc6/x;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lc6/x;->e:Lc6/x;

    new-instance v7, Lc6/x;

    const-string v9, "PRIVATE_TO_THIS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lc6/x;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lc6/x;->f:Lc6/x;

    new-instance v9, Lc6/x;

    const-string v11, "LOCAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lc6/x;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lc6/x;->g:Lc6/x;

    const/4 v11, 0x6

    new-array v11, v11, [Lc6/x;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lc6/x;->h:[Lc6/x;

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

    iput p3, p0, Lc6/x;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc6/x;
    .registers 2

    const-class v0, Lc6/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc6/x;

    return-object p0
.end method

.method public static values()[Lc6/x;
    .registers 1

    sget-object v0, Lc6/x;->h:[Lc6/x;

    invoke-virtual {v0}, [Lc6/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc6/x;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 1

    iget p0, p0, Lc6/x;->a:I

    return p0
.end method
