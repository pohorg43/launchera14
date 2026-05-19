.class public final enum Lw6/h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw6/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lw6/h;

.field public static final enum b:Lw6/h;

.field public static final enum c:Lw6/h;

.field public static final synthetic d:[Lw6/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lw6/h;

    const-string v1, "STABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw6/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw6/h;->a:Lw6/h;

    new-instance v1, Lw6/h;

    const-string v3, "FIR_UNSTABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw6/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw6/h;->b:Lw6/h;

    new-instance v3, Lw6/h;

    const-string v5, "IR_UNSTABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw6/h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw6/h;->c:Lw6/h;

    const/4 v5, 0x3

    new-array v5, v5, [Lw6/h;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lw6/h;->d:[Lw6/h;

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

.method public static valueOf(Ljava/lang/String;)Lw6/h;
    .registers 2

    const-class v0, Lw6/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw6/h;

    return-object p0
.end method

.method public static values()[Lw6/h;
    .registers 1

    sget-object v0, Lw6/h;->d:[Lw6/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw6/h;

    return-object v0
.end method
