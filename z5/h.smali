.class public final enum Lz5/h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz5/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz5/h;

.field public static final enum b:Lz5/h;

.field public static final synthetic c:[Lz5/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lz5/h;

    const-string v1, "READ_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz5/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz5/h;->a:Lz5/h;

    new-instance v1, Lz5/h;

    const-string v3, "MUTABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz5/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz5/h;->b:Lz5/h;

    const/4 v3, 0x2

    new-array v3, v3, [Lz5/h;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lz5/h;->c:[Lz5/h;

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

.method public static valueOf(Ljava/lang/String;)Lz5/h;
    .registers 2

    const-class v0, Lz5/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz5/h;

    return-object p0
.end method

.method public static values()[Lz5/h;
    .registers 1

    sget-object v0, Lz5/h;->c:[Lz5/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz5/h;

    return-object v0
.end method
