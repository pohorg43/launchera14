.class public final enum Ls4/d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls4/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls4/d;

.field public static final enum b:Ls4/d;

.field public static final synthetic c:[Ls4/d;

.field public static final synthetic d:Lo4/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Ls4/d;

    const-string v1, "TOP_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls4/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls4/d;->a:Ls4/d;

    new-instance v1, Ls4/d;

    const-string v3, "BOTTOM_UP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls4/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls4/d;->b:Ls4/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ls4/d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ls4/d;->c:[Ls4/d;

    invoke-static {v3}, Lo4/b;->a([Ljava/lang/Enum;)Lo4/a;

    move-result-object v0

    sput-object v0, Ls4/d;->d:Lo4/a;

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

.method public static valueOf(Ljava/lang/String;)Ls4/d;
    .registers 2

    const-class v0, Ls4/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls4/d;

    return-object p0
.end method

.method public static values()[Ls4/d;
    .registers 1

    sget-object v0, Ls4/d;->c:[Ls4/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls4/d;

    return-object v0
.end method
