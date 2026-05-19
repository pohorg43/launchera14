.class public final enum Lr5/k0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr5/k0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lr5/k0;

.field public static final enum c:Lr5/k0;

.field public static final enum d:Lr5/k0;

.field public static final synthetic e:[Lr5/k0;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lr5/k0;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    const-string v3, "ignore"

    invoke-direct {v0, v1, v2, v3}, Lr5/k0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr5/k0;->b:Lr5/k0;

    new-instance v1, Lr5/k0;

    const-string v3, "WARN"

    const/4 v4, 0x1

    const-string v5, "warn"

    invoke-direct {v1, v3, v4, v5}, Lr5/k0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr5/k0;->c:Lr5/k0;

    new-instance v3, Lr5/k0;

    const-string v5, "STRICT"

    const/4 v6, 0x2

    const-string v7, "strict"

    invoke-direct {v3, v5, v6, v7}, Lr5/k0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lr5/k0;->d:Lr5/k0;

    const/4 v5, 0x3

    new-array v5, v5, [Lr5/k0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lr5/k0;->e:[Lr5/k0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lr5/k0;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/k0;
    .registers 2

    const-class v0, Lr5/k0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/k0;

    return-object p0
.end method

.method public static values()[Lr5/k0;
    .registers 1

    sget-object v0, Lr5/k0;->e:[Lr5/k0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/k0;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    sget-object v0, Lr5/k0;->b:Lr5/k0;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final b()Z
    .registers 2

    sget-object v0, Lr5/k0;->c:Lr5/k0;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
