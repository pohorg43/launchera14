.class public final enum Lm/g$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lm/g$a;

.field public static final enum b:Lm/g$a;

.field public static final enum c:Lm/g$a;

.field public static final enum d:Lm/g$a;

.field public static final enum e:Lm/g$a;

.field public static final synthetic f:[Lm/g$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lm/g$a;

    const-string v1, "MERGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm/g$a;->a:Lm/g$a;

    new-instance v1, Lm/g$a;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lm/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm/g$a;->b:Lm/g$a;

    new-instance v3, Lm/g$a;

    const-string v5, "SUBTRACT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lm/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm/g$a;->c:Lm/g$a;

    new-instance v5, Lm/g$a;

    const-string v7, "INTERSECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lm/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lm/g$a;->d:Lm/g$a;

    new-instance v7, Lm/g$a;

    const-string v9, "EXCLUDE_INTERSECTIONS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lm/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lm/g$a;->e:Lm/g$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lm/g$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lm/g$a;->f:[Lm/g$a;

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

.method public static valueOf(Ljava/lang/String;)Lm/g$a;
    .registers 2

    const-class v0, Lm/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm/g$a;

    return-object p0
.end method

.method public static values()[Lm/g$a;
    .registers 1

    sget-object v0, Lm/g$a;->f:[Lm/g$a;

    invoke-virtual {v0}, [Lm/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/g$a;

    return-object v0
.end method
