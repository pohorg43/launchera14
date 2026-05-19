.class public final enum Ln/e$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln/e$a;

.field public static final enum b:Ln/e$a;

.field public static final enum c:Ln/e$a;

.field public static final synthetic d:[Ln/e$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    new-instance v0, Ln/e$a;

    const-string v1, "PRE_COMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/e$a;->a:Ln/e$a;

    new-instance v1, Ln/e$a;

    const-string v3, "SOLID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln/e$a;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ln/e$a;

    const-string v5, "IMAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln/e$a;->b:Ln/e$a;

    new-instance v5, Ln/e$a;

    const-string v7, "NULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ln/e$a;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ln/e$a;

    const-string v9, "SHAPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ln/e$a;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ln/e$a;

    const-string v11, "TEXT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ln/e$a;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ln/e$a;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ln/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ln/e$a;->c:Ln/e$a;

    const/4 v13, 0x7

    new-array v13, v13, [Ln/e$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Ln/e$a;->d:[Ln/e$a;

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

.method public static valueOf(Ljava/lang/String;)Ln/e$a;
    .registers 2

    const-class v0, Ln/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln/e$a;

    return-object p0
.end method

.method public static values()[Ln/e$a;
    .registers 1

    sget-object v0, Ln/e$a;->d:[Ln/e$a;

    invoke-virtual {v0}, [Ln/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln/e$a;

    return-object v0
.end method
