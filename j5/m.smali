.class public final enum Lj5/m;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj5/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lj5/m;

.field public static final enum b:Lj5/m;

.field public static final enum c:Lj5/m;

.field public static final synthetic d:[Lj5/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lj5/m;

    const-string v1, "RUNTIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj5/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj5/m;->a:Lj5/m;

    new-instance v0, Lj5/m;

    const-string v1, "BINARY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj5/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj5/m;->b:Lj5/m;

    new-instance v0, Lj5/m;

    const-string v1, "SOURCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj5/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj5/m;->c:Lj5/m;

    invoke-static {}, Lj5/m;->a()[Lj5/m;

    move-result-object v0

    sput-object v0, Lj5/m;->d:[Lj5/m;

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

.method public static final synthetic a()[Lj5/m;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lj5/m;

    sget-object v1, Lj5/m;->a:Lj5/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj5/m;->b:Lj5/m;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj5/m;->c:Lj5/m;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj5/m;
    .registers 2

    const-class v0, Lj5/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj5/m;

    return-object p0
.end method

.method public static values()[Lj5/m;
    .registers 1

    sget-object v0, Lj5/m;->d:[Lj5/m;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj5/m;

    return-object v0
.end method
