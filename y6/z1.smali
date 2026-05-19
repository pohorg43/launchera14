.class public final enum Ly6/z1;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly6/z1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ly6/z1;

.field public static final enum b:Ly6/z1;

.field public static final synthetic c:[Ly6/z1;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Ly6/z1;

    const-string v1, "SUPERTYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly6/z1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly6/z1;->a:Ly6/z1;

    new-instance v1, Ly6/z1;

    const-string v3, "COMMON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly6/z1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly6/z1;->b:Ly6/z1;

    const/4 v3, 0x2

    new-array v3, v3, [Ly6/z1;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ly6/z1;->c:[Ly6/z1;

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

.method public static valueOf(Ljava/lang/String;)Ly6/z1;
    .registers 2

    const-class v0, Ly6/z1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly6/z1;

    return-object p0
.end method

.method public static values()[Ly6/z1;
    .registers 1

    sget-object v0, Ly6/z1;->c:[Ly6/z1;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly6/z1;

    return-object v0
.end method
