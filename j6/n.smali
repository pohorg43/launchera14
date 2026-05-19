.class public final enum Lj6/n;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj6/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lj6/n;

.field public static final enum b:Lj6/n;

.field public static final enum c:Lj6/n;

.field public static final synthetic d:[Lj6/n;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lj6/n;

    const-string v1, "RENDER_OVERRIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj6/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj6/n;->a:Lj6/n;

    new-instance v1, Lj6/n;

    const-string v3, "RENDER_OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj6/n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj6/n;->b:Lj6/n;

    new-instance v3, Lj6/n;

    const-string v5, "RENDER_OPEN_OVERRIDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj6/n;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj6/n;->c:Lj6/n;

    const/4 v5, 0x3

    new-array v5, v5, [Lj6/n;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lj6/n;->d:[Lj6/n;

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

.method public static valueOf(Ljava/lang/String;)Lj6/n;
    .registers 2

    const-class v0, Lj6/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj6/n;

    return-object p0
.end method

.method public static values()[Lj6/n;
    .registers 1

    sget-object v0, Lj6/n;->d:[Lj6/n;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj6/n;

    return-object v0
.end method
