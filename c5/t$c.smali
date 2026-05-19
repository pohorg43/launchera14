.class public final enum Lc5/t$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc5/t$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc5/t$c;

.field public static final enum b:Lc5/t$c;

.field public static final synthetic c:[Lc5/t$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lc5/t$c;

    const-string v1, "DECLARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc5/t$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc5/t$c;->a:Lc5/t$c;

    new-instance v1, Lc5/t$c;

    const-string v3, "INHERITED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc5/t$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc5/t$c;->b:Lc5/t$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lc5/t$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lc5/t$c;->c:[Lc5/t$c;

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

.method public static valueOf(Ljava/lang/String;)Lc5/t$c;
    .registers 2

    const-class v0, Lc5/t$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc5/t$c;

    return-object p0
.end method

.method public static values()[Lc5/t$c;
    .registers 1

    sget-object v0, Lc5/t$c;->c:[Lc5/t$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc5/t$c;

    return-object v0
.end method
