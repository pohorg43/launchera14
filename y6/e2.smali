.class public final enum Ly6/e2;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly6/e2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Ly6/e2;

.field public static final enum d:Ly6/e2;

.field public static final enum e:Ly6/e2;

.field public static final synthetic f:[Ly6/e2;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 22

    new-instance v7, Ly6/e2;

    const-string v1, "INVARIANT"

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ly6/e2;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v7, Ly6/e2;->c:Ly6/e2;

    new-instance v0, Ly6/e2;

    const-string v9, "IN_VARIANCE"

    const/4 v10, 0x1

    const-string v11, "in"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Ly6/e2;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v0, Ly6/e2;->d:Ly6/e2;

    new-instance v1, Ly6/e2;

    const-string v16, "OUT_VARIANCE"

    const/16 v17, 0x2

    const-string v18, "out"

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Ly6/e2;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v1, Ly6/e2;->e:Ly6/e2;

    const/4 v2, 0x3

    new-array v2, v2, [Ly6/e2;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Ly6/e2;->f:[Ly6/e2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ly6/e2;->a:Ljava/lang/String;

    iput-boolean p5, p0, Ly6/e2;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly6/e2;
    .registers 2

    const-class v0, Ly6/e2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly6/e2;

    return-object p0
.end method

.method public static values()[Ly6/e2;
    .registers 1

    sget-object v0, Ly6/e2;->f:[Ly6/e2;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly6/e2;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ly6/e2;->a:Ljava/lang/String;

    return-object p0
.end method
