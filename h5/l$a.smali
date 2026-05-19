.class public final enum Lh5/l$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh5/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh5/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lh5/l$a;

.field public static final enum b:Lh5/l$a;

.field public static final enum c:Lh5/l$a;

.field public static final enum d:Lh5/l$a;

.field public static final synthetic e:[Lh5/l$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lh5/l$a;

    const-string v1, "HIDDEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh5/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh5/l$a;->a:Lh5/l$a;

    new-instance v1, Lh5/l$a;

    const-string v3, "VISIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lh5/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh5/l$a;->b:Lh5/l$a;

    new-instance v3, Lh5/l$a;

    const-string v5, "NOT_CONSIDERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lh5/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lh5/l$a;->c:Lh5/l$a;

    new-instance v5, Lh5/l$a;

    const-string v7, "DROP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lh5/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lh5/l$a;->d:Lh5/l$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lh5/l$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lh5/l$a;->e:[Lh5/l$a;

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

.method public static valueOf(Ljava/lang/String;)Lh5/l$a;
    .registers 2

    const-class v0, Lh5/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh5/l$a;

    return-object p0
.end method

.method public static values()[Lh5/l$a;
    .registers 1

    sget-object v0, Lh5/l$a;->e:[Lh5/l$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh5/l$a;

    return-object v0
.end method
