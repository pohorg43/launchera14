.class public final enum Lx6/e$n;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx6/e$n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lx6/e$n;

.field public static final enum b:Lx6/e$n;

.field public static final enum c:Lx6/e$n;

.field public static final synthetic d:[Lx6/e$n;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lx6/e$n;

    const-string v1, "NOT_COMPUTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx6/e$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx6/e$n;->a:Lx6/e$n;

    new-instance v1, Lx6/e$n;

    const-string v3, "COMPUTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lx6/e$n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx6/e$n;->b:Lx6/e$n;

    new-instance v3, Lx6/e$n;

    const-string v5, "RECURSION_WAS_DETECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lx6/e$n;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lx6/e$n;->c:Lx6/e$n;

    const/4 v5, 0x3

    new-array v5, v5, [Lx6/e$n;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lx6/e$n;->d:[Lx6/e$n;

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

.method public static valueOf(Ljava/lang/String;)Lx6/e$n;
    .registers 2

    const-class v0, Lx6/e$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx6/e$n;

    return-object p0
.end method

.method public static values()[Lx6/e$n;
    .registers 1

    sget-object v0, Lx6/e$n;->d:[Lx6/e$n;

    invoke-virtual {v0}, [Lx6/e$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx6/e$n;

    return-object v0
.end method
