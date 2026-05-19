.class public final enum Li4/s0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li4/s0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Li4/s0;

.field public static final enum b:Li4/s0;

.field public static final enum c:Li4/s0;

.field public static final enum d:Li4/s0;

.field public static final synthetic e:[Li4/s0;

.field public static final synthetic f:Lo4/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Li4/s0;

    const-string v1, "Ready"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li4/s0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li4/s0;->a:Li4/s0;

    new-instance v1, Li4/s0;

    const-string v3, "NotReady"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li4/s0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li4/s0;->b:Li4/s0;

    new-instance v3, Li4/s0;

    const-string v5, "Done"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li4/s0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li4/s0;->c:Li4/s0;

    new-instance v5, Li4/s0;

    const-string v7, "Failed"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Li4/s0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Li4/s0;->d:Li4/s0;

    const/4 v7, 0x4

    new-array v7, v7, [Li4/s0;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Li4/s0;->e:[Li4/s0;

    invoke-static {v7}, Lo4/b;->a([Ljava/lang/Enum;)Lo4/a;

    move-result-object v0

    sput-object v0, Li4/s0;->f:Lo4/a;

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

.method public static valueOf(Ljava/lang/String;)Li4/s0;
    .registers 2

    const-class v0, Li4/s0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li4/s0;

    return-object p0
.end method

.method public static values()[Li4/s0;
    .registers 1

    sget-object v0, Li4/s0;->e:[Li4/s0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li4/s0;

    return-object v0
.end method
