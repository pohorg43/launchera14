.class public final enum Lr5/c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr5/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lr5/c;

.field public static final enum c:Lr5/c;

.field public static final enum d:Lr5/c;

.field public static final enum e:Lr5/c;

.field public static final enum f:Lr5/c;

.field public static final enum g:Lr5/c;

.field public static final synthetic h:[Lr5/c;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lr5/c;

    const-string v1, "METHOD_RETURN_TYPE"

    const/4 v2, 0x0

    const-string v3, "METHOD"

    invoke-direct {v0, v1, v2, v3}, Lr5/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr5/c;->b:Lr5/c;

    new-instance v1, Lr5/c;

    const-string v3, "VALUE_PARAMETER"

    const/4 v4, 0x1

    const-string v5, "PARAMETER"

    invoke-direct {v1, v3, v4, v5}, Lr5/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr5/c;->c:Lr5/c;

    new-instance v3, Lr5/c;

    const-string v5, "FIELD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lr5/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lr5/c;->d:Lr5/c;

    new-instance v5, Lr5/c;

    const-string v7, "TYPE_USE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lr5/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lr5/c;->e:Lr5/c;

    new-instance v9, Lr5/c;

    const-string v10, "TYPE_PARAMETER_BOUNDS"

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11, v7}, Lr5/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lr5/c;->f:Lr5/c;

    new-instance v7, Lr5/c;

    const-string v10, "TYPE_PARAMETER"

    const/4 v12, 0x5

    invoke-direct {v7, v10, v12, v10}, Lr5/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lr5/c;->g:Lr5/c;

    const/4 v10, 0x6

    new-array v10, v10, [Lr5/c;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    aput-object v9, v10, v11

    aput-object v7, v10, v12

    sput-object v10, Lr5/c;->h:[Lr5/c;

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

    iput-object p3, p0, Lr5/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/c;
    .registers 2

    const-class v0, Lr5/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/c;

    return-object p0
.end method

.method public static values()[Lr5/c;
    .registers 1

    sget-object v0, Lr5/c;->h:[Lr5/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/c;

    return-object v0
.end method
