.class public final enum Lc6/f$c;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Li6/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc6/f$c;",
        ">;",
        "Li6/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lc6/f$c;

.field public static final enum c:Lc6/f$c;

.field public static final enum d:Lc6/f$c;

.field public static final synthetic e:[Lc6/f$c;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lc6/f$c;

    const-string v1, "RETURNS_CONSTANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc6/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc6/f$c;->b:Lc6/f$c;

    new-instance v1, Lc6/f$c;

    const-string v3, "CALLS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lc6/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc6/f$c;->c:Lc6/f$c;

    new-instance v3, Lc6/f$c;

    const-string v5, "RETURNS_NOT_NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lc6/f$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc6/f$c;->d:Lc6/f$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lc6/f$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc6/f$c;->e:[Lc6/f$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lc6/f$c;->a:I

    return-void
.end method

.method public static a(I)Lc6/f$c;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    sget-object p0, Lc6/f$c;->d:Lc6/f$c;

    return-object p0

    :cond_d
    sget-object p0, Lc6/f$c;->c:Lc6/f$c;

    return-object p0

    :cond_10
    sget-object p0, Lc6/f$c;->b:Lc6/f$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lc6/f$c;
    .registers 2

    const-class v0, Lc6/f$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc6/f$c;

    return-object p0
.end method

.method public static values()[Lc6/f$c;
    .registers 1

    sget-object v0, Lc6/f$c;->e:[Lc6/f$c;

    invoke-virtual {v0}, [Lc6/f$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc6/f$c;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 1

    iget p0, p0, Lc6/f$c;->a:I

    return p0
.end method
