.class public final enum Lr5/m0$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr5/m0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr5/m0$b;

.field public static final enum b:Lr5/m0$b;

.field public static final enum c:Lr5/m0$b;

.field public static final synthetic d:[Lr5/m0$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lr5/m0$b;

    const-string v1, "ONE_COLLECTION_PARAMETER"

    const/4 v2, 0x0

    const-string v3, "Ljava/util/Collection<+Ljava/lang/Object;>;"

    invoke-direct {v0, v1, v2, v3, v2}, Lr5/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lr5/m0$b;->a:Lr5/m0$b;

    new-instance v1, Lr5/m0$b;

    const-string v3, "OBJECT_PARAMETER_NON_GENERIC"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v4}, Lr5/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lr5/m0$b;->b:Lr5/m0$b;

    new-instance v3, Lr5/m0$b;

    const-string v5, "OBJECT_PARAMETER_GENERIC"

    const/4 v6, 0x2

    const-string v7, "Ljava/lang/Object;"

    invoke-direct {v3, v5, v6, v7, v4}, Lr5/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lr5/m0$b;->c:Lr5/m0$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lr5/m0$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lr5/m0$b;->d:[Lr5/m0$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/m0$b;
    .registers 2

    const-class v0, Lr5/m0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/m0$b;

    return-object p0
.end method

.method public static values()[Lr5/m0$b;
    .registers 1

    sget-object v0, Lr5/m0$b;->d:[Lr5/m0$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/m0$b;

    return-object v0
.end method
